// Definitionen: Editierung eines neuen Fl�chenobjektes
// File: NewArea.cpp
// W. M�rtl


#include "GeoEditP.h"
//#include <stdio.h>		// sprintf() f�r OutputDebugString

#include "DragMultiLine.h"	// SetEndPoint(), ...
#include "NewArea.h"


#if defined(_DEBUG)
#undef THIS_FILE
static char BASED_CODE THIS_FILE[] = __FILE__;
#endif



///////////////////////////////////////////////////////////////////////////////////////////////
// globale Parameter
extern ResourceFile* pRF;



///////////////////////////////////////////////////////////////////////////////////////////////
// Konstruktor / Destruktor
CNewArea::CNewArea (void)
{
    m_dwCookieN = 0L;
    m_dwCookieSN = 0L;
    m_pVWnd = g_pTE->MVWind();	// TRiAS-ViewFenster
    m_NewCP = CURSPOS_UNKNOWN;
    m_OldCP = CURSPOS_UNKNOWN;
    m_bIsPaint = false;			// Hintergrund wird augenblicklich nicht gezeichnet
    m_LeftButtonSem = false;	// linke Maustaste bzw.
    m_RightButtonSem = false;	// rechte Maustaste noch nicht gedr�ckt
    m_lParamOld = 0;			// letzte Mausposition
    m_bIsland = false;			// der n�chste editierte Punkt ist noch nicht Beginn einer
    							// neuen Insel
    m_iGrabCnt = 0;				// Anzahl der hintereinander gegrabten Punkte
    m_pGrabPktX = NULL;			// die in m_iGrabCnt gez�hlten GrabPunkte
    m_pGrabPktY = NULL;
	m_bMessBox = false;			// keine MessageBox angezeigt
	m_bWithDel = true;			// beim Zeichnen einer nachgezogenen Linie die alte Lage l�schen

    m_pCT = new CoordTransX();	// KoordinatenTransformation
    if (! m_pCT)
    {
    	DEX_Error (RC_NewArea, EC_NOMEMORY);
    	return;
    }
}


// --------------------------------------------------------------------------------------------
CNewArea::~CNewArea (void)
{
	DELETE_OBJ (m_pCT);
	DELETE_VEC (m_pGrabPktX);
	DELETE_VEC (m_pGrabPktY);
    m_wDragObj.Assign (NULL);
}



///////////////////////////////////////////////////////////////////////////////////////////////
// Verbindung zur GeoEdit-Erweiterung �ber deren Interface IEditExtensionSite herstellen
STDMETHODIMP CNewArea::SetEditExtensionSite (IEditExtensionSite* pIEdExSite)
{
    try
    {
    	if (pIEdExSite != NULL)
    	{
    	WUnknown wISite;

    		// Verbindung zu TRiAS �ber Interface ITriasExtension herstellen
    		THROW_FAILED_HRESULT (pIEdExSite->GetXtensionSite (wISite.ppi()));
    		THROW_FAILED_HRESULT (pIEdExSite->CreateInterfaceTO (m_wTopObjs.ppi()));

    		if (wISite.IsValid()) 		// in TRiAS reinh�ngen
    		{
    			if (m_dwCookieN != 0L || m_dwCookieSN != 0L)	// anmelden
    				_com_issue_error (E_UNEXPECTED);		// darf noch nicht angemeldet sein

    			m_Site = wISite;			// throws_com_error
    			THROW_FAILED_HRESULT (AtlAdvise (m_Site, (ITRiASNotificationSink*)this,
    								  IID_ITRiASNotificationSink, &m_dwCookieN));

    			THROW_FAILED_HRESULT (AtlAdvise (m_Site, (ITRiASSysNotificationSink*)this,
    								  IID_ITRiASSysNotificationSink, &m_dwCookieSN));
    		}

    		m_wEdExSite = pIEdExSite;
    		m_wEdExSite->SetCursor (CURSFORM_CROSS, TRUE);
    		THROW_FAILED_HRESULT (m_wTopObjs->GetEnumTopicalObjectsGeometry (TRUE, m_wAllTObjs.ppi()));
    		m_wTopObjs->SetMarkVis (true);	// St�tzpunkte der ausgew�hlten Objekte sollen
    										//  markiert werden
    	WEnumObjektGeometrie wGrabObjs (CLSID_EnumObjektGeometrie);

    		m_wGrabObjs = wGrabObjs;
    	}
    	else
    	{
			if (m_wObj.IsValid())
			{
			int iActTool = DEX_GetActiveTool();

				// wenn NewArea "richtig" verlassen wird (also nicht blo� zum Parken), dann das
				// aktuell editierte (tempor�re) Objekt wieder aus den ausgew�hlten Objekten
				// herausnehmen
				if (ID_TOOL_DESIGN != iActTool)
				{
				Rectangle Rec = GetDeleteRectangle (m_wObj, m_wTopObjs, m_wRestrictCursor, m_LastPt);

					DEX_RePaintRectWait (Rec);	// OHNE nachfolgendes Update() !!!
					m_wTopObjs->DeleteTopicalObjectGeometry (m_wObj);
   					m_wObj.Assign (NULL);
				}

				// NewArea wird blo� zum Parken verlassen; dann hier die letzte Strecke, die zum
				// DesignTool f�hrt, zu l�schen
				else if (m_wDragObj.IsValid())
				{
				BOOL bTopIsPaint;	// wird in CTopicalObjects der Hintergrund gezeichnet?

					m_wTopObjs->IsPaint (&bTopIsPaint);
					_ASSERTE (m_bIsPaint == false && bTopIsPaint == false);
				    m_wDragObj->DeleteLastSituation (m_bIsPaint || bTopIsPaint);
					m_bWithDel = false;
				}
			}

    		// St�tzpunktmarkierungen der ausgew�hlten Objekte sollen gel�scht werden
    		m_wTopObjs->SetMarkVis (false);

    		// Cursor wieder auf die Standard-Form "PFEIL" zur�cksetzen
    		m_wEdExSite->SetCursor (CURSFORM_PFEIL, TRUE);

    		if (m_dwCookieN != 0L || m_dwCookieSN != 0L)	// abmelden
    			THROW_FAILED_HRESULT (DisconnectFromServer());	// gibt uns u.u. frei

		   	if (m_wRestrictCursor.IsValid())
			{
				m_wRestrictCursor->UnDraw();
   				m_wRestrictCursor.Assign (NULL);
			}
			m_wRestrLine1.Assign (NULL);
			m_wRestrLine2.Assign (NULL);
    		m_wTopObjs.Assign (NULL);
    		m_wEdExSite.Assign (NULL);

			m_bMessBox = false;			// keine MessageBox angezeigt
    	}
    }
    catch (_com_error& e)
    {
    	return _COM_ERROR (e);
    }

    return S_OK;

} // SetEditExtensionSite


