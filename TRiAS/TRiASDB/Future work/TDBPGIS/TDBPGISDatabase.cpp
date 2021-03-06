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
// @module TDBPGISDatabase.cpp | Datenbankobjekt TRiASDB Data Server TDBPGIS

#include "stdafx.h"

#include <float.h>

#include "Version.h"
#include "Strings.h"

#include "TDBPGIS.h"
#include "TDBPGISDatabase.h"

#if defined(_DEBUG)
#if defined(_MFC_VER)
#define new DEBUG_NEW
#endif // defined(_MFC_VER)
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif // _DEBUG

///////////////////////////////////////////////////////////////////////////////
// CTDBPGISDatabase

STDMETHODIMP CTDBPGISDatabase::InterfaceSupportsErrorInfo(REFIID riid)
{
	static const IID* arr[] = 
	{
		&IID_ITRiASDatabase,
		&IID_ITRiASPropertyBase,
	};
	for (int i=0; i < sizeof(arr) / sizeof(arr[0]); i++)
	{
		if (InlineIsEqualGUID(*arr[i],riid))
			return S_OK;
	}
	return S_FALSE;
}

HRESULT CTDBPGISDatabase::FinalConstruct (void)
{
	return S_OK;
}

void CTDBPGISDatabase::FinalRelease()
{
}

///////////////////////////////////////////////////////////////////////////////
// ITRiASBase
STDMETHODIMP CTDBPGISDatabase::get_Application (IDispatch **pVal)
{
#if defined(_MFC_VER)
	AFX_MANAGE_STATE(AfxGetStaticModuleState())
#endif // defined(_MFC_VER)

	CHECKOUTPOINTER(pVal);

WDispatch disp (m_Application);

	*pVal = disp.detach();
	return S_OK;
}

STDMETHODIMP CTDBPGISDatabase::put_Application (IDispatch *newVal)
{
#if defined(_MFC_VER)
	AFX_MANAGE_STATE(AfxGetStaticModuleState())
#endif // defined(_MFC_VER)

	m_Application = newVal;
	return S_OK;
}

STDMETHODIMP CTDBPGISDatabase::get_Parent (IDispatch **pVal)
{
#if defined(_MFC_VER)
	AFX_MANAGE_STATE(AfxGetStaticModuleState())
#endif // defined(_MFC_VER)

	CHECKOUTPOINTER(pVal);

WDispatch disp (m_Parent);

	*pVal = disp.detach();
	return S_OK;
}

STDMETHODIMP CTDBPGISDatabase::put_Parent (IDispatch *newVal)
{
#if defined(_MFC_VER)
	AFX_MANAGE_STATE(AfxGetStaticModuleState())
#endif // defined(_MFC_VER)

	m_Parent = newVal;
	return S_OK;
}

///////////////////////////////////////////////////////////////////////////////
// ITRiASDatabase
STDMETHODIMP CTDBPGISDatabase::get_Handle (INT_PTR *pVal)
{
#if defined(_MFC_VER)
	AFX_MANAGE_STATE(AfxGetStaticModuleState())
#endif // defined(_MFC_VER)

	CHECKOUTPOINTER(pVal);
	ERROR_EXPR_TRUE(!IsOpened(), TRIASDB_E_DATABASE_NOT_OPENED);

	*pVal = reinterpret_cast<INT_PTR>(this);
	return S_OK;
}

STDMETHODIMP CTDBPGISDatabase::get_IsDirty (VARIANT_BOOL *pVal)
{
#if defined(_MFC_VER)
	AFX_MANAGE_STATE(AfxGetStaticModuleState())
#endif // defined(_MFC_VER)

	CHECKOUTPOINTER(pVal);
	ERROR_EXPR_TRUE(!IsOpened(), TRIASDB_E_DATABASE_NOT_OPENED);

	*pVal = m_fIsDirty ? VARIANT_TRUE : VARIANT_FALSE;
	return S_OK;
}

STDMETHODIMP CTDBPGISDatabase::put_IsDirty (VARIANT_BOOL newVal)
{
#if defined(_MFC_VER)
	AFX_MANAGE_STATE(AfxGetStaticModuleState())
#endif // defined(_MFC_VER)

	ERROR_EXPR_TRUE(!IsOpened(), TRIASDB_E_DATABASE_NOT_OPENED);

	m_fIsDirty = newVal ? true : false;
	return S_OK;
}

STDMETHODIMP CTDBPGISDatabase::get_OpenedAsCopy (VARIANT_BOOL * pVal)
{
#if defined(_MFC_VER)
	AFX_MANAGE_STATE(AfxGetStaticModuleState())
#endif // defined(_MFC_VER)

	CHECKOUTPOINTER(pVal);
	ERROR_EXPR_TRUE(!IsOpened(), TRIASDB_E_DATABASE_NOT_OPENED);
		
	*pVal = VARIANT_FALSE;
	return S_OK;
}

