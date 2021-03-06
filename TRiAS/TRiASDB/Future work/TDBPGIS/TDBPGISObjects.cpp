// $Header: $
// Copyright� 1998-2002 GEOPunkt GmbH & Co. KG, NL Potsdam, All rights reserved
// Created: 25.02.2002 16:45:45 
//
// This file was generated by the TRiASDB Data Server Wizard V1.02.117 (#HK010502)
//
// THIS CODE AND INFORMATION IS PROVIDED "AS IS" WITHOUT WARRANTY OF ANY 
// KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
// IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS FOR A PARTICULAR 
// PURPOSE.
//
// @doc
// @module TDBPGISObjects.cpp | Implementation of the <c CTDBPGISObjects> class

#include "stdafx.h"

#include "Strings.h"

#include "TDBPGIS.h"
#include "TDBPGISObjects.h"
// BEGIN_SAMPLE_CODE
#include "TDBPGISPropertySupport.h"
// END_SAMPLE_CODE

#if defined(_DEBUG)
#if defined(_MFC_VER)
#define new DEBUG_NEW
#endif // defined(_MFC_VER)
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif // _DEBUG

///////////////////////////////////////////////////////////////////////////////
// CTDBPGISObjects

STDMETHODIMP CTDBPGISObjects::InterfaceSupportsErrorInfo(REFIID riid)
{
	static const IID* arr[] = 
	{
		&IID_ITRiASObjects,
	};
	for (int i=0;i<sizeof(arr)/sizeof(arr[0]);i++)
	{
		if (InlineIsEqualGUID(*arr[i],riid))
			return S_OK;
	}
	return S_FALSE;
}

///////////////////////////////////////////////////////////////////////////////
// ITRiASObjectsCallback

STDMETHODIMP CTDBPGISObjects::get_DefaultType (BSTR *pbstrType)
{
	CHECKOUTPOINTER(pbstrType);

CIID Guid (CLSID_TDBPGISObject);		// DefaultType der _Elemente_ (hier: Object)!
CComBSTR bstrType (Guid.ProgID().c_str());

	*pbstrType = bstrType.Detach();
	return S_OK;
}

/////////////////////////////////////////////////////////////////////////////
// Erstmalige Initialisierung
STDMETHODIMP CTDBPGISObjects::SetupObjects(SETUPOBJECTSMODE rgMode)
{
HRESULT hr = E_INVALIDARG;

	switch (rgMode) {
	case SETUPOBJECTSMODE_Count:
		hr = EnsureObjectsCount();
		_ASSERTE(HasType (m_rgInitState, INITSTATE_CountsInitialized));
		break;

	case SETUPOBJECTSMODE_Load:
		ERROR_EXPR_TRUE(!m_fIsInitialized, E_UNEXPECTED);
		hr =  EnsureObjectsLoaded();
		_ASSERTE(HasType (m_rgInitState, INITSTATE_ObjectsInitialized));
		break;

	case SETUPOBJECTSMODE_InitOrLoad:	// wird w�hrend der Initialisierung gerufen
	// BEGIN_SAMPLE_CODE
		COM_TRY {
		// Properties zum aggregierten Objekt hinzuf�gen
		WTRiASPropertyMapHandler MapHandler(m_BaseUnk);

			THROW_FAILED_HRESULT(MapHandler -> AddMapEntry (
				CComBSTR(g_cbObjectsCursor), (INT_PTR)&CLSID_TDBPGISCursorProperty, PROPERTYSUPPORT_NOFLAGS, vtMissing));

		} COM_CATCH;
	// END_SAMPLE_CODE
		m_fIsDirty = false;
		m_fIsInitialized = true;
		hr = S_OK;
		break;

	default:
		_ASSERTE(SETUPOBJECTSMODE_Count == rgMode || SETUPOBJECTSMODE_Load == rgMode || SETUPOBJECTSMODE_InitOrLoad == rgMode);
		break;
	}
	return hr;
}

