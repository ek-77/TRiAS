// $Header: $
// Copyright� 1998-2000 TRiAS GmbH Potsdam, All rights reserved
// Created: 25.02.2000 11:15:18 
//
// This file was generated by the TRiASDB Data Server Wizard V1.01.076 (#HK000225)
//
// @doc
// @module FastdbObjects.cpp | Implementation of the <c CFastdbObjects> class

#include "stdafx.h"

#include <Com/ComBool.h>

#include "Strings.h"

#include "Fastdb.h"
#include "FastdbDatabase.h"
#include "FastdbPropertySupport.h"
#include "FastdbObjects.h"

#if defined(_DEBUG)
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif // _DEBUG

///////////////////////////////////////////////////////////////////////////////
// SmartIF's
DefineSmartInterface(TRiASObject);
DefineSmartInterface(TRiASDatabase);
DefineSmartInterface(TRiASObjects);
DefineSmartInterface(TRiASFeature);
DefineSmartInterface(TRiASFeatures);
DefineSmartInterface(TRiASObjectHandleMap);
DefineSmartInterface(TRiASPropertyMapHandler);

DefineSmartInterface(PersistStreamInit);
DefineSmartInterface(Dispatch);

///////////////////////////////////////////////////////////////////////////////
// CFastdbObjects

STDMETHODIMP CFastdbObjects::InterfaceSupportsErrorInfo(REFIID riid)
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

STDMETHODIMP CFastdbObjects::get_DefaultType (BSTR *pbstrType)
{
	CHECKOUTPOINTER(pbstrType);

CIID Guid (CLSID_FastdbObject);		// DefaultType der _Elemente_ (hier: Object)!
CComBSTR bstrType (Guid.ProgID().c_str());

	*pbstrType = bstrType.Detach();
	return S_OK;
}

/////////////////////////////////////////////////////////////////////////////
// Erstmalige Initialisierung
STDMETHODIMP CFastdbObjects::SetupObjects(SETUPOBJECTSMODE rgMode)
{
HRESULT hr = E_INVALIDARG;

	switch (rgMode) {
	case SETUPOBJECTSMODE_Count:
		hr = EnsureObjectsCount();
		_ASSERTE(HasType (m_rgInitState, INITSTATE_CountsInitialized));
		break;

	case SETUPOBJECTSMODE_Load:
		hr =  EnsureObjectsLoaded();
		_ASSERTE(HasType (m_rgInitState, INITSTATE_ObjectsInitialized));
		break;

	case SETUPOBJECTSMODE_InitOrLoad:
		COM_TRY {
		// Properties zum aggregierten Objekt hinzuf�gen
		WTRiASPropertyMapHandler MapHandler(m_BaseUnk);

			THROW_FAILED_HRESULT(MapHandler -> AddMapEntry (
				CComBSTR(g_cbObjectsCursor), (INT_PTR)&CLSID_FastdbCursorProperty, PROPERTYSUPPORT_NOFLAGS, vtMissing));

		} COM_CATCH;
		hr = S_OK;
		break;

	case SETUPOBJECTSMODE_ResetObjectInfo:
		m_rgInitState = INITSTATE_NotInitialized;
		hr = S_OK;
		break;

	default:
		_ASSERTE(SETUPOBJECTSMODE_Count == rgMode || 
			SETUPOBJECTSMODE_Load == rgMode || 
			SETUPOBJECTSMODE_InitOrLoad == rgMode ||
			SETUPOBJECTSMODE_ResetObjectInfo == rgMode);
		break;
	}
	return hr;
}

HRESULT CFastdbObjects::EnsureObjectsCount()
{
	if (HasType (m_rgInitState, INITSTATE_CountsInitialized))
		return S_OK;		// wurden bereits geladen

	COM_TRY {
	WTRiASObjects BaseObjs;
	long lObjCount = 0;
	OBJECTTYPE rgTypes = OBJECTTYPE_Unknown;

		THROW_FAILED_HRESULT(m_BaseUnk -> QueryInterface (BaseObjs.ppi()));

	LONG lCursor (GetPropertyFrom (BaseObjs, g_cbObjectsCursor, 0L));

		if (0 == lCursor) 		// Objekt nicht fertig initialisiert
			THROW_FAILED_HRESULT(FASTDB_E_OBJECTS_BADREFERENCE);

	dbCursor<CDBClass> cursor (GetRelatedDatabase(GetUnknown()));
	CDBClass *pClass = cursor.at (dbReference<CDBClass>(oid_t(lCursor)));

		if (NULL == pClass || cursor.isEmpty())
			THROW_FAILED_HRESULT(FASTDB_E_OBJECTS_BADREFERENCE);

	// Ergebnis der schwei�treibenden Arbeit dem aggregierten Objekt mitteilen
		THROW_FAILED_HRESULT(BaseObjs -> put_Count (pClass -> objects.length()));		// Basisklasse informieren
		THROW_FAILED_HRESULT(BaseObjs -> put_Types (GetTypes (cursor)));

	// Z�hler sind jetzt initialisiert
		SetType (m_rgInitState, INITSTATE_CountsInitialized);

	} COM_CATCH;
	return S_OK;
}

