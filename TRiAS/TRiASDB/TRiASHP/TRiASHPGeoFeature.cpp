// $Header: $
// Copyright� 1998-2000 TRiAS GmbH Potsdam, All rights reserved
// Created: 10.05.2000 19:36:40 
//
// This file was generated by the TRiASDB Data Server Wizard V1.02.086 (#HK000510)
//
// @doc
// @module TRiASHPGeoFeature.cpp | Implementation of the <c CTRiASHPGeoFeature> class

#include "stdafx.h"

#include <float.h>
#include "Strings.h"

#include "TRiASHP.h"
#include "TRiASHPDBEngine.h"
#include "TRiASHPGeoFeature.h"
#include "TRiASHPGeometryBlob.h"
#include "TRiASHPPropertySupport.h"

#if defined(_DEBUG)
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif // _DEBUG

/////////////////////////////////////////////////////////////////////////////
// SmartIF's
DefineSmartInterface(TRiASCSTransform);			// WTRiASCSTransform
DefineSmartInterface(TRiASTransformGeometry);	// WTRiASTransformGeometry
DefineSmartInterface(TRiASCloneGeometry);		// WTRiASCloneGeometry
DefineSmartInterface(TRiASCSGeometryProperties);	// WTRiASCSGeometryProperties
DefineSmartInterface(TRiASSimpleRectangle);		// WTRiASSimpleRectangle

DefineSmartInterface(TRiASDatabase);			// WTRiASDatabase
DefineSmartInterface(TRiASPropertyMapHandler);	// WTRiASPropertyMapHandler

DefineSmartInterface(Dispatch);					// WDispatch
DefineSmartInterface(PersistStreamInit);		// WPersistStreamInit

/////////////////////////////////////////////////////////////////////////////
// local required functions
inline GEOMETRYTYPE OBJECTTYPEToGEOMETRYTYPE (OBJECTTYPE rgType)
{
	return static_cast<GEOMETRYTYPE>(rgType);
}

inline OBJECTTYPE GEOMETRYTYPEToOBJECTTYPE (GEOMETRYTYPE rgGeoType)
{
	return static_cast<OBJECTTYPE>(rgGeoType & GEOMETRYTYPE_SimpleMask);
}

/////////////////////////////////////////////////////////////////////////////
// CTRiASHPGeoFeature

STDMETHODIMP CTRiASHPGeoFeature::InterfaceSupportsErrorInfo(REFIID riid)
{
	static const IID* arr[] = 
	{
		&IID_ITRiASFeature,
	};
	for (unsigned int i=0;i<sizeof(arr)/sizeof(arr[0]);i++)
	{
		if (InlineIsEqualGUID(*arr[i],riid))
			return S_OK;
	}
	return S_FALSE;
}

/////////////////////////////////////////////////////////////////////////////
// ITRiASFeatureCallback
STDMETHODIMP CTRiASHPGeoFeature::get_DefaultType (BSTR *pbstrType)
{
	CHECKOUTPOINTER(pbstrType);

CIID Guid (GetObjectCLSID());
CComBSTR bstrType (Guid.ProgID().c_str());

	*pbstrType = bstrType.Detach();
	return S_OK;
}

STDMETHODIMP CTRiASHPGeoFeature::SetupFeature (SETUPFEATUREMODE rgMode)
{
	_ASSERTE(SETUPFEATUREMODE_InitOrLoad == rgMode);		// z.Zt nur dieses
	COM_TRY {
	// Properties zum aggregierten Objekt hinzuf�gen
	WTRiASPropertyMapHandler MapHandler(m_BaseUnk);

		THROW_FAILED_HRESULT(MapHandler -> AddMapEntry (
			CComBSTR(g_cbFeatureCursor), (INT_PTR)&CLSID_TRiASHPCursorProperty, PROPERTYSUPPORT_NOFLAGS, vtMissing));

	} COM_CATCH;
	return S_OK;
}

STDMETHODIMP CTRiASHPGeoFeature::OnChanging(CHANGEDFEATURE rgWhat, VARIANT vNewValue, VARIANT_BOOL *pDisAllow)
{
	CHECKOUTPOINTER(pDisAllow);

#if defined(_READWRITE)
	*pDisAllow = VARIANT_FALSE;		// immer einverstanden sein
	return S_OK;
#else
	*pDisAllow = VARIANT_TRUE;		// verhindert Modifikation (rgWhat siehe OnChanged)
	return TRIASDB_E_OBJECTSNOTUPDATABLE;
#endif // defined(_READWRITE)
}