STDMETHODIMP CTDBPGISDatabase::get_CouldOpenTarget (VARIANT_BOOL * pVal)
{
#if defined(_MFC_VER)
	AFX_MANAGE_STATE(AfxGetStaticModuleState())
#endif // defined(_MFC_VER)

	CHECKOUTPOINTER(pVal);
	ERROR_EXPR_TRUE(!IsOpened(), TRIASDB_E_DATABASE_NOT_OPENED);
		
	*pVal = VARIANT_FALSE;
	return S_OK;
}

STDMETHODIMP CTDBPGISDatabase::get_SchemaUpdatable (VARIANT_BOOL * pVal)
{
#if defined(_MFC_VER)
	AFX_MANAGE_STATE(AfxGetStaticModuleState())
#endif // defined(_MFC_VER)

	CHECKOUTPOINTER(pVal);
	ERROR_EXPR_TRUE(!IsOpened(), TRIASDB_E_DATABASE_NOT_OPENED);
		
#if defined(_READWRITE)
#pragma TODO("get_SchemaUpdatable mu� VARIANT_TRUE liefern, wenn die Struktur der Datenquelle modifizierbar ist.")
#endif // defined(_READWRITE)

	*pVal = VARIANT_FALSE;
	return S_OK;
}

STDMETHODIMP CTDBPGISDatabase::get_Name (BSTR *pVal)
{
#if defined(_MFC_VER)
	AFX_MANAGE_STATE(AfxGetStaticModuleState())
#endif // defined(_MFC_VER)

	CHECKOUTPOINTER(pVal);
	ERROR_EXPR_TRUE(!IsOpened(), TRIASDB_E_DATABASE_NOT_OPENED);

CComBSTR bstrName (m_bstrName);

	if (!bstrName)
		return E_OUTOFMEMORY;

	*pVal = bstrName.Detach();
	return S_OK;
}

STDMETHODIMP CTDBPGISDatabase::get_Version (BSTR * pVal)
{
#if defined(_MFC_VER)
	AFX_MANAGE_STATE(AfxGetStaticModuleState())
#endif // defined(_MFC_VER)

	CHECKOUTPOINTER(pVal);
	ERROR_EXPR_TRUE(!IsOpened(), TRIASDB_E_DATABASE_NOT_OPENED);

char cbBuffer[64];

	wsprintf (cbBuffer, "%d.%02d", TDBPGIS_VERSION_MAJOR, TDBPGIS_VERSION_MINOR);

CComBSTR bstrVersion (cbBuffer);

	*pVal = bstrVersion.Detach();
	return S_OK;
}

STDMETHODIMP CTDBPGISDatabase::get_VersionLong (LONG *pVal)
{
	CHECKOUTPOINTER(pVal);
	*pVal = TDBPGIS_VERSION_MAJOR*100 + TDBPGIS_VERSION_MINOR;
	return S_OK;
}

STDMETHODIMP CTDBPGISDatabase::get_CollatingOrder (LONG * pVal)
{
	CHECKOUTPOINTER(pVal);
	return E_NOTIMPL;
}

STDMETHODIMP CTDBPGISDatabase::get_Connect (BSTR * pVal)
{
	CHECKOUTPOINTER(pVal);
	return E_NOTIMPL;
}

STDMETHODIMP CTDBPGISDatabase::get_Transactions (VARIANT_BOOL * pVal)
{
	CHECKOUTPOINTER(pVal);

	*pVal = VARIANT_FALSE;
	return S_OK;
}

STDMETHODIMP CTDBPGISDatabase::get_Updatable (VARIANT_BOOL * pVal)
{
	CHECKOUTPOINTER(pVal);

#if defined(_READWRITE)
	*pVal = VARIANT_TRUE;
#else
	*pVal = VARIANT_FALSE;
#endif // defined(_READWRITE)
	return S_OK;
}

STDMETHODIMP CTDBPGISDatabase::get_Temporary (VARIANT_BOOL * pVal)
{
	CHECKOUTPOINTER(pVal);
	return E_NOTIMPL;
}

STDMETHODIMP CTDBPGISDatabase::put_Temporary (VARIANT_BOOL pVal)
{
	return E_NOTIMPL;
}

STDMETHODIMP CTDBPGISDatabase::get_TemporaryName (BSTR * pVal)
{
	return get_Name (pVal);
}

