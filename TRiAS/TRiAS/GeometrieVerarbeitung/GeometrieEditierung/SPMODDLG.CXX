// Dialogfenster f�r Modifizierung von St�tzpunktkoordinaten
// File: SPMODDLG.CXX
// W. M�rtl

#include "geoeditp.hxx"

#include "spmoddlg.hxx"


#if defined(_DEBUG) && defined(WIN32)
#undef THIS_FILE
static char BASED_CODE THIS_FILE[] = __FILE__;
#endif



// externe Variable
extern ResourceFile* pRF;



// ------------------------------------------------------------------------------------------------
// Konstruktor
#if defined (MSCC8)
#pragma warning (disable: 4355)	// Ausschalten von uninteressanten Warnungen
#endif
VertexModifyDlg :: VertexModifyDlg (pWindow pW, IObjektGeometrie* pIOG, long lInd, bool bMehrf)
				 : DialogWindow (pW, ResID (IDD_VERTEXMODIFY, pRF)),
				   m_X (this, IDE_XMODIFY),
				   m_Y (this, IDE_YMODIFY),
				   m_AbschlussButton (this, IDOK),
				   m_LoeschButton (this, IDB_DELETE)
{
// Standardwerte einstellen
	m_pW = pW;
	m_pIOG = pIOG;
	if (m_pIOG) m_pIOG -> AddRef();
	m_lInd = lInd;
	m_bMehrf = bMehrf;

	StandardWerte (lInd);

// !!!!!!!!!!!!!!!!!!!!!!!!!!!! nur vor�bergehend
	m_X.Disable();
	m_Y.Disable();
	m_LoeschButton.Disable();
}
#if defined (MSCC8)
#pragma warning (default: 4355)
#endif


// ------------------------------------------------------------------------------------------------
// Destruktor
VertexModifyDlg :: ~VertexModifyDlg (void)
{
	if (m_pIOG) m_pIOG -> Release();
	DELETE (m_pCT);
}


// ------------------------------------------------------------------------------------------------
// EventHandler	(Ereignishandler)
// Reaktion auf Button-Click
void _GEOEDIT_EXPORT VertexModifyDlg :: ButtonClick (ControlEvt e)
{
	switch ((uint)e.GetControlID())
	{
		case IDOK:
			if (idb_abschluss ())
				EndDlg (BEENDEN);
			else
				EndDlg (FORTSETZEN);
			break;
			
		case IDB_DELETE:
			idb_loeschen ();
			break;

		case IDCANCEL:
			EndDlg (VERWERFEN);
			break;

		default:
			TX_ASSERT (false);
			break;
	}
} // ButtonClick


// ------------------------------------------------------------------------------------------------
// Reaktion auf Eingabe in eines der Editierfelder
void _GEOEDIT_EXPORT VertexModifyDlg :: EditChange (ControlEvt e)
{
	switch ((uint) e.GetControlID ())
	{
		case IDE_XMODIFY:
		case IDE_YMODIFY:
			if (! m_bIntern)		// dieser Zweig wurde nicht durch programm-interne Modifikation der
									//  Editierfelder XKoord bzw. YKoord erreicht
				m_bPtKorr = true;	// sondern: Koordinaten wurden extern durch Anwender ver�ndert
			break;

		default:
			TX_ASSERT (false);
			break;
	}
} // EditChange


// ------------------------------------------------------------------------------------------------
// Koordinaten-Konvertierung Text -> DB-Koordinaten
void VertexModifyDlg :: KoordTextToDB (Punkt& ResultPkt)
{
// TEXTL ist in geokonst.hxx definiert
char pcInBuffX [TEXTL];		// Konvertierungspuffer f�r x-
char pcInBuffY [TEXTL];		//  bzw. y-Koordinate

	if (m_pCT)
	{
	double dRW, dHW;

		m_X.GetText (pcInBuffX, sizeof (pcInBuffX));
		m_Y.GetText (pcInBuffY, sizeof (pcInBuffY));
	    if (m_pCT -> CoordTransToValueEx (pcInBuffX, pcInBuffY, dRW, dHW) == false)
			return;

		// Umwandlung der Real- in DB-Koordinaten (unter Ber�cksichtigung der internen Skalierung)
		RealInDBKoord (dRW, dHW, ResultPkt.X(), ResultPkt.Y(), m_pCT);
	}
	else
	{
		m_X.GetText (pcInBuffX, sizeof (pcInBuffX));
		ResultPkt.X() = atol (pcInBuffX);
		m_Y.GetText (pcInBuffY, sizeof (pcInBuffY));
		ResultPkt.Y() = atol (pcInBuffY);
	}
} // KoordTextToDB


