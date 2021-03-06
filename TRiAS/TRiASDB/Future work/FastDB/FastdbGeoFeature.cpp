// $Header: $
// Copyright� 1998-2000 TRiAS GmbH Potsdam, All rights reserved
// Created: 25.02.2000 11:15:18 
//
// This file was generated by the TRiASDB Data Server Wizard V1.01.076 (#HK000225)
//
// @doc
// @module FastdbGeoFeature.cpp | Implementation of the <c CFastdbGeoFeature> class

#include "stdafx.h"

#include <Com/SafeArray.h>
#include <CSRectGeom.h>

#include "Strings.h"

#include "Fastdb.h"
#include "FastdbDBEngine.h"
#include "FastdbDatabase.h"
#include "FastdbGeoFeature.h"

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
DefineSmartInterface2(_DGMRectangleGeometry, IID__DGMRectangleGeometry);		// W_DGMRectangleGeometry

DefineSmartInterface(TRiASDatabase);			// WTRiASDatabase

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
// CFastdbGeoFeature

STDMETHODIMP CFastdbGeoFeature::InterfaceSupportsErrorInfo(REFIID riid)
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
STDMETHODIMP CFastdbGeoFeature::get_DefaultType (BSTR *pbstrType)
{
	CHECKOUTPOINTER(pbstrType);

CIID Guid (GetObjectCLSID());
CComBSTR bstrType (Guid.ProgID().c_str());

	*pbstrType = bstrType.Detach();
	return S_OK;
}

STDMETHODIMP CFastdbGeoFeature::SetupFeature (SETUPFEATUREMODE rgMode)
{
	return S_OK;
}

STDMETHODIMP CFastdbGeoFeature::OnChanging(CHANGEDFEATURE rgWhat, VARIANT vNewValue, VARIANT_BOOL *pDisAllow)
{
	CHECKOUTPOINTER(pDisAllow);

	*pDisAllow = VARIANT_FALSE;		// immer einverstanden sein
	return S_OK;
}

STDMETHODIMP CFastdbGeoFeature::OnChanged(CHANGEDFEATURE rgWhat, VARIANT vOldValue)
{
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
}

HRESULT CFastdbGeoFeature::OnChangedName()
{
// neuen Namen vom Bezugsobjekt besorgen
CComBSTR bstrName;
WTRiASFeature BaseFeat;

	RETURN_FAILED_HRESULT(m_BaseUnk -> QueryInterface (BaseFeat.ppi()));
	RETURN_FAILED_HRESULT(BaseFeat -> get_Name(CLEARED(&bstrName)))

#pragma TODO("Neue Name der Objekteigenschaft ggf. auswerten.")
	return S_OK;
}

HRESULT CFastdbGeoFeature::OnChangedDescription()
{
// neue Beschreibung vom Bezugsobjekt besorgen
CComBSTR bstrName;
WTRiASFeature BaseFeat;

	RETURN_FAILED_HRESULT(m_BaseUnk -> QueryInterface (BaseFeat.ppi()));
	RETURN_FAILED_HRESULT(BaseFeat -> get_Name(CLEARED(&bstrName)))

#pragma TODO("Neue Beschreibung der Objekteigenschaft ggf. auswerten.")
	return S_OK;
}

HRESULT CFastdbGeoFeature::OnChangedHandle()
{
	return S_OK;
}

HRESULT CFastdbGeoFeature::OnChangedType()
{
// neuen Typ vom Bezugsobjekt besorgen
FEATURETYPE rgType = FEATURETYPE_Unknown;
WTRiASFeature BaseFeat;

	RETURN_FAILED_HRESULT(m_BaseUnk -> QueryInterface (BaseFeat.ppi()));
	RETURN_FAILED_HRESULT(BaseFeat -> get_Type(&rgType))

#pragma TODO("Neuen Typ der Objekteigenschaft ggf. auswerten.")
	return S_OK;
}

HRESULT CFastdbGeoFeature::OnChangedROMode()
{
// neuen Schreibschutzmode vom Bezugsobjekt besorgen
VARIANT_BOOL fUpdatable = VARIANT_FALSE;
WTRiASFeature BaseFeat;

	RETURN_FAILED_HRESULT(m_BaseUnk -> QueryInterface (BaseFeat.ppi()));
	RETURN_FAILED_HRESULT(BaseFeat -> get_Updatable(&fUpdatable))

#pragma TODO("Neuen Schreibschutzmode der Objekteigenschaft ggf. auswerten.")
	return S_OK;
}

/////////////////////////////////////////////////////////////////////////////
// Eval: Das, worum es eigentlich geht ...
STDMETHODIMP CFastdbGeoFeature::Eval(ITRiASObject *pIObj, VARIANT *pVal)
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