HRESULT CFastdbObjects::EnsureObjectsLoaded()
{
	if (HasType (m_rgInitState, INITSTATE_ObjectsInitialized))
		return S_OK;		// wurden bereits geladen

	COM_TRY {
	WTRiASObjects BaseObjs;
	WTRiASDatabase DBase;

		THROW_FAILED_HRESULT(m_BaseUnk -> QueryInterface (BaseObjs.ppi()));
		THROW_FAILED_HRESULT(FindSpecificParent (BaseObjs, DBase.ppi()));

	LONG lCursor (GetPropertyFrom (BaseObjs, g_cbObjectsCursor, 0L));

		if (0 == lCursor) 		// Objekt nicht fertig initialisiert
			THROW_FAILED_HRESULT(FASTDB_E_OBJECTS_BADREFERENCE);

	dbDatabase *pDB = GetRelatedDatabase(GetUnknown());
	dbCursor<CDBClass> cursor (pDB);
	CDBClass *pClass = cursor.at (dbReference<CDBClass>(oid_t(lCursor)));

		if (NULL == pClass || cursor.isEmpty())
			THROW_FAILED_HRESULT(FASTDB_E_OBJECTS_BADREFERENCE);

	// alle Objekte durchgehen und instantiieren
	WDispatch App;
	int iObjCnt = pClass -> objects.length();
	dbCursor<CDBObject> objects (pDB);
	WTRiASObjectHandleMap Map (GetPropertyFrom (DBase, g_cbObjectMap, (IDispatch *)NULL), false);

		_ASSERTE(Map.IsValid());

	// alle bereits existierenden Objekte durchgehen und (evtl.) instantiieren
		for (int i = 0; i < iObjCnt; i++) {
		WTRiASObject Obj;

			if (SUCCEEDED(Map -> GetObject (pClass -> objects[i].getOid(), Obj.ppu())))
				continue;

		CDBObject *pObject = objects.at (pClass -> objects[i]);

			_ASSERTE(NULL != pObject && !objects.isEmpty());

		// neu erzeugen, fertig initialisieren
			Obj = WTRiASObject(CLSID_FastdbObject);	
			THROW_FAILED_HRESULT(WPersistStreamInit(Obj) -> InitNew());
			THROW_FAILED_HRESULT(Obj -> put_Parent(BaseObjs));

		// Typ etc. setzen
			THROW_FAILED_HRESULT(Obj -> put_Type ((OBJECTTYPE)pObject -> m_rgType));
			THROW_FAILED_HRESULT(Obj -> put_Name (CComBSTR(pObject -> m_objGuid)));

		// an dem erzeugten Objekt unsere Nummer (cursor) speichern
			THROW_FAILED_HRESULT(SetPropertyBy (Obj, g_cbObjectCursor, CComVariant(objects.currentId().getOid(), VT_I4), true));

		// das neu instantiierte Objekt zu dieser Objektklasse hinzuf�gen
			THROW_FAILED_HRESULT(BaseObjs -> _Add (Obj, VARIANT_TRUE));
		}

	// Objekte sind jetzt initialisiert
		SetType (m_rgInitState, INITSTATE_ObjectsInitialized);

	// Features initialisieren
		THROW_FAILED_HRESULT(SetupFeatures (
			SETUPFEATURESMODE(SETUPFEATURESMODE_Normal|SETUPFEATURESMODE_Force)));

	} COM_CATCH;
	return S_OK;
}