// --------------------------------------------------------------------------------------------
// TRiASNotificationSink und TRiASSysNotificationSink bei TRiAS wieder abmelden
HRESULT CNewArea::DisconnectFromServer (void)
{
// k�nstliches AddRef, da uns nachfolgendes AtlUnadvise freigeben kann
WUnknown Unk ((IEditOperation*)this);

    AtlUnadvise (m_Site, IID_ITRiASNotificationSink, m_dwCookieN); 
    AtlUnadvise (m_Site, IID_ITRiASSysNotificationSink, m_dwCookieSN); 
    
    m_Site.Assign (NULL);		// freigeben von TRiAS
    m_dwCookieN = 0L;
    m_dwCookieSN = 0L;
    return S_OK;

} // DisconnectFromServer


// --------------------------------------------------------------------------------------------
// GeoEdit informiert die IEditOperation �ber den aktuellen Zustand der Konstruktionslinien
STDMETHODIMP CNewArea::InformRestrictLinesState (IRestrictLine* pRestrLine1,
												 IRestrictLine* pRestrLine2)
{
	m_wRestrLine1.Assign (NULL);
	m_wRestrLine2.Assign (NULL);
	m_wRestrLine1 = pRestrLine1;
	m_wRestrLine2 = pRestrLine2;

   	m_wRestrictCursor.Assign (NULL);

	if (m_wRestrLine1.IsValid() || m_wRestrLine2.IsValid())
	{
		if (m_wRestrLine1.IsValid()) m_wRestrLine1->Draw();
		if (m_wRestrLine2.IsValid()) m_wRestrLine2->Draw();

		try
		{
		// Verbindung zum CRestrictCursor-Objekt �ber dessen Interface IRestrictCursor herstellen
		WRestrictCursor wRestrictCursor (CLSID_RestrictCursor);	// throws_com_error

    		m_wRestrictCursor = wRestrictCursor;
    		THROW_FAILED_HRESULT (m_wRestrictCursor->ConstructRestrictCursor());
		}
		catch (_com_error& e)
		{
    		return _COM_ERROR (e);
		}
	}

	return S_OK;

} // InformRestrictLinesState


// --------------------------------------------------------------------------------------------
// L�schen einer Konstruktionshilfslinie in der this-EditierOperation
STDMETHODIMP CNewArea::DeleteRestrictedCursor (void)
{
   	if (m_wRestrictCursor.IsValid()) m_wRestrictCursor->UnDraw();
	return S_OK;

} // DeleteRestrictedCursor


// --------------------------------------------------------------------------------------------
// Interface ITRiASNotificationSink: TRiAS-Notification's abfangen
STDMETHODIMP CNewArea::ServerEvent (SERVEREVT se)
{
    ATLTRACE("CNewArea::ServerEvent not implemented");
	return S_OK;
}


// --------------------------------------------------------------------------------------------
STDMETHODIMP CNewArea::ProjectEvent (long hPr, PROJECTEVT pe, VARIANT vProj)
{
    ATLTRACE("CNewArea::ProjectEvent not implemented");
	return S_OK;
}