STDMETHODIMP CTRiASHPGeoFeature::OnChanged(CHANGEDFEATURE rgWhat, VARIANT vOldValue)
{
#if defined(_READWRITE)
	switch (rgWhat) {
	case CHANGEDFEATURE_Name:
		return OnChangedName();

	case CHANGEDFEATURE_Description:
		return OnChangedDescription();

	case CHANGEDFEATURE_Handle:
		return OnChangedHandle();

	case CHANGEDFEATURE_ROMode:
		return OnChangedROMode();

	case CHANGEDFEATURE_Value:
		break;

	case CHANGEDFEATURE_Type:
		return OnChangedType();

	default:
		_ASSERTE(SUCCEEDED(E_INVALIDARG));
		break;
	}
	return E_INVALIDARG;
#else
	return TRIASDB_E_OBJECTSNOTUPDATABLE;
#endif // defined(_READWRITE)
}

#if defined(_READWRITE)
HRESULT CTRiASHPGeoFeature::OnChangedName()
{
// neuen Namen vom Bezugsobjekt besorgen
CComBSTR bstrName;
WTRiASFeature BaseFeat;

	RETURN_FAILED_HRESULT(m_BaseUnk -> QueryInterface (BaseFeat.ppi()));
	RETURN_FAILED_HRESULT(BaseFeat -> get_Name(CLEARED(&bstrName)))

#pragma TODO("Neue Name der Objekteigenschaft ggf. auswerten.")
	return S_OK;
}

HRESULT CTRiASHPGeoFeature::OnChangedDescription()
{
// neue Beschreibung vom Bezugsobjekt besorgen
CComBSTR bstrName;
WTRiASFeature BaseFeat;

	RETURN_FAILED_HRESULT(m_BaseUnk -> QueryInterface (BaseFeat.ppi()));
	RETURN_FAILED_HRESULT(BaseFeat -> get_Name(CLEARED(&bstrName)))

#pragma TODO("Neue Beschreibung der Objekteigenschaft ggf. auswerten.")
	return S_OK;
}

HRESULT CTRiASHPGeoFeature::OnChangedHandle()
{
	return S_OK;
}

HRESULT CTRiASHPGeoFeature::OnChangedType()
{
// neuen Typ vom Bezugsobjekt besorgen
FEATURETYPE rgType = FEATURETYPE_Unknown;
WTRiASFeature BaseFeat;

	RETURN_FAILED_HRESULT(m_BaseUnk -> QueryInterface (BaseFeat.ppi()));
	RETURN_FAILED_HRESULT(BaseFeat -> get_Type(&rgType))

#pragma TODO("Neuen Typ der Objekteigenschaft ggf. auswerten.")
	return S_OK;
}

HRESULT CTRiASHPGeoFeature::OnChangedROMode()
{
// neuen Schreibschutzmode vom Bezugsobjekt besorgen
VARIANT_BOOL fUpdatable = VARIANT_FALSE;
WTRiASFeature BaseFeat;

	RETURN_FAILED_HRESULT(m_BaseUnk -> QueryInterface (BaseFeat.ppi()));
	RETURN_FAILED_HRESULT(BaseFeat -> get_Updatable(&fUpdatable))

#pragma TODO("Neuen Schreibschutzmode der Objekteigenschaft ggf. auswerten.")
	return S_OK;
}
#endif // defined(_READWRITE)

/////////////////////////////////////////////////////////////////////////////
// Eval: Das, worum es eigentlich geht ...
STDMETHODIMP CTRiASHPGeoFeature::Eval(ITRiASObject *pIObj, VARIANT *pVal)
{
CSafeArray sa (VT_VARIANT, 1);

	{
	CSafeArrayLock<VARIANT> lock(sa);

		V_VT(&lock[0]) = VT_ERROR;
		V_ERROR(&lock[0]) = DISP_E_PARAMNOTFOUND;
	}

// erweiterte Routine rufen
SAFEARRAY *psa = sa;

	return EvalEx (pIObj, &psa, pVal);
}