STDMETHODIMP CFastdbGeoFeature::EvalEx(ITRiASObject *pIObj, SAFEARRAY **ppConstraints, VARIANT *pVal)
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
			THROW_FAILED_HRESULT(hr = GetGeometry (pIObj, &psaResult, fHasWindow ? dWindow : NULL, dCont));
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
			THROW_FAILED_HRESULT(hr = GetGeometry (pIObj, &psaResult));
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
HRESULT CFastdbGeoFeature::GetGeometry (
	ITRiASObject *pIObj, SAFEARRAY **ppGeom, const double *pdWindow, double *pdCont)
{
	CHECKOUTPOINTER(ppGeom);

	COM_TRY {
	LONG lCursor = GetPropertyFrom (pIObj, g_cbObjectCursor, 0L);

		_ASSERTE(0 != lCursor);

	// Objektdaten zuordnen und Attribut wiederfinden
	dbCursor<CDBObject> object (GetRelatedDatabase(GetUnknown()), dbCursorForUpdate);
	CDBObject *pObject = object.at (dbReference<CDBObject>(oid_t(lCursor)));

		if (NULL == pObject || object.isEmpty())
			THROW_FAILED_HRESULT(FASTDB_E_OBJECT_BADREFERENCE);

	// SAFEARRAY anlegen und Daten �bernehmen
	CSafeArray sa (VT_UI1, object -> m_Geometry.length()*sizeof(byte));

		if (!sa) _com_issue_error(E_OUTOFMEMORY);
		{
		CSafeArrayLock<byte> lock (sa);

			memcpy (lock, object -> m_Geometry.get(), object -> m_Geometry.length()*sizeof(byte));
		}
		*ppGeom = sa.Detach();		// Ergebnis liefern
		if (NULL != pdCont)
			*(CDBObject::CONTAINER *)pdCont = object -> m_Container;

	} COM_CATCH;
	return S_OK;
}

STDMETHODIMP CFastdbGeoFeature::Update(ITRiASObject *pIObj, VARIANT Val)
{
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
		// Geometrie liegt als TRiASGeometry vor, in Blob konvertieren

		// Koordinaten und GeometrieRepr�sentation konvertieren
		WTRiASCSTransform CST (GetPropertyFrom (Parent, g_cbTRiASCSTransform, (IDispatch *)NULL), false);
		CComVariant vVal;

		// GeometrieGuid besorgen
		CComBSTR bstrGuid (GetPropertyFrom (Parent, g_cbCSSGuid, CComBSTR(g_cbNil)));
		CIID Guid (bstrGuid, CIID::INITCIID_InitFromGuid);		// CSS-Guid

			_ASSERTE(CST.IsValid());
			_ASSERTE(Guid != GUID_NULL);

		// Geometrie kopieren und entsprechend bearbeiten
		WDispatch disp;

			THROW_FAILED_HRESULT(WTRiASCloneGeometry(V_DISPATCH(&Val)) -> Clone (disp.ppi()));
			THROW_FAILED_HRESULT(WTRiASTransformGeometry(disp) -> TransformInverse (*(CSID *)&Guid, CST));

		WTRiASCSGeometryProperties geoprops(disp);
		WTRiASSimpleRectangle Rect;

			THROW_FAILED_HRESULT(geoprops -> get_Envelope (Rect.ppi()));

			if (OBJECTTYPE_Unknown == rgType) {
			// Geometrietyp wird hier festgelegt
			GEOMETRYTYPE rgGeoType = GEOMETRYTYPE_Unknown;

				THROW_FAILED_HRESULT(geoprops -> get_Type (&rgGeoType));
				rgType = GEOMETRYTYPEToOBJECTTYPE(rgGeoType);
				THROW_FAILED_HRESULT(pIObj -> put_Type (rgType));
				THROW_FAILED_HRESULT(g_pDBEngine -> GeometryToStorage(rgGeoType, disp, &vVal));
			} else {
				THROW_FAILED_HRESULT(g_pDBEngine -> GeometryToStorage(OBJECTTYPEToGEOMETRYTYPE(rgType), disp, &vVal));
			}

			_ASSERTE(OBJECTTYPE_Unknown != rgType);

		// vVal enth�lt fertig konvertierten Blob, jetzt am Objekt wegschreiben
			_ASSERTE(V_ISARRAY(&vVal));
			THROW_FAILED_HRESULT(SetGeometry (pIObj, OLE2A(bstrName), V_ARRAY(&vVal), WTRiASSimpleRectangle(Rect)));

		} else 
			_com_issue_error(E_INVALIDARG);

	} COM_CATCH;
	return S_OK;
}