// --------------------------------------------------------------------------------------------
// TRiAS-Notification's abfangen, die f�r die aktuelle Sicht verschickt werden
STDMETHODIMP CNewArea::GeoViewEvent (long hPr, GEOVIEWEVT ve, VARIANT vData)
{
    switch (ve)
    {
    	case GEOVIEWEVT_PaintingView:	// kommt vor dem Zeichnen des Hintergrundes
    									// (entspr. DEX_ERASEBKGND)
    		m_bIsPaint = true;		// Hintergrund wird gezeichnet
    		break;

    	case GEOVIEWEVT_ViewPainted:	// kommt nach dem Zeichnen des Hintergrundes
    									// (entspr. DEX_PAINTTOPLAYER)
    		m_bIsPaint = false;		// Hintergrund wurde gezeichnet
			if (m_wRestrLine1.IsValid()) m_wRestrLine1->Draw();
			if (m_wRestrLine2.IsValid()) m_wRestrLine2->Draw();
			if (m_wRestrictCursor.IsValid()) m_wRestrictCursor->SetFirstFlag (TRUE);

			if (m_wObj.IsValid())
			{
				DrawTemporaryObject (m_wObj, m_pVWnd);
				if (m_wDragObj.IsValid())
				{
				BOOL bTopIsPaint;	// wird in CTopicalObjects der Hintergrund gezeichnet?

					m_wTopObjs->IsPaint (&bTopIsPaint);

				Point pStartPt[2];

					for (int i = 0; i < m_iSPCnt; i++)
						pStartPt[i] = BSKoordinaten (m_pStartPkt[i].X(), m_pStartPkt[i].Y());
					m_FirstPt = pStartPt[0];
					m_wDragObj->ModStartPoints ((POINT*)pStartPt, m_iSPCnt);
			    	m_wDragObj->SetEndPoint ((POINT&)m_LastPt, bTopIsPaint, FALSE);
				}
			}

    		break;

		case GEOVIEWEVT_ScrollingHorz:
			if (m_wDragObj.IsValid() &&	// es befindet sich ein DragLineObject im Aufbau
				SUCCEEDED (VariantChangeType (&vData, &vData, NULL, VT_I4)))
			{
			long lOffset = V_I4 (&vData);

				m_wDragObj->EditWithScrolling (lOffset, true);
				m_FirstPt.X() += lOffset;
				m_LastPt.X() += lOffset;
			}
    		break;

		case GEOVIEWEVT_ScrollingVert:
			if (m_wDragObj.IsValid() &&
				SUCCEEDED (VariantChangeType (&vData, &vData, NULL, VT_I4)))
			{
			long lOffset = V_I4 (&vData);

				m_wDragObj->EditWithScrolling (lOffset, false);
				m_FirstPt.Y() -= lOffset;
				m_LastPt.Y() -= lOffset;
			}
			break;
    }

    return S_OK;	// immer weiterleiten

} // GeoViewEvent


// --------------------------------------------------------------------------------------------
STDMETHODIMP CNewArea::GeoClassEvent (long hPr, GEOCLASSEVT ce, long ulIdent)
{
    ATLTRACE("CNewArea::GeoClassEvent not implemented");
	return S_OK;
}


// --------------------------------------------------------------------------------------------
STDMETHODIMP CNewArea::GeoObjectEvent (long hPr, GEOOBJECTEVT oe, long lONr)
{
    switch (oe)
	{
		case GEOOBJECTEVT_ObjectSelected:
	    case GEOOBJECTEVT_ObjectUnSelected:
	    case GEOOBJECTEVT_ObjectDeleted:
		{
			try
			{
    			THROW_FAILED_HRESULT (m_wTopObjs->GetEnumTopicalObjectsGeometry (TRUE, m_wAllTObjs.ppi()));
			}
			catch (_com_error&)
			{
			    ATLTRACE("throw-failure in CNewArea::GeoObjectEvent");
			}
			break;
		}
	}

    return S_OK;	// immer weiterleiten

}


// --------------------------------------------------------------------------------------------
STDMETHODIMP CNewArea::GeoFeatureEvent (long hPr, GEOFEATUREEVT fe, long ulMCode)
{
    ATLTRACE("CNewArea::GeoFeatureEvent not implemented");
	return S_OK;
}


// --------------------------------------------------------------------------------------------
STDMETHODIMP CNewArea::GeoRelationEvent (long hPr, GEORELATIONEVT re, long ulRCode)
{
    ATLTRACE("CNewArea::GeoRelationEvent not implemented");
	return S_OK;
}


// --------------------------------------------------------------------------------------------
STDMETHODIMP CNewArea::ObjectWindowEvent (OBJWNDEVT oe, long hORWnd)
{
    ATLTRACE("CNewArea::ObjectWindowEvent not implemented");
	return S_OK;
}


// --------------------------------------------------------------------------------------------
// Interface ITRiASSysNotificationSink: WindowsNotification's abfangen
STDMETHODIMP CNewArea::WindowsMessage (long hWnd, long uiMsg, long wParam, long lParam)
{
    switch (uiMsg)
    {
    	case WM_KEYDOWN:
    		KeyDown ((HWND)hWnd, wParam);
			break;
    	
    	case WM_KEYUP:
    		KeyUp (wParam);
			break;

    	case WM_MOUSEMOVE:
    		MouseMove (lParam);
    		break;

    	case WM_LBUTTONDOWN:
    		LeftMouseDown (lParam);
    		break;

    	case WM_LBUTTONUP:
    		LeftMouseUp();
    		break;

    	case WM_RBUTTONDOWN:
    		RightMouseDown (lParam);
    		break;

    	case WM_RBUTTONUP:
    		RightMouseUp();
    		break;

		case WM_LBUTTONDBLCLK:
    		LeftDoubleClick();
    }

    return S_OK;	// immer weiterleiten

} // WindowsMessage


// --------------------------------------------------------------------------------------------
// eine Taste der Tastatur wurde gedr�ckt
HRESULT CNewArea::KeyDown (HWND hWnd, WPARAM wParam)
{
    if (VK_SHIFT == wParam)		// SHIFT-Taste gedr�ckt, um Grabben auszuschalten
    	return m_wEdExSite->SetCursor (CURSFORM_CROSS, TRUE);
    else
    	ScrollTest (hWnd, wParam);

    return S_OK;

} // KeyDown


// --------------------------------------------------------------------------------------------
// eine Taste der Tastatur wurde losgelassen
HRESULT CNewArea::KeyUp (WPARAM wParam)
{
    if (VK_SHIFT == wParam)		// SHIFT-Taste losgelassen, um Grabben wieder zu erm�glichen
    {
    CursForm CF;	// aktuelle CursorForm

    	m_wEdExSite->GetCursor (&CF);

    	if (CURSFORM_CROSS == CF &&	// Cursor hat noch CROSS-Form,
    		CURSPOS_VERTEX == m_NewCP)	// Cursor in einer St�tzpunktmarkierung
    		return m_wEdExSite->SetCursor (CURSFORM_FANGEN, TRUE);
    }

    return S_OK;
    
} // KeyUp