STDMETHODIMP CTRiASHPGeoFeature::EvalEx(ITRiASObject *pIObj, SAFEARRAY **ppConstraints, VARIANT *pVal)
{
	CHECKOUTPOINTER(pVal);

HRESULT hr = S_OK;
SAFEARRAY *psaResult = NULL;

	USES_CONVERSION;
	COM_TRY {
	WTRiASDatabase DBase;
	WTRiASFeature BaseFeat;

		THROW_FAILED_HRESULT(m_BaseUnk -> QueryInterface (BaseFeat.ppi()));
		THROW_FAILED_HRESULT(FindSpecificParent(pIObj, DBase.ppi()));

	// Namen des Geometriefeldes abfragen
	CComBSTR bstrName;
	INT_PTR lONr = 0L;

		THROW_FAILED_HRESULT(BaseFeat -> get_Name (CLEARED(&bstrName)));

	// CS-Transformator besorgen
	WTRiASCSTransform CST (GetPropertyFrom (DBase, g_cbTRiASCSTransform, (IDispatch *)NULL), false);

	// GeometrieGuid besorgen
	CComBSTR bstrGuid (GetPropertyFrom (DBase, g_cbCSSGuid, CComBSTR(g_cbNil)));
	CIID Guid (bstrGuid, CIID::INITCIID_InitFromGuid);		// CSS-Guid

		_ASSERTE(CST.IsValid());
		_ASSERTE(Guid != GUID_NULL);

	// evtl. constraint-Rechteck finden
	double dCont[4];		// XMin, XMax, YMin, YMax
	double dWindow[4];		// XMin, XMax, YMin, YMax
	CSafeArray sa (VT_VARIANT);

		ZeroMemory (dCont, 4*sizeof(double));
		ZeroMemory (dWindow, 4*sizeof(double));

		if (NULL != ppConstraints && sa.Attach (*ppConstraints, true)) {
		CSafeArrayLock<VARIANT> lock(sa);
		CComVariant vWindow;
		bool fHasWindow = false;

			if (lock.Size() > 1 && SUCCEEDED(vWindow.ChangeType (VT_DISPATCH, &lock[EVALEXPARAM_Window]))) {
			// zweiter optionaler Parameter enth�lt evtl. Suchfenster
			WTRiASSimpleRectangle rect (V_DISPATCH(&vWindow));

				_ASSERTE(rect.IsValid());
				THROW_FAILED_HRESULT(WTRiASTransformGeometry(rect) -> TransformInverse (*(CSID *)&Guid, CST));

				if (SUCCEEDED(rect -> GetRect(&dWindow[0], &dWindow[2], &dWindow[1], &dWindow[3])))
					fHasWindow = true;
			}

		// Geometrie abfragen
			THROW_FAILED_HRESULT(hr = GetGeometry (pIObj, BaseFeat, &psaResult, fHasWindow ? dWindow : NULL, dCont));
			if (S_OK == hr) {		// nur wenn wirklich alles ok ist
			// evtl. CoordSystemGuid im ersten Wert des SafeArray's liefern
				if (lock.Size() > 0) {
				// erster optionaler Parameter enth�lt bei R�ckkehr evtl. CoordSysGuid
				CComBSTR bstr (Guid);

					V_VT(&lock[EVALEXPARAM_CoordSysGuid]) = VT_BSTR;
					V_BSTR(&lock[EVALEXPARAM_CoordSysGuid]) = bstr.Detach();
				}

			// evtl. ObjektContainer im 3. Wert des SafeArray's liefern
				if (lock.Size() > 2) {
				// dritter optionaler Parameter enth�lt bei R�ckkehr evtl. Objektcontainer
				WTRiASSimpleRectangle rect (CLSID_TRiASCSRectangleGeometry);
				
					THROW_FAILED_HRESULT(WPersistStreamInit(rect) -> InitNew());
					THROW_FAILED_HRESULT(rect -> SetRect (dCont[0], dCont[2], dCont[1], dCont[3]));
					THROW_FAILED_HRESULT(WTRiASTransformGeometry(rect) -> Transform (*(CSID *)&Guid, CST));

					V_VT(&lock[EVALEXPARAM_Envelope]) = VT_DISPATCH;
					V_DISPATCH(&lock[EVALEXPARAM_Envelope]) = rect.detach();
				}
			}
		}	// lock goes out of scope
		else {
		// ohne Constraints arbeiten
			THROW_FAILED_HRESULT(hr = GetGeometry (pIObj, BaseFeat, &psaResult));
		}

	// GeometrieObjekt erzeugen und Koordinaten transformieren
		if (S_OK == hr) {
		CComVariant vGeom;
		WDispatch disp;
		GEOMETRYTYPE rgType = GEOMETRYTYPE_Unknown;

			V_VT(&vGeom) = VT_ARRAY|VT_UI1;
			V_ARRAY(&vGeom) = psaResult;
			psaResult = NULL;				// doppeltes freigeben verhindern

			THROW_FAILED_HRESULT(g_pDBEngine -> StorageToGeometry (vGeom, &rgType, disp.ppi()));
			THROW_FAILED_HRESULT(WTRiASTransformGeometry(disp) -> Transform (*(CSID *)&Guid, CST));

			V_VT(pVal) = VT_DISPATCH;		// Resultat �bergeben
			V_DISPATCH(pVal) = disp.detach();
		} 
		else if (NULL != psaResult) 
			::SafeArrayDestroy (psaResult);

	} COM_CATCH_OP(
		if (NULL != psaResult) ::SafeArrayDestroy (psaResult);
	);
	return hr;
}

