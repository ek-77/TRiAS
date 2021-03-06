// $Header: $
// Copyright� 1998-$$year$$ $$company$$, All rights reserved
// Created: $$date_n_time$$ 
//
// This file was generated by the TRiASDB Data Server Wizard $$this_version$$
//
$$IF(EMIT_WARRANTIES)
// THIS CODE AND INFORMATION IS PROVIDED "AS IS" WITHOUT WARRANTY OF ANY 
// KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
// IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS FOR A PARTICULAR 
// PURPOSE.
//
$$ENDIF // EMIT_WARRANTIES
// @doc
// @module $$root$$Object.cpp | Implementation of the <c C$$safe_root$$Object> class

#include "stdafx.h"

#include "Strings.h"

#include "$$root$$.h"
#include "$$root$$Object.h"
#include "$$root$$PropertySupport.h"

#if defined(_DEBUG)
#if defined(_MFC_VER)
#define new DEBUG_NEW
#endif // defined(_MFC_VER)
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif // _DEBUG

/////////////////////////////////////////////////////////////////////////////
// C$$safe_root$$Object

STDMETHODIMP C$$safe_root$$Object::InterfaceSupportsErrorInfo(REFIID riid)
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

STDMETHODIMP C$$safe_root$$Object::get_DefaultType (BSTR *pbstrType)
{
	CHECKOUTPOINTER(pbstrType);

CIID Guid (GetObjectCLSID());
CComBSTR bstrType (Guid.ProgID().c_str());

	*pbstrType = bstrType.Detach();
	return S_OK;
}

// called during InitNew/Load
STDMETHODIMP C$$safe_root$$Object::SetupObject(SETUPOBJECTMODE rgMode)
{
	_ASSERTE(SETUPOBJECTMODE_InitOrLoad == rgMode);		// z.Zt nur dieses
$$IF(EMIT_SAMPLE_CODE)
// BEGIN_SAMPLE_CODE
	COM_TRY {
	// Properties zum aggregierten Objekt hinzuf�gen
	WTRiASPropertyMapHandler MapHandler(m_BaseUnk);

$$IF(READ_WRITE)
		THROW_FAILED_HRESULT(MapHandler -> AddMapEntry (
			CComBSTR(g_cbObjectCursor), (INT_PTR)&CLSID_$$safe_root$$CursorProperty, PROPERTYSUPPORT_NOFLAGS, vtMissing));
$$ELSE
		THROW_FAILED_HRESULT(MapHandler -> AddMapEntry (
			CComBSTR(g_cbObjectCursor), (INT_PTR)&CLSID_$$safe_root$$ObjectCursorProperty, PROPERTYSUPPORT_NOFLAGS, vtMissing));
$$ENDIF // $$IF(READ_WRITE)

	} COM_CATCH;
// END_SAMPLE_CODE
$$ENDIF // $$IF(EMIT_SAMPLE_CODE)
$$IF(EMIT_PERSISTSTREAM_OBJECT)
	m_fIsDirty = false;
	m_fIsInitialized = true;
$$ENDIF // IF(EMIT_PERSISTSTREAM_OBJECT)
	return S_OK;
}

STDMETHODIMP C$$safe_root$$Object::OnChanging (CHANGEDOBJECT rgWhat, VARIANT vNewValue, VARIANT_BOOL *pDisAllow)
{
	CHECKOUTPOINTER(pDisAllow);

$$IF(READ_WRITE)
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
$$ELSE
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
$$ENDIF
}

STDMETHODIMP C$$safe_root$$Object::OnChanged (CHANGEDOBJECT rgWhat, VARIANT vOldValue)
{
$$IF(READ_WRITE)
#if defined(_READWRITE)
	return S_OK;
#else
	return TRIASDB_E_OBJECTSNOTUPDATABLE;
#endif // defined(_READWRITE)
$$ELSE
	return TRIASDB_E_OBJECTSNOTUPDATABLE;
$$ENDIF
}

// Objekt wird logisch freigegeben
STDMETHODIMP C$$safe_root$$Object::OnFinalRelease()
{
$$IF(EMIT_SAMPLE_CODE)
// BEGIN_SAMPLE_CODE
	COM_TRY {
	// unsere Nummer (Cursor) freigeben und damit dieses Objekt aus der Handlemap herausl�schen
		THROW_FAILED_HRESULT(DelPropertyBy (WDispatch(m_BaseUnk), g_cbObjectCursor));
	} COM_CATCH;
// END_SAMPLE_CODE
$$ENDIF
	return S_OK;
}

STDMETHODIMP C$$safe_root$$Object::OnDelete()
{
$$IF(READ_WRITE)
// diese Funktion wird nur dann gerufen, wenn C$$safe_root$$Objects::OnDelete() E_NOTIMPL
// geliefert hat.
#pragma TODO("Objekt aus Datenquelle herausl�schen.")

	// S_OK:	wurde erfolgreich gel�scht
	// ansonsten Fehlercode
	return S_OK;
$$ELSE
	return TRIASDB_E_OBJECTSNOTUPDATABLE;
$$ENDIF
}