// --------------------------------------------------------------------------------------------
// Maus wurde bewegt
HRESULT CNewArea::MouseMove (LPARAM lParam)
{
	if (NULL == g_pTE->MVWind())	// Projekt wird geschlossen oder kein Projekt ge�ffnet
    	return S_FALSE;				// NICHT "if (NULL == m_pVWnd)" !!!!

    if (lParam == m_lParamOld)		// keine Mausbewegung
    	return S_OK;

    m_lParamOld = lParam;

    // wenn linke oder rechte Maustaste gedr�ckt bzw. augenblicklich Hintergrund gezeichnet
    // wird, dann keine weitere Bearbeitung
    if (m_LeftButtonSem || m_RightButtonSem || m_bIsPaint)
    	return S_FALSE;

   	// Hilfslinie, die auf dem Bildschirm die editierte Fl�che immer gleich zuzieht, einmalig
	// l�schen
	if (m_wDragObj.IsValid() &&m_bCloseLineDelete)	// { diese Zeilen
    {												// { in das DragObject
    	DrawLine (m_FirstPt, m_LastPt, m_pVWnd);	// { hineinnehmen
    	m_bCloseLineDelete = false;					// {
    }												// {

BOOL bTopIsPaint;	// wird in CTopicalObjects der Hintergrund gezeichnet?

    m_wTopObjs->IsPaint (&bTopIsPaint);

HRESULT hrRet = S_OK;

	if (!m_wRestrLine1.IsValid() && !m_wRestrLine2.IsValid())	// keine Konstruktionshilfslinien
		hrRet = MouseMoveWithoutRestrictLines (lParam);
	else														// mit Konstruktionshilfslinien
		hrRet = MouseMoveWithRestrictLines (lParam, bTopIsPaint);

    if (m_wDragObj.IsValid())
	{
    	m_wDragObj->SetEndPoint ((POINT&)m_LastPt, m_bIsPaint || bTopIsPaint, m_bWithDel);
		if (! m_bWithDel) m_bWithDel = true;
    	AktuelleWerteAnzeigen (m_LastPt);	// aktuelle Werte in Statuszeile anzeigen
    }
	
	return hrRet;

} // MouseMove


// --------------------------------------------------------------------------------------------
// linke Maustaste wurde gedr�ckt
void CNewArea::LeftMouseDown (LPARAM lParam)
{
    m_LeftButtonSem = true;			// linke Maustaste wurde gedr�ckt
	m_lParam = lParam;
}


// --------------------------------------------------------------------------------------------
// linke Maustaste wurde losgelassen
HRESULT CNewArea::LeftMouseUp (void)
{
    if (!m_LeftButtonSem)	// linke Maustaste wurde nicht gedr�ckt
    	return S_FALSE;

    m_LeftButtonSem = false;		// linke Maustaste wurde losgelassen

  	if (S_FALSE == EPunktAtCursor (m_lParam, m_wRestrLine1, m_wRestrLine2, m_LastPt, m_LastPkt))
    	return S_FALSE;

HRESULT hr;

	if (FAILED (hr = NeueFlaeche()))
    {
    	m_wDragObj->DragTerminate();
    	m_wDragObj.Assign (NULL);
    	return hr;
    }

	if (m_wRestrLine1.IsValid() || m_wRestrLine2.IsValid())
		DEX_ChangeActiveTool (ID_TOOL_DESIGNSTOP);	// DesignMode beenden

    // Verbindung zum CDragMultiLine-Objekt �ber dessen Interface IDragObject herstellen
    try
    {
    WDragObject wDragObj (CLSID_DragMultiLine);	// throws_com_error (ab zum Konstruktor)

    	m_wDragObj.Assign (NULL);
    	m_wDragObj = wDragObj;
		m_iSPCnt = 0;
    	if (S_OK == m_wDragObj->AddStartPoint ((POINT&)m_FirstPt))
		{
			m_pStartPkt[m_iSPCnt] = DBKoordinaten (m_FirstPt);
			m_iSPCnt++;
		}
    	if (S_OK == m_wDragObj->AddStartPoint ((POINT&)m_LastPt))
		{
			m_pStartPkt[m_iSPCnt] = DBKoordinaten (m_LastPt);
			m_iSPCnt++;
		}
    	m_wDragObj->ConstructDragLines();
    }
    catch (_com_error& e)
    {
    	return _COM_ERROR (e);
    }

    // wenn die aktuell editierte Kontur zusammen mit dem soeben hinzugekommenen Punkt aus
    // wenigstens 3 St�tzpunkten besteht, dann die Hilfslinie, die diesen letzten Punkt mit dem
    // ersten Punkt dieser Kontur verbindet, beim n�chsten MouseMove() l�schen
    if (m_lKSize >= 3 && !m_wRestrLine1.IsValid() && !m_wRestrLine2.IsValid())
    	m_bCloseLineDelete = true;
    else
    	m_bCloseLineDelete = false;

    return S_OK;

} // LeftMouseUp


// --------------------------------------------------------------------------------------------
// rechte Maustaste wurde gedr�ckt
void CNewArea::RightMouseDown (LPARAM lParam)
{
    m_RightButtonSem = true;		// rechte Maustaste wurde gedr�ckt
	m_lParam = lParam;
}