/////////////////////////////////////////////////////////////////////////////
// allgemeine Geometrieroutine, liefert Geoemtrie als eindimensionales DoubleSafeArray
// ab, welches Wertetripel (X,Y,Z) bzw. (R,H,Z) enth�lt
HRESULT CTRiASHPGeoFeature::GetGeometry (
	ITRiASObject *pIObj, ITRiASFeature *pIFeat, SAFEARRAY **ppGeom, const double *pdWindow, double *pdCont)
{
	CHECKOUTPOINTER(ppGeom);

	using namespace geometryblob;
	COM_TRY {
	LONG lObjCursor = GetPropertyFrom (pIObj, g_cbObjectCursor, 0);
	SHPHandle hSHP = reinterpret_cast<SHPHandle>(GetPropertyFrom (pIFeat, g_cbFeatureCursor, 0L));

		_ASSERTE(0 < lObjCursor);
		_ASSERTE(NULL != hSHP);

	CShapeObject Obj (SHPReadObject (hSHP, lObjCursor-1));

	double_v vX, vY;
	POINTBASE vec = { 0.0, 0.0, 1.0 };		// Standard-Normale

		copy (Obj -> padfX, Obj -> padfX + Obj -> nVertices, inserter(vX, vX.begin()));
		copy (Obj -> padfY, Obj -> padfY + Obj -> nVertices, inserter(vY, vY.begin()));

	// umschlie�enden Container berechnen und mit evtl. gegebenen aktuellem Auschnitt vergleichen
		if (NULL != pdCont)	{	// umschlie�endes Rechteck des Objektes liefern
			pdCont[0] = Obj -> dfXMin;
			pdCont[1] = Obj -> dfXMax;
			pdCont[2] = Obj -> dfYMin;
			pdCont[3] = Obj -> dfYMax;
			if (NULL != pdWindow) {
				if (pdCont[1] < pdWindow[0] || pdCont[0] > pdWindow[1] ||
					pdCont[3] < pdWindow[2] || pdCont[2] > pdWindow[3])
				{
				// Objekt liegt au�erhalb des aktuell ben�tigten Ausschnittes
					return TRIASDB_S_OBJECTDOESNOTFIT;
				}
			}
		}

	// Geometrie in Blob konvertieren
	OBJECTTYPE rgType = OBJECTTYPE_Unknown;

		THROW_FAILED_HRESULT(pIObj -> get_Type (&rgType));
		switch (rgType) {
		case OBJECTTYPE_Point:	// Punktobjekte
			THROW_FAILED_HRESULT(CreateSABlobFromVertices(vX, vY, &vec, NULL, CLSID_TRiASCSPointGeometry, ppGeom));
			break;

		case OBJECTTYPE_Line:	// Linienobjekte
			THROW_FAILED_HRESULT(CreateSABlobFromVertices(vX, vY, &vec, NULL, CLSID_TRiASCSPolylineGeometry, ppGeom));
			break;

		case OBJECTTYPE_Area:	// Fl�chenobjekte
			{
				if (0 == Obj -> nParts || 1 == Obj -> nParts) {
				// nur eine Kontur
					THROW_FAILED_HRESULT(CreateSABlobFromVertices(vX, vY, &vec, NULL, CLSID_TRiASCSPolygonGeometry, ppGeom));
				
				} else {
				// Au�enkontur mit Inseln
				vector<void *> vBlobs;
				vector<unsigned long> vSizes;
				double_i itx = vX.begin();
				double_i ity = vY.begin();
				unsigned long ulCnt = Obj -> panPartStart[1];

					for (size_t iKnt = 0; iKnt < Obj -> nParts; iKnt++) {
					void *pBlob = NULL;
					unsigned long uiSize = 0L;

						if (iKnt != 0) {
							advance (itx, ulCnt);
							advance (ity, ulCnt);

							if (iKnt == Obj -> nParts -1)
								ulCnt = Obj -> nVertices - Obj -> panPartStart[iKnt];			// letztes Polygon
							else
								ulCnt = Obj -> panPartStart[iKnt+1] - Obj -> panPartStart[iKnt];
						}

						THROW_FAILED_HRESULT(CreateBlobFromVertices (ulCnt, itx, ity, &vec, NULL, CLSID_TRiASCSPolygonGeometry, &pBlob, &uiSize));
						vBlobs.push_back (pBlob);
						vSizes.push_back (uiSize);
					}
					_ASSERTE(vBlobs.size() == vSizes.size());

					THROW_FAILED_HRESULT(CreateSABlobBoundaryFromArray (vBlobs.size(), vBlobs.begin(), vSizes.begin(), ppGeom));

					for (size_t i = 0; i < Obj -> nParts; i++) 
						::CoTaskMemFree(vBlobs[i]);	// Speicher wieder freigeben
				}
			}
			break;

		case OBJECTTYPE_Unknown:	// unbekannter GeometrieTyp (MULTIPOINT etc.)
		case OBJECTTYPE_Text:		// Textobjekte
			_ASSERTE(rgType != OBJECTTYPE_Text && rgType != OBJECTTYPE_Unknown);	// Shape unterst�tzt keine Texte
			THROW_FAILED_HRESULT(TRIASHP_E_BADGEOMETRYTYPE);
			break;
		}

	} COM_CATCH;
	return S_OK;
}