// ------------------------------------------------------------------------------------------------
// Koordinaten-Konvertierung Datenbank -> Text
void VertexModifyDlg :: KoordDBToText (Punkt& Pt)
{
char pcOutBuff [TEXTL];	// Konvertierungspuffer

	if (m_pCT)
	{
	double XOut, YOut;

		DBKoordInReal (Pt, XOut, YOut, m_pCT);

		// Umwandlung in Text f�r Anzeige im dblnumedit-Fenster
		m_pCT -> CoordTransToStringEx (XOut, YOut, true, pcOutBuff, sizeof(pcOutBuff));		// Rechtswert
		m_bIntern = true;	// m_X und m_Y werden intern modifiziert
		m_X.SetText (pcOutBuff);
		m_pCT -> CoordTransToStringEx (XOut, YOut, false, pcOutBuff, sizeof(pcOutBuff));	// Hochwert
		m_Y.SetText (pcOutBuff);
	}
	else
	{
		m_X.SetText (ltoa (Pt.X(), pcOutBuff, 10));
		m_Y.SetText (ltoa (Pt.Y(), pcOutBuff, 10));
	}

	m_bIntern = false;
} // KoordDBToText


// ------------------------------------------------------------------------------------------------
// Reaktion bei Bet�tigung des L�schen-Button
// L�schen des zuletzt editierten St�tzpunktes bei Aufbau dds "Messers" f�r die Fl�chenteilung (kann
// mehrfach hintereinander ausgef�hrt werden); wenn f�r "Messer" nur (noch) ein St�tzpunkt vorhanden
// ist, wird der L�schen-Button deaktiviert; soll auch dieser St�tzpunkt gel�scht werden, ist der
// Abbrechen-Button zu verwenden, der gleichzeitig das gesamte Objekt l�scht
// Wird ein spezieller St�tzpunkt modifiziert, kann der L�sch-Button nur einmalig verwendet werden.
void VertexModifyDlg :: idb_loeschen (void)
{
	// mehrfaches Bet�tigen des L�sch-Buttons ist m�glich bei der Editierung des "Messers" f�r
	// die Fl�chenteilung
	if (m_bMehrf)
	{
	long lSPA;		// Anzahl der bisher editierten St�tzpunkte des "Messers"

		m_pIOG -> GetCnt (&lSPA);

		TX_ASSERT (lSPA > 1);

		if (lSPA <= 1)
			return;	// dieser Zweig d�rfte eigentlich gar nicht erreicht werden

	// den zuletzt editierten St�tzpunkt in m_pIOG l�schen
	KoOrd* plXK; KoOrd* plYK;

		m_pIOG -> GetX ((void**)&plXK);
		m_pIOG -> GetY ((void**)&plYK);

	KoOrd x1 = plXK [m_lInd];		// x- bzw.
	KoOrd y1 = plYK [m_lInd];		//  y-Koordinate des zuletzt editierten St�tzpunktes
	KoOrd x2 = plXK [m_lInd-1];		// x- bzw.
	KoOrd y2 = plYK [m_lInd-1];		//  y-Koordinate des vorletzten St�tzpunktes
	Punkt EP1 (x1, y1);
	Punkt EP2 (x2, y2);
	short iKontInd;	// f�r SubPunkt(), wird hier nicht ausgewertet

		KoordDBToText (EP2);	// Koordinaten des vorletzten Punktes anzeigen
		m_pIOG -> SubPunkt (m_lInd, &iKontInd);

// !!!!!!!!!!!!!!! nur vor�bergehend
		// die letzte Strecke wird auf dem Bildschirm gel�scht
//		if (lSPA >= 2)
//		{
//			DrawLine (EP2, EP1, false, m_pW);	// Strecke zwischen EP2 und EP1 auf Bildschirm l�schen
//			m_LoeschButton.Enable();
//		}
//		else
			m_LoeschButton.Disable();
	}

	// einfaches Bet�tigen des L�sch-Buttons bei Modifizierung eines konkreten St�tzpunktes
	else
	{
		m_X.SetText ("");
		m_Y.SetText ("");
		m_LoeschButton.Disable();
	}
} // idb_loeschen