HRESULT CTDBPGISObjects::EnsureObjectsCount()
{
	if (HasType (m_rgInitState, INITSTATE_CountsInitialized))
		return S_OK;		// wurden bereits geladen

#pragma TODO("S�mtliche Objekte dieser Objektklasse z�hlen und Typen feststellen.")

	COM_TRY {
	WTRiASObjects BaseObjs;
	long lObjCount = 0;
	OBJECTTYPE rgTypes = OBJECTTYPE_Unknown;

		THROW_FAILED_HRESULT(m_BaseUnk -> QueryInterface (BaseObjs.ppi()));

	// BEGIN_SAMPLEDATA
		using namespace sample_data;

	LONG lCursor (GetPropertyFrom (BaseObjs, g_cbObjectsCursor, -1L));

		_ASSERTE(0 < lCursor);
		lObjCount = g_ObjectClasses[lCursor-1] -> m_iObjectCount;
		rgTypes = g_ObjectClasses[lCursor-1] -> m_rgTypes;
	// END_SAMPLE_DATA

	// Ergebnis der schwei�treibenden Arbeit dem aggregierten Objekt mitteilen
		THROW_FAILED_HRESULT(BaseObjs -> put_Count (lObjCount));		// Basisklasse informieren
		THROW_FAILED_HRESULT(BaseObjs -> put_Types (rgTypes));

	// Z�hler sind jetzt initialisiert
		SetType (m_rgInitState, INITSTATE_CountsInitialized);

	} COM_CATCH;
	return S_OK;
}

HRESULT CTDBPGISObjects::EnsureObjectsLoaded()
{
	if (HasType (m_rgInitState, INITSTATE_ObjectsInitialized))
		return S_OK;		// wurden bereits geladen

#pragma TODO("S�mtliche Objekte dieser Objektklasse instantiieren und zum aggregierten Objekt hinzuf�gen.")

	COM_TRY {
	WTRiASObjects BaseObjs;
	
		THROW_FAILED_HRESULT(m_BaseUnk -> QueryInterface (BaseObjs.ppi()));

	// BEGIN_SAMPLEDATA
		using namespace sample_data;

	LONG lCursor (GetPropertyFrom (BaseObjs, g_cbObjectsCursor, -1L));

		_ASSERTE(0 < lCursor);

	// alle Objekte durchgehen und instantiieren
	const OBJECTCLASS *pClass = g_ObjectClasses[lCursor-1];
	WDispatch App;

		THROW_FAILED_HRESULT(BaseObjs -> get_Application (App.ppi()));
		for (int i = 0; i < pClass -> m_iObjectCount; i++) {
		int iObject = pClass -> m_pObjects[i];

			_ASSERTE(0 <= iObject && iObject < g_iObjectCount);

		const OBJECT *pObject = g_Objects[iObject];
		WTRiASObject Obj (CLSID_TDBPGISObject);

		// fertig initialisieren
			THROW_FAILED_HRESULT(WPersistStreamInit(Obj) -> InitNew());
			THROW_FAILED_HRESULT(Obj -> put_Application(App));
			THROW_FAILED_HRESULT(Obj -> put_Parent(BaseObjs));

		// Typ etc. setzen
			THROW_FAILED_HRESULT(Obj -> put_Type (pObject -> m_rgType));
			THROW_FAILED_HRESULT(Obj -> put_Name (CComBSTR(pObject -> m_pcoleGuid)));

		// an dem erzeugten Objekt unsere Nummer (cursor) speichern
			THROW_FAILED_HRESULT(SetPropertyBy (Obj, g_cbObjectCursor, CComVariant(iObject+1), true));

		// das neu instantiierte Objekt zu dieser Objektklasse hinzuf�gen
			THROW_FAILED_HRESULT(BaseObjs -> _Add (Obj, VARIANT_TRUE));
		}
	// END_SAMPLE_DATA
	// Objekte sind jetzt initialisiert
		SetType (m_rgInitState, INITSTATE_ObjectsInitialized);

	// Features initialisieren
		THROW_FAILED_HRESULT(SetupFeatures (SETUPFEATURESMODE_Force));

	} COM_CATCH;
	return S_OK;
}