STDMETHODIMP CTDBPGISDatabase::get_Type (BSTR * pVal)
{
	CHECKOUTPOINTER(pVal);
		
// ProgID des zugeh�rigen Datenbankobjektes
CComBSTR bstr (g_cbDatabase);

	*pVal = bstr.Detach();
	return S_OK;
}

STDMETHODIMP CTDBPGISDatabase::get_StorageMode (DATABASESTORAGEMODE * pVal)
{
	CHECKOUTPOINTER(pVal);

	*pVal = DATABASESTORAGEMODE_FileBased;
	return S_OK;
}

STDMETHODIMP CTDBPGISDatabase::CreateDatabase (BSTR Name, BSTR Locale, BSTR Source)
{
#if defined(_MFC_VER)
	AFX_MANAGE_STATE(AfxGetStaticModuleState())
#endif // defined(_MFC_VER)

#if defined(_READWRITE)
#pragma TODO("CreateDatabase erzeugt eine neue Datenquelle.")
#endif // defined(_READWRITE)

	return E_NOTIMPL;
}

STDMETHODIMP CTDBPGISDatabase::CreateDatabaseFromFiles (IUnknown * FileNames, BSTR Locale, BSTR Source)
{
#if defined(_MFC_VER)
	AFX_MANAGE_STATE(AfxGetStaticModuleState())
#endif // defined(_MFC_VER)

	return E_NOTIMPL;
}

STDMETHODIMP CTDBPGISDatabase::CreateDatabaseOnStg (IUnknown *pIUnk, BSTR Name, BSTR Locale, BSTR Source)
{
#if defined(_MFC_VER)
	AFX_MANAGE_STATE(AfxGetStaticModuleState())
#endif // defined(_MFC_VER)

	return E_NOTIMPL;
}

STDMETHODIMP CTDBPGISDatabase::OpenDatabase (
	BSTR Name, VARIANT_BOOL Exclusive, VARIANT_BOOL fReadOnly, VARIANT_BOOL ModTrack, BSTR Source)
{
#if defined(_MFC_VER)
	AFX_MANAGE_STATE(AfxGetStaticModuleState())
#endif // defined(_MFC_VER)

#if !defined(_READWRITE)
	_ASSERTE(fReadOnly);		// darf nur schreibgesch�tzt ge�ffnet werden
	if (!fReadOnly)
	{
		RETURN_FAILED_HRESULT(E_INVALIDARG);
	}
#endif // !defined(_READWRITE)

	USES_CONVERSION;
	COM_TRY {
	// Pfad von PolyGIS geben lassen
	CComBSTR bstrPath, bstrCoordSys;

		THROW_FAILED_HRESULT(GetPolyGISPathFromSource(Source, &bstrPath));
		THROW_FAILED_HRESULT(GetPolyGISCoordSys(Source, &bstrCoordSys));

	// Datenbasis �ffnen
		if (FAILED(m_DB.Open(OLE2A(bstrPath), OLE2A(Name), !fReadOnly)))
			return TRIASDB_E_COULD_NOT_OPEN;

		m_bstrName = Name;

	// neue PropertiesCollection anlegen und initialisieren
		THROW_FAILED_HRESULT(CreatePropertiesCollection());		// --> TDBPGISPropertyBase.h

	// KoordinatenSystemService erzeugen und initialisieren
		THROW_FAILED_HRESULT(InitCoordSystemService(bstrCoordSys));

		m_fOpened = true;		// jetzt ge�ffnet

	} COM_CATCH;
	return S_OK;
}

STDMETHODIMP CTDBPGISDatabase::OpenFilesAsDatabase (
	IUnknown * FileNames, VARIANT_BOOL Exclusive, VARIANT_BOOL ReadOnly, VARIANT_BOOL ModTrack, BSTR Source)
{
#if defined(_MFC_VER)
	AFX_MANAGE_STATE(AfxGetStaticModuleState())
#endif // defined(_MFC_VER)

	return E_NOTIMPL;
}

STDMETHODIMP CTDBPGISDatabase::OpenStorageAsDatabase(
	IUnknown *pIUnk, VARIANT_BOOL Exclusive, VARIANT_BOOL fReadOnly, VARIANT_BOOL ModTrack, BSTR Source)
{
#if defined(_MFC_VER)
	AFX_MANAGE_STATE(AfxGetStaticModuleState())
#endif // defined(_MFC_VER)

	return E_NOTIMPL;
}

STDMETHODIMP CTDBPGISDatabase::Save()
{
#if defined(_MFC_VER)
	AFX_MANAGE_STATE(AfxGetStaticModuleState())
#endif // defined(_MFC_VER)
#if defined(_READWRITE)
#pragma TODO("Save speichert die �nderungen der Datenquelle.")

	return E_NOTIMPL;
#else
	return TRIASDB_E_DATABASENOTUPDATABLE;
#endif // defined(_READWRITE)
}