STDMETHODIMP CTRiASHPGeoFeature::Update(ITRiASObject *pIObj, VARIANT Val)
{
#if defined(_READWRITE)
	USES_CONVERSION;
	COM_TRY {
	WTRiASDatabase Parent;
	WTRiASFeature BaseFeat;

		THROW_FAILED_HRESULT(m_BaseUnk -> QueryInterface (BaseFeat.ppi()));
		THROW_FAILED_HRESULT(FindSpecificParent(pIObj, Parent.ppi()));

	// Namen des Geometriefeldes abfragen
	CComBSTR bstrName;
	OBJECTTYPE rgType = OBJECTTYPE_Unknown;

		THROW_FAILED_HRESULT(pIObj -> get_Type(&rgType));
		THROW_FAILED_HRESULT(BaseFeat -> get_Name (CLEARED(&bstrName)));

		if (V_VT(&Val) == VT_DISPATCH) {
		// Geometrie liegt als _GMGeometry vor, in Blob konvertieren

		// Koordinaten und GeometrieRepr�sentation konvertieren
		WTRiASCSTransform CST (GetPropertyFrom (Parent, g_cbTRiASCSTransform, (IDispatch *)NULL), false);
		CComVariant vVal;

		// GeometrieGuid besorgen
	// BEGIN_SAMPLE_CODE
		CComBSTR bstrGuid (GetPropertyFrom (Parent, g_cbCSSGuid, CComBSTR(g_cbNil)));
		CIID Guid (bstrGuid, CIID::INITCIID_InitFromGuid);		// CSS-Guid
	// END_SAMPLE_CODE

			_ASSERTE(CST.IsValid());
			_ASSERTE(Guid != GUID_NULL);

		// Geometrie kopieren und entsprechend bearbeiten
		WDispatch disp;

			THROW_FAILED_HRESULT(WTRiASCloneGeometry(V_DISPATCH(&Val)) -> Clone (disp.ppi()));
			THROW_FAILED_HRESULT(WTRiASTransformGeometry(disp) -> TransformInverse (*(CSID *)&Guid, CST));
			if (OBJECTTYPE_Unknown == rgType) {
			// Geometrietyp wird hier festgelegt
			GEOMETRYTYPE rgGeoType = GEOMETRYTYPE_Unknown;

				THROW_FAILED_HRESULT(WTRiASCSGeometryProperties(disp) -> get_Type (&rgGeoType));
				rgType = GEOMETRYTYPEToOBJECTTYPE(rgGeoType);
				THROW_FAILED_HRESULT(pIObj -> put_Type (rgType));
				THROW_FAILED_HRESULT(g_pDBEngine -> GeometryToStorage(rgGeoType, disp, &vVal));
			} else {
				THROW_FAILED_HRESULT(g_pDBEngine -> GeometryToStorage(OBJECTTYPEToGEOMETRYTYPE(rgType), disp, &vVal));
			}

			_ASSERTE(OBJECTTYPE_Unknown != rgType);

		// vVal enth�lt fertig konvertierten Blob
		// jetzt am Objekt wegschreiben
#pragma TODO("Geometrieblob am Objekt in der Datenquelle wegschreiben.")
	// BEGIN_SAMPLE_CODE
			_ASSERTE(V_ISARRAY(&vVal));
			THROW_FAILED_HRESULT(SetGeometry (pIObj, OLE2A(bstrName), V_ARRAY(&vVal)));
	// END_SAMPLE_CODE

		} else 
			_com_issue_error(E_INVALIDARG);

	} COM_CATCH;
	return S_OK;
#else
	return TRIASDB_E_FEATURENOTUPDATABLE;
#endif // defined(_READWRITE)
}