STDMETHODIMP CFastdbObjects::SetupFeatures(SETUPFEATURESMODE rgMode)
{
// unterst�tzte Attribute mit Objektmenge assoziieren
	if (!m_fHasFeatures || (rgMode & SETUPFEATURESMODE_Force)) {
		COM_TRY {
		WTRiASFeatures Feats (CLSID_FastdbFeatures);

			THROW_FAILED_HRESULT(WTRiASObjects(m_BaseUnk) -> put_Features (Feats))
			THROW_FAILED_HRESULT(Feats -> Refresh());	// ruft CFastdbFeatures::SetupFeatures()
			m_fHasFeatures = true;

		} COM_CATCH;
	}

// existierende Geometrien mit dieser Objektklasse assoziieren
	if (!m_fHasGeoFeatures || (rgMode & SETUPFEATURESMODE_Force)) {
		COM_TRY {
		WTRiASFeatures GeoFeats (CLSID_FastdbGeoFeatures);

			THROW_FAILED_HRESULT(WTRiASObjects(m_BaseUnk) -> put_GeometryFeatures (GeoFeats))
			THROW_FAILED_HRESULT(GeoFeats -> Refresh());	// ruft CFastdbGeoFeatures::SetupFeatures()
			m_fHasGeoFeatures = true;

		} COM_CATCH;
	}
	return S_OK;
}

/////////////////////////////////////////////////////////////////////////////
// Ein neues Objekt soll erzeugt werden
STDMETHODIMP CFastdbObjects::OnCreate (BSTR Name, BSTR Type, OBJECTTYPE rgType, ITRiASObject **ppIObj)
{
	CHECKOUTPOINTER(ppIObj);
	COM_TRY {
	// zugeh�riges DB-Objekt referenzieren
	WTRiASObjects BaseObjs;
	
		THROW_FAILED_HRESULT(m_BaseUnk -> QueryInterface (BaseObjs.ppi()));

	LONG lCursor (GetPropertyFrom (BaseObjs, g_cbObjectsCursor, 0L));

		if (0 == lCursor) 		// Objekt nicht fertig initialisiert
			THROW_FAILED_HRESULT(FASTDB_E_OBJECTS_BADREFERENCE);

	dbDatabase *pdb = GetRelatedDatabase(GetUnknown());
	dbCursor<CDBClass> cursor (pdb);
	CDBClass *pClass = cursor.at (dbReference<CDBClass>(oid_t(lCursor)));

		if (NULL == pClass || cursor.isEmpty())
			THROW_FAILED_HRESULT(FASTDB_E_OBJECTS_BADREFERENCE);

	// jetzt wirklich erzeugen
	CIID ClsId (Type, CIID::INITCIID_InitFromProgId);

		if (!ClsId)	ClsId = CLSID_FastdbObject;	// default ClsId

	// erzeugen und fertig initialisieren
	WTRiASObject Obj (ClsId);

		THROW_FAILED_HRESULT(WPersistStreamInit(Obj) -> InitNew());
		THROW_FAILED_HRESULT(Obj -> put_Parent(BaseObjs));

	// DB-Objekt erzeugen
	CDBObject Object;

		Object.m_rgType = rgType;
		CoCreateGuid (&Object.m_objGuid);
		Object.objclass = cursor.currentId();

	// Typ etc. setzen
	CComBSTR bstrName (Name);

		if (!bstrName || 0 == bstrName.Length())
			bstrName = Object.m_objGuid;

		THROW_FAILED_HRESULT(Obj -> put_Type (rgType));
		THROW_FAILED_HRESULT(Obj -> put_Name (bstrName));

	// an dem erzeugten Objekt unsere Nummer (cursor) speichern
	dbReference<CDBObject> objref = pdb -> insert (Object);

		THROW_FAILED_HRESULT(SetPropertyBy (Obj, g_cbObjectCursor, CComVariant(objref.getOid(), VT_I4), true));

	// wenn Feature bereits zu dieser Attributmenge geh�rt, dann liefert _Add den Wert S_FALSE
		THROW_FAILED_HRESULT(WTRiASObjects(m_BaseUnk) -> _Add (Obj, VARIANT_TRUE));
		*ppIObj = Obj.detach();

	} COM_CATCH;
	return S_OK;
}

/////////////////////////////////////////////////////////////////////////////
// Irgend was wurde modifiziert
STDMETHODIMP CFastdbObjects::OnChanging(CHANGEDOBJECTS rgWhat, VARIANT vNewValue, VARIANT_BOOL *pDisAllow)
{
	CHECKOUTPOINTER(pDisAllow);

	*pDisAllow = VARIANT_FALSE;		// immer einverstanden sein
	return S_OK;
}

/////////////////////////////////////////////////////////////////////////////
// Irgend was wurde modifiziert
STDMETHODIMP CFastdbObjects::OnChanged(CHANGEDOBJECTS rgWhat, VARIANT vOldValue)
{
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
}