// --------------------------------------------------------------------------------------------
// rechte Maustaste wurde losgelassen
HRESULT CNewArea::RightMouseUp (void)
{
    if (!m_RightButtonSem)	// rechte Maustaste wurde nicht gedr�ckt
    	return S_FALSE;

    m_RightButtonSem = false;		// rechte Maustaste wurde losgelassen

    if (m_wDragObj.IsValid())
	{
		m_wDragObj->DragTerminate();
		m_wDragObj.Assign (NULL);
	}

    m_pVWnd->MouseTrap (FALSE);
  
	if (S_FALSE == EPunktAtCursor (m_lParam, m_wRestrLine1, m_wRestrLine2, m_LastPt, m_LastPkt))
    	return S_FALSE;

    RETURN_FAILED_HRESULT (NeueFlaeche());

	if (m_wRestrLine1.IsValid() || m_wRestrLine2.IsValid())		// 08.06.99
		DEX_ChangeActiveTool (ID_TOOL_DESIGNSTOP);	// DesignMode beenden

    // nach dem Hintergrundzeichnen nach einer m�glichen Fehlermeldung wird wieder der
    // vorhergehende Cursor eingeschaltet; da das auch der GrabCursor sein kann, wird hier
    // einfach vorgebeugt
    m_wEdExSite->SetCursor (CURSFORM_CROSS, TRUE);

	return ShowDialogForArea();

} // RightMouseUp


// --------------------------------------------------------------------------------------------
// Doppelklick auf linke Maustaste
void CNewArea::LeftDoubleClick (void)
{
// Zeichenoperation beenden
    if (m_wDragObj.IsValid())
	{
		m_wDragObj->DragTerminate();
		m_wDragObj.Assign (NULL);
	}

    m_pVWnd->MouseTrap (FALSE);

// letzte Kontur (evtl.) noch schlie�en
KoOrd* plXK; KoOrd* plYK;
long lCnt;
long* plCnt;

	m_wObj->GetX ((void**)&plXK);
	m_wObj->GetY ((void**)&plYK);
	m_wObj->GetCnt (&lCnt);
	m_wObj->GetKCnt (&m_iKCnt);
	m_wObj->GetLPCnt (&plCnt);

long lSPA = plCnt[m_iKCnt-1];	// Anzahl der St�tzpunkte der letzten Kontur
long lInd = lCnt - lSPA;		// Index des Anfangspunktes der letzten Kontur
	
	if (lSPA >= 2 &&
		(plXK[lInd] != plXK[lCnt-1] ||	// Kontur ist noch nicht
		plYK[lInd] != plYK[lCnt-1]))	//  zugezogen
		m_wObj->AddPunkt (plXK[lInd], plYK[lInd], -1, m_iKCnt-1);	// zuziehen

ulong ulLastIdent = DEX_GetLastIdent();

// Bereich neu zeichnen vorbereiten
int iMarkGr;	// Markergr��e
Rectangle Rec;	// umschlie�endes Rechteck des aktuell editierten Objektes

    m_wTopObjs->GetMarkerSizeBS (&iMarkGr);
    m_wObj->RectangleToDraw2 ((RECT*)&Rec, iMarkGr);

	if (0 != ulLastIdent && (ulong)-1 != ulLastIdent)	// in der Projekt-INI steht ein g�ltiger Identifikator
	{
	// Identifikator sowie Objektname hinzuf�gen und neues Objekt speichern
   		m_wObj->SetIdent (ulLastIdent);

	BSTR bsObjName = A2BSTR("");	// noch leerer Objektname  !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	
		m_wEdExSite->StoreNewObject (m_wObj, bsObjName);
	}
	else					// in der Projekt-INI steht kein g�ltiger Identifikator
		ShowDialogForArea();

// Bereich neu zeichnen
	m_wTopObjs->DeleteTopicalObjectGeometry (m_wObj);
   	m_wObj.Assign (NULL);
    DEX_RePaintRectWait (Rec);
    m_pVWnd->Update();		// sofort zeichnen

	if (m_wRestrLine1.IsValid() || m_wRestrLine2.IsValid())
		DEX_ChangeActiveTool (ID_TOOL_DESIGNSTOP);	// DesignMode beenden

/* K�nnen die nachfolgenden Zeilen wegen des am 24.02.99 in CGeoEditExtension::WindowsNotification
   (GeoEdit.cpp) eingef�gten "case WM_MOUSEMOVE:" jetzt wegfallen ????????
CursForm CF;	// wieder Erl�uterung der aktuellen CursorForm in Statuszeile

    m_wEdExSite->GetCursor (&CF);
   	m_wEdExSite->SetCursor (CF, TRUE);
*/
} // LeftDoubleClick