#if defined(_READWRITE)
/////////////////////////////////////////////////////////////////////////////
// allgemeine Geometrieroutine, schreibt Geoemtrie aus eindimensionalem DoubleSafeArray
// ab, welches Wertetripel (X,Y,Z) bzw. (R,H,Z) enth�lt
HRESULT CTRiASHPGeoFeature::SetGeometry (
	ITRiASObject *pIObj, LPCSTR pcName, SAFEARRAY *pGeom)
{
	CHECKINPOINTER(pGeom);

	using namespace geometryblob;

	COM_TRY {
	double_v vX, vY;
	OBJECTTYPE rgType = OBJECTTYPE_Unknown;

		THROW_FAILED_HRESULT(pIObj -> get_Type (&rgType));
		switch (rgType) {
		case OBJECTTYPE_Point:
			{
			// Punktobjekte
				THROW_FAILED_HRESULT(CreateVerticesFromSABlob(pGeom, vX, vY, NULL, CLSID_TRiASCSPointGeometry));
				_ASSERTE(vX.size() == vY.size() && 1 == vX.size());

			// Punktgeometrie in der Datenbank wegschreiben
			//	THROW_FAILED_HRESULT(PutPointGeometry (pIObj, pcName, vX, vY));
			}
			break;

		case OBJECTTYPE_Line:
			{
			// Linienobjekte
				THROW_FAILED_HRESULT(CreateVerticesFromSABlob(pGeom, vX, vY, NULL, CLSID_TRiASCSPolylineGeometry));
				_ASSERTE(vX.size() == vY.size());

			// Liniengeometrie in der Datenbank wegschreiben
			//	THROW_FAILED_HRESULT(PutLineObject (pIObj, pcName, vX, vY));
			}
			break;

		case OBJECTTYPE_Area:
			{
			// Fl�chenobjekte
			vector<unsigned long> vKnt;

				if (!BlobHasBoundaryGeometry (pGeom)) {
					THROW_FAILED_HRESULT(CreateVerticesFromSABlob(pGeom, vX, vY, NULL, CLSID_TRiASCSPolygonGeometry));
					_ASSERTE(vX.size() == vY.size());

					vKnt.push_back(vX.size());		// Kantenl�nge setzen
				} else {
				vector<BYTE *> vBlobs;
				vector<unsigned long> vSizes;
				size_t j = 0;

					THROW_FAILED_HRESULT(CreateArrayFromSABlobBoundary (pGeom, vBlobs, vSizes));
					_ASSERTE(vBlobs.size() == vSizes.size());

					for (size_t iKnt = 0; iKnt < vSizes.size(); iKnt++) {
					size_t iKCnt = vX.size();

						THROW_FAILED_HRESULT(CreateVerticesFromBlob (vBlobs[iKnt], vX, vY, NULL, CLSID_TRiASCSPolygonGeometry));
						_ASSERTE(vX.size() == vY.size());

						iKCnt = vX.size() - iKCnt;
						vKnt.push_back(iKCnt);					// immer differenz zu vorheriger kante speichern

						::CoTaskMemFree(vBlobs[iKnt]);			// Speicher wieder freigeben
					}
				}

			// Fl�chengeometrie in der Datenbank wegschreiben
			//	THROW_FAILED_HRESULT(PutAreaObject (pIObj, pcName, vX, vY, vKnt));
			}
			break;

		case OBJECTTYPE_Text:
			{
			// Textobjekte
			CBlobService::TEXTBLOBDATA TBD;

				THROW_FAILED_HRESULT(CreateVerticesFromSABlob(pGeom, vX, vY, &TBD, CLSID_TRiASCSTextPointGeometry));
				_ASSERTE(vX.size() == vY.size() && 1 == vX.size());

			unsigned char PropertiesBytes[4] = {0, 0, 0, 0};
			os_string str;
			double dAngle = 0.0;

				_ASSERTE(sizeof(long) == sizeof(PropertiesBytes));
				*(long *)PropertiesBytes = TBD.lFlags;

			// Textgeometrie wegschreiben
			//	THROW_FAILED_HRESULT(PutTextObject (pIObj, pcName, vX, vY, PropertiesBytes, TBD.strText.c_str()));
			}
			break;

		default:
			return E_INVALIDARG;		// Komplexobjekte etc.
		}
	} COM_CATCH;
	return S_OK;
}
#endif // defined(_READWRITE)