STDMETHODIMP CTDBPGISObjects::SetupFeatures(SETUPFEATURESMODE rgMode)
{
	ERROR_EXPR_TRUE(!m_fIsInitialized, E_UNEXPECTED);

// unterst�tzte Attribute mit Objektmenge assoziieren
	if (!m_fHasFeatures || (rgMode & SETUPFEATURESMODE_Force)) {
		COM_TRY {
		WTRiASFeatures Feats (CLSID_TDBPGISFeatures);

			THROW_FAILED_HRESULT(WTRiASObjects(m_BaseUnk) -> put_Features (Feats))
			THROW_FAILED_HRESULT(Feats -> Refresh());	// ruft CTDBPGISFeatures::SetupFeatures()
			m_fHasFeatures = true;

		} COM_CATCH;
	}

// existierende Geometrien mit dieser Objektklasse assoziieren
	if (!m_fHasGeoFeatures || (rgMode & SETUPFEATURESMODE_Force)) {
		COM_TRY {
		WTRiASFeatures GeoFeats (CLSID_TDBPGISGeoFeatures);

			THROW_FAILED_HRESULT(WTRiASObjects(m_BaseUnk) -> put_GeometryFeatures (GeoFeats))
			THROW_FAILED_HRESULT(GeoFeats -> Refresh());	// ruft CTDBPGISGeoFeatures::SetupFeatures()
			m_fHasGeoFeatures = true;

		} COM_CATCH;
	}
	return S_OK;
}

/////////////////////////////////////////////////////////////////////////////
// Ein neues Objekt soll erzeugt werden
STDMETHODIMP CTDBPGISObjects::OnCreate (BSTR Name, BSTR Type, OBJECTTYPE rgType, ITRiASObject **ppIObj)
{
	CHECKOUTPOINTER(ppIObj);
#if defined(_READWRITE)
	COM_TRY {
	// jetzt wirklich erzeugen
	CIID ClsId (Type, CIID::INITCIID_InitFromProgId);

		if (!ClsId)	ClsId = CLSID_TDBPGISObject;	// default ClsId
	
	WTRiASObject Obj (ClsId);

#pragma TODO("Neues Objekt entsprechend Typ (rgType) initialisieren.")

		THROW_FAILED_HRESULT(Obj -> put_Name(Name));

	// wenn Feature bereits zu dieser Attributmenge geh�rt, dann liefert _Add den Wert S_FALSE
		THROW_FAILED_HRESULT(WTRiASObjects(m_BaseUnk) -> _Add (Obj, VARIANT_TRUE));
		*ppIObj = Obj.detach();

	} COM_CATCH;
	return S_OK;
#else
	return TRIASDB_E_OBJECTSNOTUPDATABLE;
#endif // defined(_READWRITE)
}

/////////////////////////////////////////////////////////////////////////////
// Irgend was wurde modifiziert
STDMETHODIMP CTDBPGISObjects::OnChanging(CHANGEDOBJECTS rgWhat, VARIANT vNewValue, VARIANT_BOOL *pDisAllow)
{
	CHECKOUTPOINTER(pDisAllow);

#if defined(_READWRITE)
	*pDisAllow = VARIANT_FALSE;		// immer einverstanden sein
	return S_OK;
#else
	*pDisAllow = VARIANT_TRUE;		// nie einverstanden sein
	return TRIASDB_E_DATABASENOTUPDATABLE;
#endif // defined(_READWRITE)
}