// --------------------------------------------------------------------------------------------
// EditierDialog anzeigen und Objekt (evtl.) abspeichern
HRESULT CNewArea::ShowDialogForArea (void)
{
ResString resCapt (ResID (IDS_NEWAREA, pRF), 40);
ulong ulCnt = 1;	// Anzahl der IObjektGeometrie'n
int iResult;		// Resultat der DialogBedienung

HRESULT hrRet = m_wEdExSite->ShowEditDialog (resCapt.Addr(), g_cbGeoEditNewArea, ulCnt,
    							 (IUnknown**)&m_wObj, &m_iGrabCnt, m_pGrabPktX, m_pGrabPktY,
    							 m_hrComBorder, m_lComONr, 0, NULL, NULL, &iResult);

    // m_wObj w�rde erst durch den Destruktor ~CNewArea zerlegt werden; damit aber mehrere
    // Fl�chenobjekte editiert werden k�nnen, ohne das zwischendurch ~CNewArea gerufen wird,
    // erfolgt hier bei OK bzw. Cancel ein zwangsweises Zerlegen von m_wObj
    if (IDOK == iResult)
	{
		m_wTopObjs->DeleteTopicalObjectGeometry (m_wObj);
    	m_wObj.Assign (NULL);

		if (m_wRestrLine1.IsValid() || m_wRestrLine2.IsValid())
			DEX_ChangeActiveTool (ID_TOOL_DESIGNSTOP);	// DesignMode beenden

/* K�nnen die nachfolgenden Zeilen wegen des am 24.02.99 in CGeoEditExtension::WindowsNotification
   (GeoEdit.cpp) eingef�gten "case WM_MOUSEMOVE:" jetzt wegfallen ????????
    CursForm CF;	// wieder Erl�uterung der aktuellen CursorForm in Statuszeile

    	m_wEdExSite->GetCursor (&CF);
   		m_wEdExSite->SetCursor (CF, TRUE);
*/
	}
    else if (IDCANCEL == iResult)
    {
		m_wTopObjs->DeleteTopicalObjectGeometry (m_wObj);
    	m_wObj.Assign (NULL);

		if (m_wRestrLine1.IsValid() || m_wRestrLine2.IsValid())
			DEX_ChangeActiveTool (ID_TOOL_DESIGNSTOP);	// DesignMode beenden

/* K�nnen die nachfolgenden Zeilen wegen des am 24.02.99 in CGeoEditExtension::WindowsNotification
   (GeoEdit.cpp) eingef�gten "case WM_MOUSEMOVE:" jetzt wegfallen ????????
    CursForm CF;	// wieder Erl�uterung der aktuellen CursorForm in Statuszeile

    	m_wEdExSite->GetCursor (&CF);
   		m_wEdExSite->SetCursor (CF, TRUE);
*/
    	return S_OK;
    }
    else if (IDB_CONTINUE == iResult)
    {
    	// Hintergrund nach Zerlegen des Dialogs sofort zeichnen, weil sonst ZUERST die neue
    	// DragLine gezeichnet wird, die dann durch das sp�tere Hintergrundzeichnen gel�scht
    	// wird
    	m_pVWnd->Update();

		hrRet = ContinueButtonAction();
    	if (FAILED(hrRet)) return hrRet;
    }
    else if (IDB_ISLAND == iResult)
    {
		hrRet = IslandButtonAction();
    	if (FAILED(hrRet)) return hrRet;
    }

    // Hilfslinie beim n�chsten MouseMove() l�schen (s. a. LeftMouseUp), wenn zus�tzlich der
    // n�chste editierte Punkt nicht Beginn einer Insel ist
    // da der DeleteButton (mehrmals) gedr�ckt worden sein konnte, sind nachfolgende Werte
    // zu aktualisieren
    if (m_wObj.IsValid())
    {
    long* plCnt;

    	m_wObj->GetKCnt (&m_iKCnt);
    	m_wObj->GetLPCnt (&plCnt);
    	m_lKSize = plCnt[m_iKCnt-1];

    	if (m_lKSize >= 3 && !m_bIsland)
    		m_bCloseLineDelete = true;
    	else
    		m_bCloseLineDelete = false;
    }

	return hrRet;

} // ShowDialogForArea


// --------------------------------------------------------------------------------------------
// neue Fl�che editieren
HRESULT CNewArea::NeueFlaeche (void)
{
	// m_LastPkt evtl. durch Grabben noch modifizieren, wenn ohne Konstruktionshilfslinien
	// editiert wird
	RETURN_FAILED_HRESULT (Grabbing());

    if (! m_wObj.IsValid())	// aus dem 1. editierten St�tzpunkt Anfang der Au�enkontur aufbauen
    {						
    	m_dAktGesFlaeche = 0.0;
    	m_dAktInsel = 0.0;

    	RETURN_FAILED_HRESULT (CreateInterfaceOG (m_wObj.ppi(), m_LastPkt.X(), m_LastPkt.Y(),
												  OT_FLAECHE));
    	m_FirstPkt = m_LastPkt;
    	m_FirstPt = m_LastPt;
    	m_lKSize = 1;	// Gr��e der aktuell editierten Kontur

		m_wTopObjs->AddTopicalObjectGeometry (m_wObj);
    }

    else				// weitere St�tzpunkte wurden editiert
    {
    	if (! m_bIsland)		// keine neue Insel
    	{
    		m_wObj->GetKCnt (&m_iKCnt);

    		RETURN_FAILED_HRESULT (m_wObj->AddPunkt (m_LastPkt.X(), m_LastPkt.Y(), -1, m_iKCnt-1));

    		if (1 == m_iKCnt)
    			m_dAktGesFlaeche += m_dAktDreieck;
    		else
    			m_dAktInsel += m_dAktDreieck;
    		m_lKSize++;		// Gr��e der aktuell editierten Kontur
    	}
    	else				// (neue) Insel anfangen
    	{
    		m_wObj->AddKante (&m_LastPkt.X(), &m_LastPkt.Y(), 1, -1);

    		m_FirstPkt = m_LastPkt;
    		m_FirstPt = m_LastPt;
    		m_bIsland = false;
    		m_dAktGesFlaeche = fabs(m_dAktGesFlaeche) - fabs(m_dAktInsel);
    		m_dAktInsel = 0.0;
    		m_lKSize = 1;	// Gr��e der aktuell editierten Kontur
    	}
    }

    return S_OK;

} // NeueFlaeche