STDMETHODIMP CTDBPGISDatabase::SaveAs (BSTR NewName)
{
#if defined(_MFC_VER)
	AFX_MANAGE_STATE(AfxGetStaticModuleState())
#endif // defined(_MFC_VER)
#if defined(_READWRITE)
#pragma TODO("Save speichert die �nderungen der Datenquelle unter einem neuen Namen.")

	return E_NOTIMPL;
#else
	return TRIASDB_E_DATABASENOTUPDATABLE;
#endif // defined(_READWRITE)
}

STDMETHODIMP CTDBPGISDatabase::Close()
{
#if defined(_MFC_VER)
	AFX_MANAGE_STATE(AfxGetStaticModuleState())
#endif // defined(_MFC_VER)

	ERROR_EXPR_TRUE(!IsOpened(), TRIASDB_E_DATABASE_NOT_OPENED);

	COM_TRY {
	// alle Objekte abh�ngen (_vor_ FreePropertiesCollection, da sonst neue Coll erzeugt wird)
		if (m_ObjectsDefs.IsValid()) {
		// nur, wenn Collection bereits erzeugt worden ist
			m_ObjectsDefs -> put_Parent (NULL);
			m_ObjectsDefs.Assign(NULL);
		}
		
	// alles freigeben
		ShutdownCoordSystemService();
		ReleasePropertySupportObjects();		// --> TDBPGISPropertySupport.h
		FreePropertiesCollection();				// --> TDBPGISPropertyBase.h

		m_bstrName.Empty();

#pragma TODO("Close schlie�t die Datenquelle ohne nochmals zu speichern.")
		m_fOpened = false;

	} COM_CATCH;
	return S_OK;
}

STDMETHODIMP CTDBPGISDatabase::BeginTrans()
{
	return E_NOTIMPL;
}

STDMETHODIMP CTDBPGISDatabase::ClearModificationLog(LONG Entry)
{
	return E_NOTIMPL;
}

STDMETHODIMP CTDBPGISDatabase::CommitTrans()
{
	return E_NOTIMPL;
}

STDMETHODIMP CTDBPGISDatabase::Rollback()
{
	return E_NOTIMPL;
}

STDMETHODIMP CTDBPGISDatabase::ReLoad (RELOADDATABASE rgWhat)
{
#if defined(_MFC_VER)
	AFX_MANAGE_STATE(AfxGetStaticModuleState())
#endif // defined(_MFC_VER)

HRESULT hr = S_OK;

	if (RELOADDATABASE_All == rgWhat) {
	// alles neu einlesen
		RETURN_FAILED_HRESULT(OnReLoadObjects());
		RETURN_FAILED_HRESULT(OnReLoadEnvelope());

	} else switch (rgWhat) {
	case RELOADDATABASE_Envelope:
		hr = OnReLoadEnvelope();
		break;

	case RELOADDATABASE_Objects:
		hr = OnReLoadObjects();
		break;
	}
	return hr;
}

HRESULT CTDBPGISDatabase::OnReLoadObjects()
{
#pragma TODO("S�mtliche Objektklassen neu einlesen")
	return S_OK;
}

HRESULT CTDBPGISDatabase::OnReLoadEnvelope()
{
#pragma TODO("Umschlie�endes Rechteck der Datenquelle neu einlesen")
	return S_OK;
}

///////////////////////////////////////////////////////////////////////////////
// ITRiASAccessDatabase

// liefert die Sammlung aller Objektklassen dieser Datenquelle
STDMETHODIMP CTDBPGISDatabase::get_ObjectsDefs (ITRiASObjectsCollection **pVal)
{
#if defined(_MFC_VER)
	AFX_MANAGE_STATE(AfxGetStaticModuleState())
#endif // defined(_MFC_VER)

	CHECKOUTPOINTER(pVal);
	ERROR_EXPR_TRUE(!IsOpened(), TRIASDB_E_DATABASE_NOT_OPENED)

// wenn die Collection bereits existiert, dann lediglich diese zur�ckliefern
	if (m_ObjectsDefs.IsValid()) 
		return LPUNKNOWN(*pVal = m_ObjectsDefs) -> AddRef(), S_OK;

// ansonsten neu erzeugen
	return EnsureObjectsDefs (pVal);
}