/////////////////////////////////////////////////////////////////////////////
// Ein Objekt soll gel�scht werden
STDMETHODIMP CFastdbObjects::OnDelete (INT_PTR hObj)
{
#pragma TODO("Gegebenenfalls Objekt aus Datenquelle l�schen.")

	// S_OK:	Objekt wurde gel�scht
	// S_FALSE: das Objekt soll sich selbst l�schen (geschieht nicht hier)
	// ansonsten Fehlercode
	return S_FALSE;
}

/////////////////////////////////////////////////////////////////////////////
// Ein Objekt soll zu dieser Objektmenge hinzugef�gt werden
STDMETHODIMP CFastdbObjects::OnAdd (ITRiASObject *pIObj, CLASSIFYMODE rgMode)
{
	if (CLASSIFYMODE_DoNotClassify == rgMode)
		return S_OK;	// nicht umklassifizieren/Rekursion verhindern

#pragma TODO("Objekt zu dieser Objektklasse hinzuf�gen und evtl. aus alter Objektklasse entfernen (s. OnRemove).")

	// S_OK:	  erfolgreich dieser Objektklasse zugeordnet
	// E_NOTIMPL: Objekt mu� in neue Objektklasse umkopiert werden (geschieht nicht hier)
	return S_OK;
}

// Ein Objekt soll aus dieser Objektmenge entfernt werden
STDMETHODIMP CFastdbObjects::OnRemove (ITRiASObject *pIObj)
{
#pragma TODO("Gegebenenfalls Objekt aus dieser Objektklasse entfernen (s. OnAdd).")

	// S_OK:	erfolgreich entfernt
	// S_FALSE:	wird in 'OnAdd' der neuen Objektklasse zugeordnet und aus alter Objektklasse entfernt
	// ansonsten Fehlercode
	return S_FALSE;
}

// Eine Zugriffsnummer eines Attributes kann an dieser Stelle auf ein konkretes
// Attribut dieser Objektklasse gemappt werden
STDMETHODIMP CFastdbObjects::MapFeatureHandle (VARIANT vNameOrHandle, VARIANT *pvNewNameOrHandle)
{
	// default: nicht ver�ndern
	return CComVariant(vNameOrHandle).Detach (pvNewNameOrHandle);
}

// Objekt wird logisch freigegeben
STDMETHODIMP CFastdbObjects::OnFinalRelease()
{
	COM_TRY {
	// unsere Nummer (Cursor) freigeben und damit dieses Objekt aus der Handlemap herausl�schen
		THROW_FAILED_HRESULT(DelPropertyBy (WDispatch(m_BaseUnk), g_cbObjectsCursor));

	} COM_CATCH;
	return S_OK;
}

/////////////////////////////////////////////////////////////////////////////
// Helperfunktionen
HRESULT CFastdbObjects::OnChangedName(VARIANT vOldValue)
{
	USES_CONVERSION;
	COM_TRY {
	// neuen Namen vom Bezugsobjekt besorgen
	CComBSTR bstrName;		// neuer Name
	WTRiASObjects BaseObjs;

		THROW_FAILED_HRESULT(m_BaseUnk -> QueryInterface (BaseObjs.ppi()));

	// zugeh�riges DB-Objekt referenzieren
	LONG lCursor (GetPropertyFrom (BaseObjs, g_cbObjectsCursor, 0L));

		if (0 != lCursor) {		// Objekt fertig initialisiert
		dbCursor<CDBClass> cursor (GetRelatedDatabase(GetUnknown()), dbCursorForUpdate);
		CDBClass *pClass = cursor.at (dbReference<CDBClass>(oid_t(lCursor)));

			if (NULL == pClass || cursor.isEmpty())
				THROW_FAILED_HRESULT(FASTDB_E_OBJECTS_BADREFERENCE);

			THROW_FAILED_HRESULT(BaseObjs -> get_Name (CLEARED(&bstrName)));
			cursor -> m_pName = OLE2A(bstrName);
			cursor.update();
		}

	} COM_CATCH;
	return S_OK;
}