// ------------------------------------------------------------------------------------------------
// Es wurde der AbschlussButton gedr�ckt, dazu
// - den in den Editierfeldern m_X und m_Y stehenden Punkt modifizieren (ver�ndern oder l�schen)
// - entsprechend der Aufschrift des AbschlussButtons den R�ckgabewert festlegen; f�r 
//   Teilen:     true
//   Fortsetzen: false
bool VertexModifyDlg :: idb_abschluss (void)
{
//	m_pOG->iFlags = OGModObject | OGForceGeometry | OGForceGeoError;	// OGForceGeoError-Flag f�r GeoRein

	// Punkt mit Index m_lInd l�schen
//	if (MPkt.X() == 0 && MPkt.Y() == 0)
short iOT;

	m_pIOG -> GetObjTyp (&iOT);

	if (m_X.GetTextLen() == 0 && m_Y.GetTextLen() == 0)
	{
		if (iOT == OT_KANTE || iOT == OT_FLAECHE)
		{
		short iKontInd;	// f�r SubPunkt(): wird jedoch hier nicht weiter genutzt

			m_pIOG -> SubPunkt (m_lInd, &iKontInd);

		ResString Text (ResID (IDS_BUTTONTEXT2, pRF), 20);

			m_AbschlussButton.SetText (Text.Addr());
/*			if (DEX_ModObjGeometrie (*(OBJGEOMETRIE*)m_pOG) == false)	// bei false liegt Geometriefehler vor
			{
			// Warnung, wenn keine Abspeicherung der Geometrie-Modifikation wegen Geometriefehler	
			ResString Text (ResID (IDS_GEOFEHLERMOD, pRF), 150);
			
				MessageBox (m_hWnd, Text.Addr(), "", MB_ICONEXCLAMATION | MB_OK);
				m_pOG -> AddPunkt (m_DelPkt.X(), m_DelPkt.Y(), m_lInd, iKontInd);	// gel�schten St�tzpunkt wieder einf�gen
			}
*/		}
	}

	// Punkt mit Index m_lInd modifizieren
	else
	{
/*	KoOrd RettX, RettY;

		RettX = ((KoOrd*)m_pOG->pdblX)[m_lInd];	// zu modifizierende Koordinaten f�r evtl.
		RettY = ((KoOrd*)m_pOG->pdblY)[m_lInd];	//  R�ckg�ngigmachen retten
*/
		if (m_bPtKorr)		// durch Anwender wurde _XKoord bzw. _YKoord ver�ndert
		{
		Punkt MPkt;		// zu modifizierender Punkt in DB-Koordinaten
		KoOrd* plXK; KoOrd* plYK;
		
			KoordTextToDB (MPkt);	// DB-Koordinaten aus DoubleNumEdit herleiten
			m_pIOG -> GetX ((void**)&plXK);
			m_pIOG -> GetY ((void**)&plYK);

			plXK [m_lInd] = MPkt.X();
			plYK [m_lInd] = MPkt.Y();
		}

// !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
// Wenn MPkt zu weit von der m_pIOG-Strecke entfernt liegt, dann "Fortsetzen"
// !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!		

/*		if (DEX_ModObjGeometrie (*(OBJGEOMETRIE*)m_pOG) == false)	// bei false liegt Geometriefehler vor
		{
		// Warnung, wenn keine Abspeicherung der Geometrie-Modifikation wegen Geometriefehler	
		ResString Text (ResID (IDS_GEOFEHLERMOD, pRF), 150);
			
			MessageBox (m_hWnd, Text.Addr(), "", MB_ICONEXCLAMATION | MB_OK);
			((KoOrd*)m_pOG->pdblX)[m_lInd] = RettX;	// modifizierten St�tzpunkt wieder
			((KoOrd*)m_pOG->pdblY)[m_lInd] = RettY;	//   rekonstruieren
		}
*/	}


char pcBuffer [20];

	m_AbschlussButton.GetText (pcBuffer, sizeof (pcBuffer));
	if (pcBuffer[0] == 'T' || pcBuffer[1] == 'T')	// Fl�che teilen (1. Zeichen kann "&" sein
		return true;
	return false;				// Editierung des "Messers" fortsetzen
} // idb_abschluss