// Kopie der Objekteigenschaft erzeugen
STDMETHODIMP CTRiASHPGeoFeature::Clone (ITRiASFeature **ppIFeat)
{
	return E_NOTIMPL;
}

// Objekt wird logisch freigegeben
STDMETHODIMP CTRiASHPGeoFeature::OnFinalRelease()
{
	COM_TRY {
	// unsere Nummer (Cursor) freigeben und damit dieses Objekt aus der Handlemap herausl�schen
		THROW_FAILED_HRESULT(DelPropertyBy (WDispatch(m_BaseUnk), g_cbFeatureCursor));
	} COM_CATCH;
	return S_OK;
}

///////////////////////////////////////////////////////////////////////////////
// ITRiASSearchObjects
HRESULT CTRiASHPGeoFeature::ConsiderSearch (
	BSTR bstrCommand, SAFEARRAY *pParams)
{
	if (!wcscmp (SEARCHCOMMAND_IntersectsWindow, bstrCommand))
		return S_OK;
	return TRIASDB_S_SEARCH_NOT_SUPPORTED;	// hier wird lediglich die Geometrierecherche unterst�tzt
}

namespace {
	HRESULT RetrieveSearchParams (
		ITRiASCSTransform *pICST, SAFEARRAY *pParams, REFCLSID rClsId, double dWindow[4], BOOL *pfExact)
	{
		COM_TRY {
		CSafeArray sa(VT_VARIANT);

			if (NULL == pParams || !sa.Attach (pParams, true)) 
				return E_INVALIDARG;

		CSafeArrayLock<VARIANT> lock(sa);
		WDispatch clonedRect;

		// erster Wert im SafeArray enth�lt Suchrechteck
			{
			// Das �bergebene Suchrechteck darf nicht ver�ndert werden !!
			CComVariant vRect;
		
				if (FAILED(vRect.ChangeType (VT_DISPATCH, &lock[0])))
					_com_issue_error(E_INVALIDARG);

				THROW_FAILED_HRESULT(WTRiASCloneGeometry(V_DISPATCH(&vRect)) -> Clone (clonedRect.ppi()));
			}

		WTRiASSimpleRectangle rect (clonedRect);

			_ASSERTE(rect.IsValid());
			THROW_FAILED_HRESULT(WTRiASTransformGeometry(rect) -> TransformInverse (*(CSID *)&rClsId, pICST));
			if (FAILED(rect -> GetRect(&dWindow[0], &dWindow[1], &dWindow[2], &dWindow[3])))
			{
				_com_issue_error(E_UNEXPECTED);
			}

		// zweiter Wert im SafeArray enth�lt evtl. Flag, ob exakt gesucht werden soll oder
		// lediglich auf der Grundlage der umschreibenden Rechtecke der Objekte
		CComVariant vExact;

			if (lock.Size() > 1 && SUCCEEDED(vExact.ChangeType (VT_BOOL, &lock[2]))) 
				*pfExact = V_BOOL(&vExact) ? TRUE : FALSE;
			else
				*pfExact = FALSE;

		} COM_CATCH;
		return S_OK;
	}
} // namespace