// --------------------------------------------------------------------------------------------
// Grabben des letzten editierten Punktes;
// return-Wert:	S_OK            es wurde gegrabt
//				S_FALSE         es wurde nicht gegrabt
//				E_OUTOFMEMORY   dynamischer Speicher nicht ausreichend
HRESULT CNewArea::Grabbing (void)
{
	if (m_wRestrLine1.IsValid() || m_wRestrLine2.IsValid())
		return S_FALSE;		// es ist wenigstens 1 Konstruktionshilfslinie vorgegeben

// m_LastPkt evtl. durch Grabben noch modifizieren und alle Linien- bzw. Fl�chenobjekte der
// m_wAllTObjs-Objekte in wActGrabObjs einsammeln, die den (falls vorhanden) GrabPunkt als
// St�tzpunkt besitzen
WEnumObjektGeometrie wActGrabObjs;
HRESULT hrRet = m_wTopObjs->NewVertexWithGrab ((POINT*)&m_LastPt, m_wDragObj, &m_LastPkt.X(),
											   &m_LastPkt.Y(), wActGrabObjs.ppi());

    if (S_OK != hrRet)	// es wurde nicht gegrabt
    {
    	m_iGrabCnt = 0;
    	m_hrComBorder = S_FALSE;
    }

    else				// es wurde gegrabt
    {
    	if (0 == m_iGrabCnt)	// der 1. von mehreren hintereinander editierten GrabPunkten
    	{
	 		DELETE_VEC (m_pGrabPktX);
	 		DELETE_VEC (m_pGrabPktY);
    		m_pGrabPktX = new KoOrd[iComCnt];	// iComCnt ist in EditKonst.h definiert
    		m_pGrabPktY = new KoOrd[iComCnt];
    		if (!m_pGrabPktX || !m_pGrabPktY)
    		{
	 			DELETE_VEC (m_pGrabPktX);
    			DEX_Error (RC_NewArea, EC_NOMEMORY);
    			return E_OUTOFMEMORY;
    		}
    	}

    	m_lComONr = 0;	// Objektnummer des Objektes, von dem die gemeinsamen St�tzpunkte bei
    					// CommonBorder �bernommen werden k�nnen

    	m_hrComBorder = IsCommonBorderAllowable (m_iGrabCnt, wActGrabObjs, m_wGrabObjs,
    											 m_lComONr);

		if (0 != m_lComONr && -1 != m_lComONr)
		{
		int iOT = DEX_GetObjectType (m_lComONr);

			if ((OT_FLAECHE == iOT || S_OK == IsClosedLine (m_lComONr)) && m_iGrabCnt > 3)
			{
				m_pGrabPktX[0] = m_pGrabPktX[1];
				m_pGrabPktY[0] = m_pGrabPktY[1];
				m_pGrabPktX[1] = m_pGrabPktX[2];
				m_pGrabPktY[1] = m_pGrabPktY[2];
				m_iGrabCnt--;
			}
			else if (OT_KANTE == iOT && S_FALSE == IsClosedLine (m_lComONr) && m_iGrabCnt > 2)
			{
				m_pGrabPktX[0] = m_pGrabPktX[1];
				m_pGrabPktY[0] = m_pGrabPktY[1];
				m_iGrabCnt--;
			}
		}

		_ASSERTE (m_iGrabCnt <= iComCnt);

    	m_pGrabPktX[m_iGrabCnt-1] = m_LastPkt.X();
    	m_pGrabPktY[m_iGrabCnt-1] = m_LastPkt.Y();

    	// es wurde gegrabt, deshalb m_dAktDreieck korrigieren (25.03.98)
    	m_dAktDreieck = DreieckInhalt (m_LastPt, m_FirstPkt, m_LastPkt, m_pCT);
    }

	return hrRet;

} // Grabbing


// --------------------------------------------------------------------------------------------
// ContinueButton in der PropertySheet gedr�ckt
HRESULT CNewArea::ContinueButtonAction (void)
{
// Das Dr�cken eines Buttons bzw. die Korrektur des letzten Koordinatenpaars durch den Anwender
// kann den Punkt, an dem fortgesetzt werden soll, ver�ndern. Deshalb ist dieser Punkt neu zu
// ermitteln. Au�erdem ist der Gesamtfl�cheninhalt neu zu berechnen.
long lCnt;
KoOrd* plXK; KoOrd* plYK;

    m_wObj->GetCnt (&lCnt);
    m_wObj->GetX ((void**)&plXK);
    m_wObj->GetY ((void**)&plYK);

    // Gesamtfl�cheninhalt als vorzeichenbehafteten Wert neu berechnen
    AreaSize (plXK, plYK, 0, lCnt-1, m_pCT, &m_dAktGesFlaeche);
    m_dAktInsel = 0.;
    m_dAktDreieck = 0.;

    m_LastPt = BSKoordinaten (plXK[lCnt-1], plYK[lCnt-1]);
    m_LastPkt.X() = plXK[lCnt-1];
    m_LastPkt.Y() = plYK[lCnt-1];

// falls durch den DeleteButton eine Insel komplett gel�scht wurde, mu� auch der erster Punkt
// der jetzt aktuell editierten Kontur korrigiert werden
long* plCnt;

    m_wObj->GetKCnt (&m_iKCnt);
    m_wObj->GetLPCnt (&plCnt);
    m_lKSize = plCnt[m_iKCnt-1];

long lAInd = lCnt - m_lKSize;

    m_FirstPt = BSKoordinaten (plXK[lAInd], plYK[lAInd]);
    m_FirstPkt.X() = plXK[lAInd];
    m_FirstPkt.Y() = plYK[lAInd];

    try
    {
    WDragObject wDragObj (CLSID_DragMultiLine);	// throws_com_error (ab zum Konstruktor)

    	m_wDragObj.Assign (NULL);
    	m_wDragObj = wDragObj;
		m_iSPCnt = 0;
    	if (S_OK == m_wDragObj->AddStartPoint ((POINT&)m_FirstPt))
		{
			m_pStartPkt[m_iSPCnt] = DBKoordinaten (m_FirstPt);
			m_iSPCnt++;
		}
    	if (S_OK == m_wDragObj->AddStartPoint ((POINT&)m_LastPt))
		{
			m_pStartPkt[m_iSPCnt] = DBKoordinaten (m_LastPt);
			m_iSPCnt++;
		}
    	m_wDragObj->ConstructDragLines();
    }
    catch (_com_error& e)
    {
    	return _COM_ERROR (e);
    }

    return S_OK;

} // ContinueButtonAction


