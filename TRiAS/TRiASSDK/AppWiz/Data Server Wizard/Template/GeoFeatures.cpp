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
// @module $$root$$GeoFeatures.cpp | Implementation of the <c C$$safe_root$$GeoFeatures> class

#include "stdafx.h"

#include "Strings.h"

#include "$$root$$.h"
#include "$$root$$GeoFeatures.h"

#if defined(_DEBUG)
#if defined(_MFC_VER)
#define new DEBUG_NEW
#endif // defined(_MFC_VER)
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif // _DEBUG

/////////////////////////////////////////////////////////////////////////////
// C$$safe_root$$GeoFeatures

STDMETHODIMP C$$safe_root$$GeoFeatures::InterfaceSupportsErrorInfo(REFIID riid)
{
	static const IID* arr[] = 
	{
		&IID_ITRiASFeatures,
	};
	for (int i=0;i<sizeof(arr)/sizeof(arr[0]);i++)
	{
		if (InlineIsEqualGUID(*arr[i],riid))
			return S_OK;
	}
	return S_FALSE;
}

///////////////////////////////////////////////////////////////////////////////
// ITRiASFeaturesCallback

STDMETHODIMP C$$safe_root$$GeoFeatures::get_DefaultType (BSTR *pbstrType)
{
	CHECKOUTPOINTER(pbstrType);

CIID Guid (CLSID_TRiASSimpleGeoFeature);		// DefaultType der _Elemente_ !
CComBSTR bstrType (Guid.ProgID().c_str());

	*pbstrType = bstrType.Detach();
	return S_OK;
}

// eine neue Objekteigenschaft soll erzeugt werden
STDMETHODIMP C$$safe_root$$GeoFeatures::OnCreate (VARIANT NameOrHandle, BSTR Type, FEATURETYPE rgType, ITRiASFeature **ppIFeat)
{
// wird z.Zt. nicht gerufen (TRiAS unterst�tzt lediglich eine Geometrie je Objektklasse)
	_ASSERTE(FALSE);
	return E_NOTIMPL;
}

/////////////////////////////////////////////////////////////////////////////
//
STDMETHODIMP C$$safe_root$$GeoFeatures::OnChanging(CHANGEDFEATURES rgWhat, VARIANT vNewValue, VARIANT_BOOL *pDisAllow)
{
	CHECKOUTPOINTER(pDisAllow);

$$IF(READ_WRITE)
#if defined(_READWRITE)
	*pDisAllow = VARIANT_FALSE;		// immer einverstanden sein
	return S_OK;
#else
	*pDisAllow = VARIANT_TRUE;		// nie einverstanden sein
	return TRIASDB_E_OBJECTSNOTUPDATABLE;
#endif
$$ELSE
	*pDisAllow = VARIANT_TRUE;		// verhindert Modifikation (rgWhat siehe OnChanged)
	return S_OK;
$$ENDIF
}

// Irgend was wurde modifiziert
STDMETHODIMP C$$safe_root$$GeoFeatures::OnChanged(CHANGEDFEATURES rgWhat, VARIANT vOldValue)
{
	return E_NOTIMPL;
}

// Objekt wird logisch freigegeben
STDMETHODIMP C$$safe_root$$GeoFeatures::OnFinalRelease()
{
	return S_OK;
}

/////////////////////////////////////////////////////////////////////////////
// Ein Objekt soll gel�scht werden
STDMETHODIMP C$$safe_root$$GeoFeatures::OnDelete (VARIANT vWhich)
{
// wird z.Zt. nicht gerufen (TRiAS unterst�tzt lediglich eine Geometrie je Objektklasse)
	_ASSERTE(FALSE);
	return E_NOTIMPL;
}

STDMETHODIMP C$$safe_root$$GeoFeatures::SetupFeatures(IDispatch *pIParent, SETUPFEATURESMODE rgMode)
{
// Der Parameter pIParent enth�lt einen Zeiger auf das Bezugsobjekt (Objektklasse oder Objekt) f�r 
// welches die Objekteigenschaften erzeugt werden sollen
#pragma TODO("Hauptgeometrie- Objekteigenschaft instantiieren und zum Bezugsobjekt hinzuf�gen.")

	COM_TRY {
	WTRiASFeatures BaseFeats;

		THROW_FAILED_HRESULT(m_BaseUnk -> QueryInterface (BaseFeats.ppi()));

$$IF(EMIT_SAMPLE_CODE)
	// BEGIN_SAMPLE_CODE
		using namespace sample_data;

	WTRiASFeature Feat (CLSID_$$safe_root$$GeoFeature);		// Feature erzeugen

	// fertig initialisieren
		THROW_FAILED_HRESULT(WPersistStreamInit(Feat) -> InitNew());

	// Namen etc. stzen
	FEATURETYPE rgType = (FEATURETYPE)(FEATURETYPE_Object | DATATYPE_FROM_VT(VT_ARRAY|VT_UI1) | FEATURETYPE_IsPrimaryFeature | FEATURETYPE_IsGlobal);

		THROW_FAILED_HRESULT(Feat -> put_Parent (pIParent));
		THROW_FAILED_HRESULT(Feat -> put_Type (rgType));
		THROW_FAILED_HRESULT(Feat -> put_Name (CComBSTR(g_cbGeometry)));

	// das neu instantiierte Attribut zu dieser Attributsammlung hinzuf�gen
		THROW_FAILED_HRESULT(BaseFeats -> _Add (Feat, VARIANT_TRUE));
	// END_SAMPLEDATA
$$ELSE
//	// Hauptgeometrie in GeoFeat instantiieren
//	WTRiASFeature GeoFeat (CLSID($$safe_root$$GeoFeature);
//
//		THROW_FAILED_HRESULT(GeoFeat -> put_Name (...));
//		...
//		THROW_FAILED_HRESULT(BaseFeats -> _Add (GeoFeat, VARIANT_TRUE));
$$ENDIF
	} COM_CATCH;
	return S_OK;
}