/* static */
HRESULT CALLBACK CTRiASHPGeoFeature::FindObjectCallBack (SHPObject *pObject, UINT_PTR dwData)
{
CFindObjectData *pData = reinterpret_cast<CFindObjectData *>(dwData);
WTRiASObject Obj;

	_ASSERTE(NULL != pData);
	if (S_OK == pData -> m_Map -> GetObject (pObject -> nShapeId+1, Obj.ppu()))
	{
		RETURN_FAILED_HRESULT(pData -> m_Objs -> _Add(Obj, VARIANT_FALSE))
	}
	return S_OK;
}

HRESULT CTRiASHPGeoFeature::SearchObjects (BSTR bstrCommand, ITRiASObjects *pIObjs, SAFEARRAY *pParams)
{
	if (wcscmp (SEARCHCOMMAND_IntersectsWindow, bstrCommand))
		return TRIASDB_S_SEARCH_NOT_SUPPORTED;		// not supported search

	USES_CONVERSION;
	COM_TRY {
	// hier ben�tigte InterfacePointer besorgen
	WTRiASObjects BaseObjs;
	WTRiASDatabase Parent;

		THROW_FAILED_HRESULT(FindSpecificParent(m_BaseUnk, BaseObjs.ppi()));
		THROW_FAILED_HRESULT(FindSpecificParent(BaseObjs, Parent.ppi()));

	WTRiASCSTransform CST (GetPropertyFrom (Parent, g_cbTRiASCSTransform, (IDispatch *)NULL), false);

	// GeometrieGuid besorgen
	CComBSTR bstrGuid (GetPropertyFrom (Parent, g_cbCSSGuid, CComBSTR(g_cbNil)));
	CIID Guid (bstrGuid, CIID::INITCIID_InitFromGuid);		// CSS-Guid

		_ASSERTE(CST.IsValid());
		_ASSERTE(!!Guid);

	// Parameter f�r die Geometrierecherche aus ParameterFeld herausholen
	double dWindow[4];		// �bergebenes Suchfenster
	BOOL fExact = FALSE;	// Mode der Suche

		THROW_FAILED_HRESULT(RetrieveSearchParams (CST, pParams, Guid, dWindow, &fExact));

	// Namen des Geometriefeldes besorgen
	WTRiASFeature BaseFeat;
	CComBSTR bstrFeatName;

		THROW_FAILED_HRESULT(m_BaseUnk -> QueryInterface(BaseFeat.ppi()));
		THROW_FAILED_HRESULT(BaseFeat -> get_Name (CLEARED(&bstrFeatName)));

	// eigentliche Geometrierecherche durchf�hren
	WTRiASObjects Objs (pIObjs);
	WTRiASObjectHandleMap Map (GetPropertyFrom (BaseObjs, g_cbObjectMap, (IDispatch *)NULL), false);
	CFindObjectData FindObjectData;

		FindObjectData.m_Map = Map;
		FindObjectData.m_Objs = Objs;

		_ASSERTE(Map.IsValid());
		THROW_FAILED_HRESULT(EnsureShapeGeometryTree());
		THROW_FAILED_HRESULT(m_pTree -> SearchObjects(dWindow, FindObjectCallBack, (UINT_PTR)&FindObjectData, fExact));

	} COM_CATCH;
	return S_OK;
}

// Begrenzen der Ausgabeobjektmenge (hier nicht ben�tigt)
STDMETHODIMP CTRiASHPGeoFeature::ConstraintObjects (ITRiASObjects *pObjs)
{
	_ASSERTE(SUCCEEDED(E_NOTIMPL));		// never called in this context
	return E_NOTIMPL;
}

// Implementation of EnsureShapeGeometryTree
HRESULT CTRiASHPGeoFeature::EnsureShapeGeometryTree()
{
	COM_TRY {
		if (NULL == m_pTree) {
		WTRiASFeature BaseFeat;

			THROW_FAILED_HRESULT(m_BaseUnk -> QueryInterface (BaseFeat.ppi()));

		SHPHandle hSHP = reinterpret_cast<SHPHandle>(GetPropertyFrom (BaseFeat, g_cbFeatureCursor, 0L));

			_ASSERTE(NULL != hSHP);
			m_pTree = new CShapeGeometryTree;					// Baum erzeugen ...
			THROW_FAILED_HRESULT(m_pTree ->CreateTree(hSHP));	// ... und f�llen
		}
	} COM_CATCH;
	return S_OK;
}