// --------------------------------------------------------------------------------------------
// IslandButton in der PropertySheet gedr�ckt
HRESULT CNewArea::IslandButtonAction (void)
{
    m_bIsland = true;	// der n�chste editierte Punkt ist Beginn einer Insel

	if (m_wRestrLine1.IsValid() || m_wRestrLine2.IsValid())
		DEX_ChangeActiveTool (ID_TOOL_DESIGNSTOP);	// DesignMode beenden

    return S_OK;

} // IslandButtonAction


// --------------------------------------------------------------------------------------------
// aktuellen Fl�cheninhalt in Statuszeile anzeigen
bool CNewArea::AktuelleWerteAnzeigen (Point Pt)
{
    if (! m_wObj.IsValid() ||	// der 1. Punkt der zu editierenden Fl�che ist noch nicht gesetzt bzw.
    	m_bIsland)				// Beginn einer neuen Insel wurde soeben angezeigt:
    	return false;	// deshalb keinen aktuellen Fl�cheninhalt anzeigen

    m_dAktDreieck = DreieckInhalt (Pt, m_FirstPkt, m_LastPkt, m_pCT);

string sOutBuff = "";	// Ausgabepuffer
double dZwFlInh;		// aktueller Zwischenstand des Fl�cheninhalts

    if (1 == m_iKCnt)		// Neueditierung der Au�enkontur
    	dZwFlInh = fabs(m_dAktGesFlaeche + m_dAktDreieck);
    else					// Neueditierung einer Innenkontur
    {
    	sOutBuff += ResString (ResID (IDS_AKTINSEL, pRF), 40);
    	FlInhaltNormieren (fabs(m_dAktInsel + m_dAktDreieck), sOutBuff);
    	sOutBuff += ";  ";
    	dZwFlInh = m_dAktGesFlaeche - fabs(m_dAktInsel + m_dAktDreieck);
    }

    sOutBuff += ResString (ResID (IDS_GESAMTINHALT, pRF), 40);

    FlInhaltNormieren (dZwFlInh, sOutBuff);

    if (m_dAktDreieck != 0. || dZwFlInh != 0.)
    	DEX_SetMessageStringNoKickIdle (sOutBuff.c_str());

    return true;

} // AktuelleWerteAnzeigen


// --------------------------------------------------------------------------------------------
// MouseMove ohne Konstruktionshilfslinien
HRESULT CNewArea::MouseMoveWithoutRestrictLines (LPARAM lParam)
{
	if (m_wDragObj.IsValid()) m_LastPt = BSPoint (lParam);

HRESULT hr = m_wTopObjs->CursorInMarkerSomeTopObjects (m_wAllTObjs, &m_NewCP);

    if (FAILED(hr)) return hr;

    if (m_NewCP == m_OldCP) return S_OK;

    m_OldCP = m_NewCP;	// bisherige CursorPosition retten

    if (CURSPOS_VERTEX == m_NewCP)	// Cursor in einer St�tzpunktmarkierung
    	return m_wEdExSite->SetCursor (CURSFORM_FANGEN, TRUE);

    return m_wEdExSite->SetCursor (CURSFORM_CROSS, TRUE);

} // MouseMoveWithoutRestrictLines


// --------------------------------------------------------------------------------------------
// MouseMove mit Konstruktionshilfslinien
HRESULT CNewArea::MouseMoveWithRestrictLines (LPARAM lParam, BOOL bTopIsPaint)
{
	if (!m_wRestrLine1.IsValid() && !m_wRestrLine2.IsValid())
		return E_UNEXPECTED;	// keine Konstruktionshilfslinie 

	if (!m_wRestrLine1.IsValid() || !m_wRestrLine2.IsValid())	// genau 1 Konstruktionshilfslinie
	{
		// wenn der return-Wert von CursorTo1RestrictLine() "S_FALSE" ist, befindet sich die
		// Mausspitze genau im Mittelpunkt einer kreisf�rmigen Hilfslinie; in diesem Fall wird
		// keine Cursorposition berechnet
		if (m_wRestrLine1.IsValid() &&
			S_FALSE == m_wRestrLine1->CursorTo1RestrictLine (lParam, &(POINT&)m_LastPt))
			return S_FALSE;
		if (m_wRestrLine2.IsValid() &&
			S_FALSE == m_wRestrLine2->CursorTo1RestrictLine (lParam, &(POINT&)m_LastPt))
			return S_FALSE;
	}
	else									// 2 Konstruktionshilfslinien
		// wenn der return-Wert von CursorTo2RestrictLines() "S_FALSE" ist, wurde eine
		// MessageBox angezeigt
		if (!m_bIsPaint && !bTopIsPaint &&
			!m_bMessBox &&					// keine MessageBox angezeigt
			S_FALSE == m_wRestrLine1->CursorTo2RestrictLines (lParam, m_wRestrLine2,
															  &(POINT&)m_LastPt))
		{
			m_bMessBox = true;
			return S_FALSE;
		}

    if (m_wRestrictCursor.IsValid())
		m_wRestrictCursor->SetPoint ((POINT&)m_LastPt, m_bIsPaint || bTopIsPaint);

#ifdef DEX_SetShownCoords
	DEX_SetShownCoords (m_LastPt.X(), m_LastPt.Y());
#endif

	return m_wEdExSite->SetCursor (CURSFORM_PFEIL, TRUE);

} // MouseMoveWithRestrictLines