/////////////////////////////////////////////////////////////////////////////
// Irgend was wurde modifiziert
STDMETHODIMP CTDBPGISObjects::OnChanged(CHANGEDOBJECTS rgWhat, VARIANT vOldValue)
{
#if defined(_READWRITE)
	switch(rgWhat) {
	case CHANGEDOBJECTS_Name:
		return OnChangedName(vOldValue);

	case CHANGEDOBJECTS_Description:
		return OnChangedDescription(vOldValue);

	case CHANGEDOBJECTS_OKS:
		return OnChangedOKS(vOldValue);

	case CHANGEDOBJECTS_Handle:
		return OnChangedHandle(vOldValue);

	case CHANGEDOBJECTS_Types:
		return OnChangedTypes(vOldValue);

	case CHANGEDOBJECTS_ROMode:
		return OnChangedROMode(vOldValue);

	default:
		break;
	}
	return E_INVALIDARG;
#else
	return TRIASDB_E_DATABASENOTUPDATABLE;
#endif // defined(_READWRITE)
}

/////////////////////////////////////////////////////////////////////////////
// Ein Objekt soll gel�scht werden
STDMETHODIMP CTDBPGISObjects::OnDelete (INT_PTR hObj)
{
#if defined(_READWRITE)
#pragma TODO("Gegebenenfalls Objekt aus Datenquelle l�schen.")

	// S_OK:	Objekt wurde gel�scht
	// S_FALSE: das Objekt soll sich selbst l�schen (geschieht nicht hier)
	// ansonsten Fehlercode
	return S_FALSE;
#else
	return TRIASDB_E_OBJECTSNOTUPDATABLE;
#endif // defined(_READWRITE)
}

/////////////////////////////////////////////////////////////////////////////
// Ein Objekt soll zu dieser Objektmenge hinzugef�gt werden
STDMETHODIMP CTDBPGISObjects::OnAdd (ITRiASObject *pIObj, CLASSIFYMODE rgMode)
{
	if (CLASSIFYMODE_DoNotClassify == rgMode)
		return S_OK;	// nicht umklassifizieren/Rekursion verhindern

#if defined(_READWRITE)
#pragma TODO("Objekt zu dieser Objektklasse hinzuf�gen und evtl. aus alter Objektklasse entfernen (s. OnRemove).")

	// S_OK:	  erfolgreich dieser Objektklasse zugeordnet
	// E_NOTIMPL: Objekt mu� in neue Objektklasse umkopiert werden (geschieht nicht hier)
	return S_OK;
#else
	return TRIASDB_E_OBJECTSNOTUPDATABLE;
#endif // defined(_READWRITE)
}

// Ein Objekt soll aus dieser Objektmenge entfernt werden
STDMETHODIMP CTDBPGISObjects::OnRemove (ITRiASObject *pIObj)
{
#if defined(_READWRITE)
#pragma TODO("Gegebenenfalls Objekt aus dieser Objektklasse entfernen (s. OnAdd).")

	// S_OK:	erfolgreich entfernt
	// S_FALSE:	wird in 'OnAdd' der neuen Objektklasse zugeordnet und aus alter Objektklasse entfernt
	// ansonsten Fehlercode
	return S_FALSE;
#else
	return TRIASDB_E_OBJECTSNOTUPDATABLE;
#endif // defined(_READWRITE)
}

// Eine Zugriffsnummer eines Attributes kann an dieser Stelle auf ein konkretes
// Attribut dieser Objektklasse gemappt werden
STDMETHODIMP CTDBPGISObjects::MapFeatureHandle (VARIANT vNameOrHandle, VARIANT *pvNewNameOrHandle)
{
	// default: nicht ver�ndern
	return CComVariant(vNameOrHandle).Detach (pvNewNameOrHandle);
}

// Objekt wird logisch freigegeben
STDMETHODIMP CTDBPGISObjects::OnFinalRelease()
{
// BEGIN_SAMPLE_CODE
	COM_TRY {
	// unsere Nummer (Cursor) freigeben und damit dieses Objekt aus der Handlemap herausl�schen
		THROW_FAILED_HRESULT(DelPropertyBy (WDispatch(m_BaseUnk), g_cbObjectsCursor));
	} COM_CATCH;
// END_SAMPLE_CODE
	return S_OK;
}