HRESULT CTDBPGISDatabase::EnsureObjectsDefs (ITRiASObjectsCollection **pVal)
{
	_ASSERTE(!m_ObjectsDefs.IsValid());
	COM_TRY {
	WTRiASObjectsCollection ObjsColl (CLSID_TDBPGISObjectsCollection);

		THROW_FAILED_HRESULT(ObjsColl -> put_Application(m_Application));
		THROW_FAILED_HRESULT(ObjsColl -> put_Parent(GetDispatch()));

#pragma TODO("ObjsColl mit allen Objektklassen dieser Datenquelle f�llen.")

	// BEGIN_SAMPLE_CODE
		using namespace sample_data;

	CComBSTR bstrGeometry(g_cbGeometry);
	CComBSTR bstrPrimFeature(g_cbObjektname);

		for (int i = 0; i < g_iObjectClassCount; i++) {
		// Objektklasse instantiieren
		const OBJECTCLASS *pClass = g_ObjectClasses[i];
		WTRiASObjects Objs (CLSID_TDBPGISObjects);

		// Objektklasse fertig initialisieren
			THROW_FAILED_HRESULT(WPersistStreamInit(Objs) -> InitNew());
			THROW_FAILED_HRESULT(Objs -> put_Application (m_Application));
			THROW_FAILED_HRESULT(Objs -> put_Parent (GetDispatch()));

		// Namen etc. dieser Objektklasse festlegen
			THROW_FAILED_HRESULT(Objs -> put_Name (CComBSTR(pClass -> m_pcoleName)));
			THROW_FAILED_HRESULT(Objs -> put_Description (CComBSTR(pClass -> m_pcoleDescription)));
			THROW_FAILED_HRESULT(Objs -> put_OKS (CComBSTR(pClass -> m_pcoleOKS)));

		// Typen der Objektklasse setzen
			THROW_FAILED_HRESULT(Objs -> put_CollectionType(OBJECTSCOLLECTIONTYPE_Class));
			THROW_FAILED_HRESULT(Objs -> put_Types(pClass -> m_rgTypes));
#if defined(_READWRITE)
			THROW_FAILED_HRESULT(Objs -> put_Updatable(VARIANT_TRUE));		// diese Datenquelle ist beschreibbar
#else
			THROW_FAILED_HRESULT(Objs -> put_Updatable(VARIANT_FALSE));		// diese Datenquelle ist schreibgesch�tzt
#endif // defined(_READWRITE)

		// Namen der Standard-Objekteigenschaften (Geometrie und Normal) setzen
			THROW_FAILED_HRESULT(Objs -> put_DefaultGeometry (bstrGeometry));
			THROW_FAILED_HRESULT(Objs -> put_PrimaryKey (bstrPrimFeature));

		// an der erzeugten Objektklasse unsere Nummer (cursor) speichern
			THROW_FAILED_HRESULT(SetPropertyBy (Objs, g_cbObjectsCursor, CComVariant(i+1), true));

		// die neu instantiierte Objektklasse zur Menge der Objektklassen hinzuf�gen
			THROW_FAILED_HRESULT(ObjsColl -> _Add (Objs, VARIANT_TRUE));
		}
	// END_SAMPLE_CODE

		m_ObjectsDefs = ObjsColl;
		if (NULL != pVal)
			*pVal = ObjsColl.detach();

	} COM_CATCH;
	return S_OK;
}

// liefert bzw. erzeugt eine neue Objektklasse dieser Datenquelle
STDMETHODIMP CTDBPGISDatabase::get_ObjectsDef(
	VARIANT vItem, VARIANT_BOOL fCreate, BSTR Type, ITRiASObjects **pIObjDef)
{
#if defined(_MFC_VER)
	AFX_MANAGE_STATE(AfxGetStaticModuleState())
#endif // defined(_MFC_VER)

	CHECKOUTPOINTER(pIObjDef);
	ERROR_EXPR_TRUE(!IsOpened(), TRIASDB_E_DATABASE_NOT_OPENED)

	if (!m_ObjectsDefs.IsValid())
	{
		RETURN_FAILED_HRESULT(EnsureObjectsDefs());
	}
	_ASSERTE(m_ObjectsDefs.IsValid());

HRESULT hr = m_ObjectsDefs -> Item (vItem, pIObjDef);

	if (TRIASDB_E_UNKNOWN_OBJECTS == hr && fCreate) {	// evtl. neu erzeugen
	CComVariant v;

		hr = v.ChangeType (VT_BSTR, &vItem);
		if (SUCCEEDED(hr)) {
		CIID ClsId (Type, CIID::INITCIID_InitFromProgId);

			if (!ClsId)	
				hr = m_ObjectsDefs -> Add (V_BSTR(&v), CComBSTR(g_cbNil), pIObjDef);	// default type verwenden
			else
				hr = m_ObjectsDefs -> Add (V_BSTR(&v), CComBSTR(ClsId.ProgID().c_str()), pIObjDef);
			if (S_OK == hr) hr = S_FALSE;				// Objektmenge wurde neu erzeugt
		}
	}
	return hr;
}