HRESULT CFastdbObjects::OnChangedDescription(VARIANT vOldValue)
{
	USES_CONVERSION;
	COM_TRY {
	// neue Beschreibung vom Bezugsobjekt besorgen
	CComBSTR bstrDesc;
	WTRiASObjects BaseObjs;

		THROW_FAILED_HRESULT(m_BaseUnk -> QueryInterface (BaseObjs.ppi()));

	// zugeh�riges DB-Objekt referenzieren
	LONG lCursor (GetPropertyFrom (BaseObjs, g_cbObjectsCursor, 0L));

		if (0 != lCursor) {		// Objekt fertig initialisiert
		dbCursor<CDBClass> cursor (GetRelatedDatabase(GetUnknown()), dbCursorForUpdate);
		CDBClass *pClass = cursor.at (dbReference<CDBClass>(oid_t(lCursor)));

			if (NULL == pClass || cursor.isEmpty())
				THROW_FAILED_HRESULT(FASTDB_E_OBJECTS_BADREFERENCE);

			THROW_FAILED_HRESULT(BaseObjs -> get_Description(CLEARED(&bstrDesc)));
			cursor -> m_pDesc = OLE2A(bstrDesc);
			cursor.update();
		}

	} COM_CATCH;
	return S_OK;
}

HRESULT CFastdbObjects::OnChangedOKS(VARIANT vOldValue)
{
	USES_CONVERSION;
	COM_TRY {
	// neuen Objektklassenschl�ssel vom Bezugsobjekt besorgen
	CComBSTR bstrOKS;
	WTRiASObjects BaseObjs;

		THROW_FAILED_HRESULT(m_BaseUnk -> QueryInterface (BaseObjs.ppi()));

	// zugeh�riges DB-Objekt referenzieren
	LONG lCursor (GetPropertyFrom (BaseObjs, g_cbObjectsCursor, 0L));

		if (0 != lCursor) {		// Objekt fertig initialisiert
		dbCursor<CDBClass> cursor (GetRelatedDatabase(GetUnknown()), dbCursorForUpdate);
		CDBClass *pClass = cursor.at (dbReference<CDBClass>(oid_t(lCursor)));

			if (NULL == pClass || cursor.isEmpty())
				THROW_FAILED_HRESULT(FASTDB_E_OBJECTS_BADREFERENCE);

			THROW_FAILED_HRESULT(BaseObjs -> get_OKS(CLEARED(&bstrOKS)));
			cursor -> m_pOKS = OLE2A(bstrOKS);
			cursor.update();
		}

	} COM_CATCH;
	return S_OK;
}

HRESULT CFastdbObjects::OnChangedHandle(VARIANT vOldValue)
{
// neue Zugriffsnummer vom Bezugsobjekt besorgen
INT_PTR hObjs = NULL;
WTRiASObjects BaseObjs;

	RETURN_FAILED_HRESULT(m_BaseUnk -> QueryInterface (BaseObjs.ppi()));
	RETURN_FAILED_HRESULT(BaseObjs -> get_Handle(&hObjs));

#pragma TODO("Neue Zugriffsnummer der Objektklasse ggf. auswerten.")

	return S_OK;
}

HRESULT CFastdbObjects::OnChangedTypes(VARIANT vOldValue)
{
// neue Objekttypen vom Bezugsobjekt besorgen
OBJECTTYPE rgTypes = OBJECTTYPE_Unknown;
WTRiASObjects BaseObjs;

	RETURN_FAILED_HRESULT(m_BaseUnk -> QueryInterface (BaseObjs.ppi()));
	RETURN_FAILED_HRESULT(BaseObjs -> get_Types(&rgTypes));

#pragma TODO("Neue Objekttypen der Objektklasse ggf. auswerten.")

	return S_OK;
}

HRESULT CFastdbObjects::OnChangedROMode(VARIANT vOldValue)
{
	COM_TRY {
	// neuen Schreibschutzmode vom Bezugsobjekt besorgen
	CComBool fUpdatable;
	WTRiASObjects BaseObjs;

		THROW_FAILED_HRESULT(m_BaseUnk -> QueryInterface (BaseObjs.ppi()));

	// zugeh�riges DB-Objekt referenzieren
	LONG lCursor (GetPropertyFrom (BaseObjs, g_cbObjectsCursor, 0L));

		if (0 != lCursor) {		// Objekt fertig initialisiert
		dbCursor<CDBClass> cursor (GetRelatedDatabase(GetUnknown()), dbCursorForUpdate);
		CDBClass *pClass = cursor.at (dbReference<CDBClass>(oid_t(lCursor)));

			if (NULL == pClass || cursor.isEmpty())
				THROW_FAILED_HRESULT(FASTDB_E_OBJECTS_BADREFERENCE);

			THROW_FAILED_HRESULT(BaseObjs -> get_Updatable(&fUpdatable));
			cursor -> m_fROMode = !fUpdatable;
			cursor.update();
		}

	} COM_CATCH;
	return S_OK;
}