STDMETHODIMP C$$safe_root$$Object::SetupFeatures(SETUPFEATURESMODE rgMode)
{
#if defined(_MFC_VER)
	AFX_MANAGE_STATE(AfxGetStaticModuleState())
#endif // defined(_MFC_VER)
$$IF(EMIT_PERSISTSTREAM_OBJECT)
	ERROR_EXPR_TRUE(!m_fIsInitialized, E_UNEXPECTED);
$$ENDIF // $$IF(EMIT_PERSISTSTREAM_OBJECT)

// Diese Funktion darf E_NOTIMPL liefern, wenn die Attributmenge f�r das
// Objekt vollst�ndig durch die Objektklasse bestimmt wird.

// unterst�tzte Attribute mit Objekt assoziieren
	if (!m_fHasFeatures || (rgMode & SETUPFEATURESMODE_Force)) {
		COM_TRY {
		WTRiASFeatures Feats (CLSID_$$safe_root$$Features);

			THROW_FAILED_HRESULT(WTRiASObject(m_BaseUnk) -> put_Features (Feats))
			THROW_FAILED_HRESULT(Feats -> Refresh());	// ruft C$$safe_root$$Features::SetupFeatures()
			m_fHasFeatures = true;

		} COM_CATCH;
	}

// existierende Geometrien mit dieser Objektklasse assoziieren
	if (!m_fHasGeoFeatures || (rgMode & SETUPFEATURESMODE_Force)) {
		COM_TRY {
		WTRiASFeatures GeoFeats (CLSID_$$safe_root$$GeoFeatures);

			THROW_FAILED_HRESULT(WTRiASObject(m_BaseUnk) -> put_GeometryFeatures (GeoFeats))
			THROW_FAILED_HRESULT(GeoFeats -> Refresh());	// ruft C$$safe_root$$GeoFeatures::SetupFeatures()
			m_fHasGeoFeatures = true;

		} COM_CATCH;
	}
	return S_OK;
}

$$IF(EMIT_PERSISTSTREAM_OBJECT)
/////////////////////////////////////////////////////////////////////////////
// IPersist
STDMETHODIMP C$$safe_root$$Object::GetClassID (CLSID *pClassID)
{
	if (NULL == pClassID) 
		return E_POINTER;

	*pClassID = GetObjectCLSID();
	return S_OK;
}

///////////////////////////////////////////////////////////////////////////////
// IPersistStream

STDMETHODIMP C$$safe_root$$Object::IsDirty (void)
{
	return m_fIsDirty ? S_OK : WPersistStreamInit(m_BaseUnk) -> IsDirty();
}

STDMETHODIMP C$$safe_root$$Object::Load (LPSTREAM pStm)
{
	if (m_fIsInitialized)
		return E_UNEXPECTED;

long lSignature = 0L;

	THROW_FAILED_HRESULT(LoadLong (pStm, lSignature));			// Signatur
	if ($$SAFE_ROOT$$OBJECT_SIGNATURE != lSignature)
		return TRIASDB_E_BADOBJECTSIGNATURE;

long lVersion = 0L;

	RETURN_FAILED_HRESULT(LoadLong (pStm, lVersion));			// VersionInfo
	if (lVersion > LASTKNOWN_$$SAFE_ROOT$$OBJECT_VERSION)
		return TRIASDB_W_NEWEROBJECT;

// jetzt Bezugsobjekt laden
	RETURN_FAILED_HRESULT(WPersistStreamInit(m_BaseUnk) -> Load (pStm));

#pragma TODO("Eigene persistente Daten laden (s. Save).")

	m_fIsDirty = false;
	m_fIsInitialized = true;
	return S_OK;
}

STDMETHODIMP C$$safe_root$$Object::Save (LPSTREAM pStm, BOOL fClearDirty)
{
	RETURN_FAILED_HRESULT(SaveLong(pStm, $$SAFE_ROOT$$OBJECT_SIGNATURE));
	RETURN_FAILED_HRESULT(SaveLong(pStm, $$SAFE_ROOT$$OBJECT_VERSION));

// jetzt Bezugsobjekt speichern
	RETURN_FAILED_HRESULT(WPersistStreamInit(m_BaseUnk) -> Save (pStm, fClearDirty));

#pragma TODO("Eigene persistente Daten speichern (s. Load).")

	if (fClearDirty)
		m_fIsDirty = false;
	return S_OK;
}

STDMETHODIMP C$$safe_root$$Object::GetSizeMax (ULARGE_INTEGER *pcbSize)
{
	if (NULL == pcbSize) 
		return E_POINTER;

	RETURN_FAILED_HRESULT(WPersistStreamInit(m_BaseUnk) -> GetSizeMax (pcbSize));
	pcbSize -> QuadPart += 2*sizeof(long);

#pragma TODO("Speicherbedarf der eigenen persistenten Daten berechnen.")
//	pcbSize -> QuadPart += ...;
	return S_OK;
}

/////////////////////////////////////////////////////////////////////////////
// IPersistStreamInit

STDMETHODIMP C$$safe_root$$Object::InitNew (void)
{
	if (m_fIsInitialized)
		return E_UNEXPECTED;

	COM_TRY {
	// jetzt fertig initialiseren
		THROW_FAILED_HRESULT(WPersistStreamInit(m_BaseUnk) -> InitNew());

#pragma TODO("Fertig initialisieren.")

	} COM_CATCH;
	m_fIsDirty = false;	
	m_fIsInitialized = true;
	return S_OK;
}
$$ENDIF // IF(EMIT_PERSISTSTREAM_OBJECT)