// ------------------------------------------------------------------------------------------------
// (modifizierte) Koordinaten einlesen
bool VertexModifyDlg :: GetPunkt (Punkt& ResultPkt)
{
	if (!m_X.GetEditControl() -> isModified() &&
	    !m_Y.GetEditControl() -> isModified())
	// keine der Koordinaten wurde ge�ndert
		return false;

char pcInBuff [TEXTL];

	if (m_pCT)
	{
	double X, Y;

		m_X.GetText (pcInBuff, sizeof (pcInBuff));
		X = m_pCT -> CoordTransToValue (pcInBuff);
		m_Y.GetText (pcInBuff, sizeof (pcInBuff));
		Y = m_pCT -> CoordTransToValue (pcInBuff);

		m_pCT -> InvTransform (&X, &Y);
		m_pCT -> Scale (X, Y, ResultPkt);
	}
	else
	{
		m_X.GetText (pcInBuff, sizeof (pcInBuff));
		ResultPkt.X() = atol (pcInBuff);
		m_Y.GetText (pcInBuff, sizeof (pcInBuff));
		ResultPkt.Y() = atol (pcInBuff);
	}

	return true;
} // GetPunkt


// ------------------------------------------------------------------------------------------------
// Delete-Button aktivieren (bAkt == true) bzw. passivieren (bAkt == false)
void VertexModifyDlg :: SetDeleteButton (bool bAkt)
{
// !!!!!!!!!!!!!!! nur vor�bergehend
//	if (bAkt)
//		m_LoeschButton.Enable ();
//	else
		m_LoeschButton.Disable ();
}


// ------------------------------------------------------------------------------------------------
// Einstellung von Standardwerten
void VertexModifyDlg :: StandardWerte (long lInd)
{
// Variablen initialisieren
	m_pCT = new CoordTransX ();
	if (m_pCT == NULL)
		return;

// Voreinstellungen der Editierfelder
	m_X.SetNumEditMode (NumEditX :: NEM_NoTest);
	m_Y.SetNumEditMode (NumEditX :: NEM_NoTest);
	
// Koordinaten des letzten editierten Punktes im Editierfeld anzeigen
KoOrd lRW, lHW;	// Rechts- und Hochwert (im KoOrd-Format) des zuletzt editierten Punktes
short iOT;
KoOrd* plXK; KoOrd* plYK;

	m_pIOG -> GetObjTyp (&iOT);
	m_pIOG -> GetX ((void**)&plXK);
	m_pIOG -> GetY ((void**)&plYK);

	switch (iOT)
	{
		case OT_PUNKT:
			lRW = plXK [0];
			lHW = plYK [0];
			break;
			
		case OT_KANTE:
		{
//		long lSPAnz = m_pOG -> lCnt;	// Anzahl der bis jetzt editierten Punkte
		
			lRW = plXK [m_lInd];
			lHW = plYK [m_lInd];
		}
			break;
			
		case OT_FLAECHE:
// hier fehlt noch etwas !!!!!!!!!!!!!!!!!!!!!!!!!
			break;
					
		default:	// weder Punkt, Linie bzw. Fl�che, was dann ?
			TX_ASSERT (false);
			return;
	}
	
	KoordDBToText (Punkt(lRW, lHW));	// stellt auch m_bIntern = false

// L�schen-Button nur bei Linien- und Fl�cheobjekt freigeben, wenn wenigstens 2 Punkte editiert wurden;
// Punktobjekt bzw. erster Punkt eines Linien- oder Fl�chenobjektes mit Abbrechen-Button eliminieren
// !!!!!!!!!!!!!!! nur vor�bergehend
//	if (m_pOG->lCnt > 1)
//		m_LoeschButton.Enable();
//	else
		m_LoeschButton.Disable();
	                                                            
// f�r Punktobjekt ist der Fortsetzen-Button nicht sinnvoll		
	if (iOT != OT_PUNKT) 
		m_AbschlussButton.Enable();
	else
		m_AbschlussButton.Disable();
	
// weitere Member initialisieren
	m_bPtKorr = false;	// in m_X bzw. m_Y wurden durch Anwender noch keine �nderungen vorgenommen	
} // StandardWerte