///////////////////////////////////////////////////////////////////////////////
// Umschlie�enden Datenbank-Container liefern
STDMETHODIMP CTDBPGISDatabase::get_Envelope (ENVELOPETYPE rgType, IDispatch **pVal)
{
#if defined(_MFC_VER)
	AFX_MANAGE_STATE(AfxGetStaticModuleState())
#endif // defined(_MFC_VER)

	CHECKOUTPOINTER(pVal);
	ERROR_EXPR_TRUE(!IsOpened(), TRIASDB_E_DATABASE_NOT_OPENED)

	COM_TRY {
	// Koordinaten deskalieren
	double dXMin = DBL_MAX, dYMin = DBL_MAX, dXMax = -DBL_MAX, dYMax = -DBL_MAX;

#pragma TODO("Umschlie�endes Rechteck aller Objekte der Datenquelle bestimmen.")
	// BEGIN_SAMPLE_CODE
		using namespace sample_data;

		dXMin = g_Container.m_pdX[0];
		dYMin = g_Container.m_pdY[0];
		dXMax = g_Container.m_pdX[1];
		dYMax = g_Container.m_pdY[1];
	// END_SAMPLE_CODE

	// CS-Transformator besorgen
	WTRiASCSTransform CST (GetPropertyFrom (GetDispatch(), g_cbTRiASCSTransform, (IDispatch *)NULL), false);

		_ASSERTE(CST.IsValid());

	// Container der Datenquelle setzen
	WTRiASSimpleRectangle Rect (CLSID_TRiASCSRectangleGeometry);
	
		THROW_FAILED_HRESULT(WPersistStreamInit(Rect) -> InitNew());
		THROW_FAILED_HRESULT(Rect -> SetRect (dXMin, dYMin, dXMax, dYMax));
		THROW_FAILED_HRESULT(WTRiASTransformGeometry(Rect) -> Transform ((CSID &)m_CtfGuid, CST));
		*pVal = Rect.detach();

	} COM_CATCH;
	return S_OK;
}

STDMETHODIMP CTDBPGISDatabase::get_ObjectCount (long *pVal)
{
#if defined(_MFC_VER)
	AFX_MANAGE_STATE(AfxGetStaticModuleState())
#endif // defined(_MFC_VER)

	CHECKOUTPOINTER(pVal);
	ERROR_EXPR_TRUE(!IsOpened(), TRIASDB_E_DATABASE_NOT_OPENED)

// BEGIN_SAMPLE_CODE
	using namespace sample_data;
	*pVal = g_iObjectCount;
// END_SAMPLE_CODE
	return S_OK;
}

// Implementation of get_AttachedCS
STDMETHODIMP CTDBPGISDatabase::get_AttachedCS(BSTR bstrDbName, BSTR *pbstrAssocCS)
{
	CHECKINPOINTER(bstrDbName);
	CHECKOUTPOINTER(pbstrAssocCS);

	USES_CONVERSION;

char cbBuffer[_MAX_PATH];
DWORD dwLen = GetPrivateProfileString("CoordSystem", "LoadFromFile", g_cbNil, 
		cbBuffer, sizeof(cbBuffer), OLE2A(bstrDbName));

	if (0 == dwLen) 
		return S_FALSE;

CComBSTR bstrCS (cbBuffer); 

	*pbstrAssocCS = bstrCS.Detach();
	return S_OK;
}

STDMETHODIMP CTDBPGISDatabase::get_Views (ITRiASViews **pVal)
{
	return E_NOTIMPL;
}

STDMETHODIMP CTDBPGISDatabase::get_StartViewName (BSTR *pVal)
{
	return E_NOTIMPL;
}