#if defined(_READWRITE)
/////////////////////////////////////////////////////////////////////////////
// Helperfunktionen
HRESULT CTDBPGISObjects::OnChangedName(VARIANT vOldValue)
{
// neuen Namen vom Bezugsobjekt besorgen
CComBSTR bstrName;
WTRiASObjects BaseObjs;

	RETURN_FAILED_HRESULT(m_BaseUnk -> QueryInterface (BaseObjs.ppi()));
	RETURN_FAILED_HRESULT(BaseObjs -> get_Name (CLEARED(&bstrName)));

#pragma TODO("Neuen Namen der Objektklasse in Datenquelle speichern.")

	m_fIsDirty = true;
	return S_OK;
}

HRESULT CTDBPGISObjects::OnChangedDescription(VARIANT vOldValue)
{
// neue Beschreibung vom Bezugsobjekt besorgen
CComBSTR bstrDesc;
WTRiASObjects BaseObjs;

	RETURN_FAILED_HRESULT(m_BaseUnk -> QueryInterface (BaseObjs.ppi()));
	RETURN_FAILED_HRESULT(BaseObjs -> get_Description(CLEARED(&bstrDesc)));

#pragma TODO("Neue Beschreibung (Langtext) der Objektklasse in Datenquelle speichern.")

	m_fIsDirty = true;
	return S_OK;
}

HRESULT CTDBPGISObjects::OnChangedOKS(VARIANT vOldValue)
{
// neuen Objektklassenschl�ssel vom Bezugsobjekt besorgen
CComBSTR bstrOKS;
WTRiASObjects BaseObjs;

	RETURN_FAILED_HRESULT(m_BaseUnk -> QueryInterface (BaseObjs.ppi()));
	RETURN_FAILED_HRESULT(BaseObjs -> get_OKS(CLEARED(&bstrOKS)));

#pragma TODO("Neuen Objektklassenschl�ssel der Objektklasse in Datenquelle speichern.")

	m_fIsDirty = true;
	return S_OK;
}

HRESULT CTDBPGISObjects::OnChangedHandle(VARIANT vOldValue)
{
// neue Zugriffsnummer vom Bezugsobjekt besorgen
INT_PTR hObjs = NULL;
WTRiASObjects BaseObjs;

	RETURN_FAILED_HRESULT(m_BaseUnk -> QueryInterface (BaseObjs.ppi()));
	RETURN_FAILED_HRESULT(BaseObjs -> get_Handle(&hObjs));

#pragma TODO("Neue Zugriffsnummer der Objektklasse ggf. auswerten.")

	m_fIsDirty = true;
	return S_OK;
}

HRESULT CTDBPGISObjects::OnChangedTypes(VARIANT vOldValue)
{
// neue Objekttypen vom Bezugsobjekt besorgen
OBJECTTYPE rgTypes = OBJECTTYPE_Unknown;
WTRiASObjects BaseObjs;

	RETURN_FAILED_HRESULT(m_BaseUnk -> QueryInterface (BaseObjs.ppi()));
	RETURN_FAILED_HRESULT(BaseObjs -> get_Types(&rgTypes));

#pragma TODO("Neue Objekttypen der Objektklasse ggf. auswerten.")

	m_fIsDirty = true;
	return S_OK;
}

HRESULT CTDBPGISObjects::OnChangedROMode(VARIANT vOldValue)
{
// neuen Schreibschutzmode vom Bezugsobjekt besorgen
VARIANT_BOOL fUpdatable = VARIANT_FALSE;
WTRiASObjects BaseObjs;

	RETURN_FAILED_HRESULT(m_BaseUnk -> QueryInterface (BaseObjs.ppi()));
	RETURN_FAILED_HRESULT(BaseObjs -> get_Updatable(&fUpdatable));

#pragma TODO("Neuen Schreibschutzmode der Objektklasse ggf. auswerten.")

	m_fIsDirty = true;
	return S_OK;
}
#endif // defined(_READWRITE)