/////////////////////////////////////////////////////////////////////////////
// allgemeine Geometrieroutine, schreibt Geoemtrie aus eindimensionalem DoubleSafeArray
// ab, welches Wertetripel (X,Y,Z) bzw. (R,H,Z) enth�lt
HRESULT CFastdbGeoFeature::SetGeometry (
	ITRiASObject *pIObj, LPCSTR pcName, SAFEARRAY *pGeom, ITRiASSimpleRectangle *pIRect)
{
	CHECKINPOINTER(pGeom);
	COM_TRY {
	LONG lCursor = GetPropertyFrom (pIObj, g_cbObjectCursor, 0L);

		_ASSERTE(0 != lCursor);

	dbDatabase *pdb = GetRelatedDatabase(GetUnknown());

	// Objektdaten zuordnen und Attribut wiederfinden
		{
		dbCursor<CDBObject> object (pdb, dbCursorForUpdate);
		CDBObject *pObject = object.at (dbReference<CDBObject>(oid_t(lCursor)));

			if (NULL == pObject || object.isEmpty())
				THROW_FAILED_HRESULT(FASTDB_E_OBJECT_BADREFERENCE);

		CSafeArray sa (VT_UI1);

			if (!sa.Attach (pGeom, true))
				return E_UNEXPECTED;

		// neue Geometrie als Blob direkt in die Datenbank schreiben
			{
			CSafeArrayLock<byte> lock (sa);

				object -> m_Geometry.assign (lock, lock.Size()*sizeof(byte));
			}

		// container besorgen
		CDBObject::CONTAINER cont;

			THROW_FAILED_HRESULT(pIRect -> GetRect(&cont.m_dXMin, &cont.m_dYMin, &cont.m_dXMax, &cont.m_dYMax));
			object -> m_Container = cont;

			object.update();
		}	// cursor goes out of scope

	// Datenbankcontainer aktualisieren
		{
		bool fExists = false;

			USES_CONVERSION;
			{
			dbCursor<CDBHeader> cursor (pdb, dbCursorForUpdate);
			dbQuery q;

				q = "KEY=", OLE2A(g_cbDatabaseEnvelope);
				if (cursor.select(q) == 1) {
				CComVariant v;

					cursor -> GetValue (&v);
					if (SUCCEEDED(v.ChangeType (VT_DISPATCH))) {
					CCSRectangleGeometry rect (V_DISPATCH(&v));

						rect = rect + CCSRectangleGeometry(pIRect);
						cursor -> SetValue (CComVariant(rect));
						cursor.update();
						fExists = true;
					}
				} 
			}	// cursor goes out of scope

		// neuen Satz erzeugen
			if (!fExists) {
			CDBHeader Hdr;

				Hdr.m_pKey = OLE2A(g_cbDatabaseEnvelope);
				Hdr.SetValue (CComVariant(pIRect));
				Hdr.m_rgType = PROPERTY_TYPE_System;
				pdb -> insert (Hdr);
			}
		}

	} COM_CATCH;
	return S_OK;
}

// Kopie der Objekteigenschaft erzeugen
STDMETHODIMP CFastdbGeoFeature::Clone (ITRiASFeature **ppIFeat)
{
	return E_NOTIMPL;
}

// Objekt wird logisch freigegeben
STDMETHODIMP CFastdbGeoFeature::OnFinalRelease()
{
	return S_OK;
}

///////////////////////////////////////////////////////////////////////////////
// ITRiASSearchObjects
HRESULT CFastdbGeoFeature::ConsiderSearch (
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
			if (FAILED(rect -> GetRect(&dWindow[0], &dWindow[2], &dWindow[1], &dWindow[3])))
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

HRESULT CFastdbGeoFeature::SearchObjects (BSTR bstrCommand, ITRiASObjects *pIObjs, SAFEARRAY *pParams)
{
	if (wcscmp (SEARCHCOMMAND_IntersectsWindow, bstrCommand))
		return TRIASDB_S_SEARCH_NOT_SUPPORTED;		// not supported search

	USES_CONVERSION;
	COM_TRY {
	// hier ben�tigte InterfacePointer besorgen
	WTRiASDatabase Parent;

		THROW_FAILED_HRESULT(FindSpecificParent(m_BaseUnk, Parent.ppi()));

	WTRiASCSTransform CST (GetPropertyFrom (Parent, g_cbTRiASCSTransform, (IDispatch *)NULL), false);

	// GeometrieGuid besorgen
	// EMIT_SAMPLE_CODE
	CComBSTR bstrGuid (GetPropertyFrom (Parent, g_cbCSSGuid, CComBSTR(g_cbNil)));
	CIID Guid (bstrGuid, CIID::INITCIID_InitFromGuid);		// CSS-Guid
	// END_SAMPLE_DATA

		_ASSERTE(CST.IsValid());
		_ASSERTE(Guid != GUID_NULL);

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
#pragma TODO("S�mtliche Objekte entsprechend Recherchekriterium suchen (und finden).")

	// EMIT_SAMPLE_CODE
	// END_SAMPLE_DATA

	} COM_CATCH;
	return S_OK;
}

// Begrenzen der Ausgabeobjektmenge (hier nicht ben�tigt)
STDMETHODIMP CFastdbGeoFeature::ConstraintObjects (ITRiASObjects *pObjs)
{
	_ASSERTE(SUCCEEDED(E_NOTIMPL));		// never called in this context
	return E_NOTIMPL;
}