///////////////////////////////////////////////////////////////////////////////
// Koordinatensystem neu initialisieren
HRESULT CTDBPGISDatabase::InitCoordSystemService(BSTR bstrCS)
{
	COM_TRY {
	// CTF-Service holen/initialisieren
	WTRiASProperties Props (GetProperties());
	WTRiASCSTransform CST (GetProperty (Props, g_cbTRiASCSTransform, (IDispatch *)NULL), false);

		if (!CST.IsValid()) {
		// neuen CTF-Service erzeugen und am Objekt ablegen
		CIID CTFGuid;	// Guid vergeben

			CST = WTRiASCSTransform(CLSID_TRiASCSTransform);

		WTRiASCS CS (CLSID_TRIASCS);	

			if (FAILED(CS -> LoadFromFile(m_bstrName)) &&		// in *.prj Datei
				FAILED(CS -> LoadFromFile(bstrCS)))				// im zentralen Verzeichnis
			{
			// Der hier behandelte Fall setzt vorraus, da� alle Objektklassen dieser
			// Datenquelle in ein und dem selben Koordinatensystem vorliegen.

			// hier: WGS84 geod�tisch (ohne Projektion) annehmen
				THROW_FAILED_HRESULT(CS -> put_CoordSystemType(tcsCS_Geographic));		// Typ des CoordSystems setzen

			// Geod�tische Grundlage initialisieren
				{
				WTRiASCSGCS GCS;

					THROW_FAILED_HRESULT(CS -> get_GeographicCS(GCS.ppi()));
					THROW_FAILED_HRESULT(GCS -> put_GeodeticDatum(tcsGD_WorldGeodeticSystem1984));
					THROW_FAILED_HRESULT(GCS -> put_PrimeMeridian(tcsPM_Greenwich));
					THROW_FAILED_HRESULT(GCS -> put_UnitOfAngle(tcsUOA_Second));
				}

			// Datumsparameter einstellen
				{
				WTRiASCSDatumTransformation DTrans;

					THROW_FAILED_HRESULT(CS -> get_DatumTransformation(DTrans.ppi()));
					THROW_FAILED_HRESULT(DTrans -> put_GeodeticDatum(tcsGD_WorldGeodeticSystem1984));
					THROW_FAILED_HRESULT(DTrans -> put_TransformationAlgorithm(tcsDTA_PositionVector7ParamTransformation));
				}

				THROW_FAILED_HRESULT(CS -> put_GUID (CComBSTR(CTFGuid)));	// Guid zuordnen
			}
			else {
			CComBSTR bstrGuid;

				THROW_FAILED_HRESULT(CS -> get_GUID(&bstrGuid));
				CTFGuid = CIID(bstrGuid);

			// dieses CS in der Projektdatei von PolyGIS speichern
				USES_CONVERSION;
				WritePrivateProfileString("CoordSystem", "LoadFromFile", 
					OLE2A(bstrCS), OLE2A(m_bstrName));
			}

		// CS-Guid an der Datenbank speichern
			THROW_FAILED_HRESULT(SetProperty (Props, g_cbCSSGuid, CComBSTR(os_string(CTFGuid).c_str()), true));

		// dieses Koordinatensystem als InputCS zum Transformator hinzuf�gen
			THROW_FAILED_HRESULT(CST -> AddInputCS (CS));
			m_CtfGuid = CTFGuid;			// Guid des Koordinatensystems hier speichern

		// als Property an der Datenbank speichern
			THROW_FAILED_HRESULT(SetProperty (Props, g_cbTRiASCSTransform, CComVariant(CST), true));
		}

	// Ausgabesystem von der Connection holen (hat sich u.U. ge�ndert) und an unserem Transformator
	// setzen
	WTRiASConnection Conn;

		THROW_FAILED_HRESULT(FindSpecificParent (m_Parent, Conn.ppi()));

	WTRiASCS CSOut (GetPropertyFrom (WTRiASPropertyBase(Conn), g_cbTRiASCSService, (IDispatch *)NULL), false);

		_ASSERTE(CSOut.IsValid());	// mu� bereits existieren
		THROW_FAILED_HRESULT(CST -> putref_OutputCS (CSOut));
		THROW_FAILED_HRESULT(CSOut -> Recompute());		// TransformationsPfad neu berechnen

	} COM_CATCH;
	return S_OK;
}

// Koordinatensystem freigeben
HRESULT CTDBPGISDatabase::ShutdownCoordSystemService()
{
	COM_TRY {
	WTRiASCSTransform CST (GetProperty (GetProperties(), g_cbTRiASCSTransform, (IDispatch *)NULL), false);

		ERROR_EXPR_TRUE(!CST.IsValid(), E_UNEXPECTED);
		THROW_FAILED_HRESULT(CST -> ShutDown());
	} COM_CATCH;
	return S_OK;
}

