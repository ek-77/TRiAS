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
// @module TDBPGISObject.cpp | Implementation of the <c CTDBPGISObject> class

#include "stdafx.h"

#include "Strings.h"

#include "TDBPGIS.h"
#include "TDBPGISObject.h"
#include "TDBPGISPropertySupport.h"

#if defined(_DEBUG)
#if defined(_MFC_VER)
#define new DEBUG_NEW
#endif // defined(_MFC_VER)
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif // _DEBUG

/////////////////////////////////////////////////////////////////////////////
// CTDBPGISObject

STDMETHODIMP CTDBPGISObject::InterfaceSupportsErrorInfo(REFIID riid)
{
	static const IID* arr[] = 
	{
		&IID_ITRiASObject,
	};
	for (int i=0;i<sizeof(arr)/sizeof(arr[0]);i++)
	{
		if (InlineIsEqualGUID(*arr[i],riid))
			return S_OK;
	}
	return S_FALSE;
}

///////////////////////////////////////////////////////////////////////////////
// ITRiASObjectCallback

STDMETHODIMP CTDBPGISObject::get_DefaultType (BSTR *pbstrType)
{
	CHECKOUTPOINTER(pbstrType);

CIID Guid (GetObjectCLSID());
CComBSTR bstrType (Guid.ProgID().c_str());

	*pbstrType = bstrType.Detach();
	return S_OK;
}

// called during InitNew/Load
STDMETHODIMP CTDBPGISObject::SetupObject(SETUPOBJECTMODE rgMode)
{
	_ASSERTE(SETUPOBJECTMODE_InitOrLoad == rgMode);		// z.Zt nur dieses
// BEGIN_SAMPLE_CODE
	COM_TRY {
	// Properties zum aggregierten Objekt hinzuf�gen
	WTRiASPropertyMapHandler MapHandler(m_BaseUnk);

		THROW_FAILED_HRESULT(MapHandler -> AddMapEntry (
			CComBSTR(g_cbObjectCursor), (INT_PTR)&CLSID_TDBPGISCursorProperty, PROPERTYSUPPORT_NOFLAGS, vtMissing));

	} COM_CATCH;
// END_SAMPLE_CODE
	return S_OK;
}

STDMETHODIMP CTDBPGISObject::OnChanging (CHANGEDOBJECT rgWhat, VARIANT vNewValue, VARIANT_BOOL *pDisAllow)
{
	CHECKOUTPOINTER(pDisAllow);

#if defined(_READWRITE)
	*pDisAllow = VARIANT_FALSE;		// immer einverstanden sein
	return S_OK;
#else
// w�hrend der Initialisierungsphase ist eine Modifikation erlaubt, jedoch keine Datenbankzugriffe(!)
bool fIsInitializing = false;

	COM_TRY {
	WTRiASObject Obj;
	INT_PTR hObjs = NULL;


		THROW_FAILED_HRESULT(m_BaseUnk -> QueryInterface (Obj.ppi()));
		THROW_FAILED_HRESULT(Obj -> get_ObjectsHandle (&hObjs));
		fIsInitializing = (NULL == hObjs) ? true : false;

	} COM_CATCH;

	if (fIsInitializing) {
		*pDisAllow = VARIANT_FALSE;		// immer einverstanden sein
		return S_FALSE;					// OnChanged trotzdem nicht mehr rufen
	} else {
		*pDisAllow = VARIANT_TRUE;		// verhindert Modifikation (rgWhat siehe OnChanged)
		return TRIASDB_E_OBJECTSNOTUPDATABLE;
	}
#endif // defined(_READWRITE)
}

STDMETHODIMP CTDBPGISObject::OnChanged (CHANGEDOBJECT rgWhat, VARIANT vOldValue)
{
#if defined(_READWRITE)
	return S_OK;
#else
	return TRIASDB_E_OBJECTSNOTUPDATABLE;
#endif // defined(_READWRITE)
}

// Objekt wird logisch freigegeben
STDMETHODIMP CTDBPGISObject::OnFinalRelease()
{
// BEGIN_SAMPLE_CODE
	COM_TRY {
	// unsere Nummer (Cursor) freigeben und damit dieses Objekt aus der Handlemap herausl�schen
		THROW_FAILED_HRESULT(DelPropertyBy (WDispatch(m_BaseUnk), g_cbObjectCursor));
	} COM_CATCH;
// END_SAMPLE_CODE
	return S_OK;
}

STDMETHODIMP CTDBPGISObject::OnDelete()
{
// diese Funktion wird nur dann gerufen, wenn CTDBPGISObjects::OnDelete() E_NOTIMPL
// geliefert hat.
#pragma TODO("Objekt aus Datenquelle herausl�schen.")

	// S_OK:	wurde erfolgreich gel�scht
	// ansonsten Fehlercode
	return S_OK;
}

STDMETHODIMP CTDBPGISObject::SetupFeatures(SETUPFEATURESMODE rgMode)
{
#if defined(_MFC_VER)
	AFX_MANAGE_STATE(AfxGetStaticModuleState())
#endif // defined(_MFC_VER)

// Diese Funktion darf E_NOTIMPL liefern, wenn die Attributmenge f�r das
// Objekt vollst�ndig durch die Objektklasse bestimmt wird.

// unterst�tzte Attribute mit Objekt assoziieren
	if (!m_fHasFeatures || (rgMode & SETUPFEATURESMODE_Force)) {
		COM_TRY {
		WTRiASFeatures Feats (CLSID_TDBPGISFeatures);

			THROW_FAILED_HRESULT(WTRiASObject(m_BaseUnk) -> put_Features (Feats))
			THROW_FAILED_HRESULT(Feats -> Refresh());	// ruft CTDBPGISFeatures::SetupFeatures()
			m_fHasFeatures = true;

		} COM_CATCH;
	}

// existierende Geometrien mit dieser Objektklasse assoziieren
	if (!m_fHasGeoFeatures || (rgMode & SETUPFEATURESMODE_Force)) {
		COM_TRY {
		WTRiASFeatures GeoFeats (CLSID_TDBPGISGeoFeatures);

			THROW_FAILED_HRESULT(WTRiASObject(m_BaseUnk) -> put_GeometryFeatures (GeoFeats))
			THROW_FAILED_HRESULT(GeoFeats -> Refresh());	// ruft CTDBPGISGeoFeatures::SetupFeatures()
			m_fHasGeoFeatures = true;

		} COM_CATCH;
	}
	return S_OK;
}