/////////////////////////////////////////////////////////////////////////////
// OleItemContainerSupport
// nach einer bestimmten Objektklasse fragen
HRESULT CTDBPGISDatabase::GetObjectsDef (
	LPCTSTR pcItem, DWORD dwSpeedNeeded, REFIID riid, LPVOID *ppvObj, bool fTestRunningOnly)
{
	if (!m_ObjectsDefs) {
		if (BINDSPEED_IMMEDIATE == dwSpeedNeeded)
			return MK_E_EXCEEDEDDEADLINE;

	// evtl. Neuerzeugen der ben�tigten Collection
	WTRiASObjectsCollection Coll;

		RETURN_FAILED_HRESULT(get_ObjectsDefs (Coll.ppi()));	// fills in m_ObjectsDefs
	}
	_ASSERTE(m_ObjectsDefs.IsValid());

HRESULT hr = S_OK;

	COM_TRY {
	WTRiASObjects Objs;
		
		hr = m_ObjectsDefs -> Item (CComVariant(pcItem), Objs.ppi());
		if (TRIASDB_E_UNKNOWN_OBJECTS == hr && !fTestRunningOnly) {
		// Objektklasse ist neu und mu� erzeugt werden
			if (BINDSPEED_IMMEDIATE == dwSpeedNeeded)
				return MK_E_EXCEEDEDDEADLINE;
			hr = m_ObjectsDefs -> Add (CComBSTR(pcItem), CComBSTR("TRiASDB.TDBPGISObjects.1"), Objs.ppi());
		}

		if (SUCCEEDED(hr) && !fTestRunningOnly && NULL != ppvObj)	// Objektklasse ist (jetzt) bekannt
		{
			_ASSERTE(Objs.IsValid());
			THROW_FAILED_HRESULT(Objs -> QueryInterface (riid, ppvObj));
		}
	} COM_CATCH;
	return hr;
}

/////////////////////////////////////////////////////////////////////////////
// nach einem bestimmten Objekt fragen
HRESULT CTDBPGISDatabase::GetObjectDef (
	LPCTSTR pcItem, DWORD dwSpeedNeeded, REFIID riid, LPVOID *ppvObj, bool fTestRunningOnly)
{
	if (BINDSPEED_IMMEDIATE == dwSpeedNeeded)	// mu� immer in der eigentlichen Datenbank gesucht werden
		return MK_E_EXCEEDEDDEADLINE;

	COM_TRY {
#pragma TODO("Objekt anhand des �bergenenen Displaynames wiederfinden.")

	} COM_CATCH;
	return S_OK;
}

// DisplayName parsen und Moniker liefern
HRESULT CTDBPGISDatabase::ParseObjectsDef (
	LPCTSTR pcItem, ULONG ulSkipped, ULONG *pulEaten, IMoniker **ppmkOut)
{
CComBSTR bstrItem(pcItem);

	RETURN_FAILED_HRESULT(CreateItemMoniker (g_cbMkDel, bstrItem, ppmkOut));
	*pulEaten += bstrItem.Length();
	return S_OK;
}

HRESULT CTDBPGISDatabase::ParseObjectDef (
	LPCTSTR pcItem, ULONG ulSkipped, ULONG *pulEaten, IMoniker **ppmkOut)
{
CComBSTR bstrItem(pcItem);

	RETURN_FAILED_HRESULT(CreateItemMoniker (g_cbMkDel, bstrItem, ppmkOut));
	*pulEaten += bstrItem.Length();
	return S_OK;
}

///////////////////////////////////////////////////////////////////////////////
// GetPolyGISPathFromSource
HRESULT CTDBPGISDatabase::GetPolyGISPathFromSource(BSTR bstrSource, BSTR *pbstrPath)
{
	_ASSERTE(NULL != pbstrPath);
	*pbstrPath = NULL;

	COM_TRY {
	WParseStringPairs Parse (CLSID_ParseStringPairs);	// throws hr
	CComBSTR bstrVal;
	long lPairs = 0;

		THROW_FAILED_HRESULT(Parse -> put_Pattern(CComBSTR(g_cbCollatePattern)));
		THROW_FAILED_HRESULT(Parse -> Parse(bstrSource, &lPairs));

		if (0 == lPairs)
			return E_UNEXPECTED;		// keine Key/Value-Paare gefunden

		THROW_FAILED_HRESULT(Parse -> get_Value (CComBSTR("POLYGIS"), CLEARED(&bstrVal)));
		*pbstrPath = bstrVal.Detach();

	} COM_CATCH;
	return S_OK;
}

///////////////////////////////////////////////////////////////////////////////
// GetPolyGISCoordSys
HRESULT CTDBPGISDatabase::GetPolyGISCoordSys(BSTR bstrSource, BSTR *pbstrCS)
{
	_ASSERTE(NULL != pbstrCS);
	*pbstrCS = NULL;

	COM_TRY {
	WParseStringPairs Parse (CLSID_ParseStringPairs);	// throws hr
	CComBSTR bstrVal;
	long lPairs = 0;

		THROW_FAILED_HRESULT(Parse -> put_Pattern(CComBSTR(g_cbCollatePattern)));
		THROW_FAILED_HRESULT(Parse -> Parse(bstrSource, &lPairs));

		if (0 == lPairs)
			return E_UNEXPECTED;		// keine Key/Value-Paare gefunden

		THROW_FAILED_HRESULT(Parse -> get_Value (CComBSTR("COORDSYS"), CLEARED(&bstrVal)));
		*pbstrCS = bstrVal.Detach();

	} COM_CATCH;
	return S_OK;
}

