// $Header: $
// Copyright� 1998-2001 TRiAS GmbH Potsdam, All rights reserved
// Created: 27.04.2001 16:50:09 
//
// This file was generated by the TRiASDB Data Server Wizard V1.02.115 (#HK010427)
//
// THIS CODE AND INFORMATION IS PROVIDED "AS IS" WITHOUT WARRANTY OF ANY 
// KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
// IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS FOR A PARTICULAR 
// PURPOSE.
//
// @doc
// @module TRiASOGCGeoFeatures.cpp | Implementation of the <c CTRiASOGCGeoFeatures> class

#include "stdafx.h"

#include "Strings.h"

#include "TRiASOGC.h"
#include "TRiASOGCGeoFeatures.h"

#if defined(_DEBUG)
#if defined(_MFC_VER)
#define new DEBUG_NEW
#endif // defined(_MFC_VER)
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif // _DEBUG

/////////////////////////////////////////////////////////////////////////////
// CTRiASOGCGeoFeatures

STDMETHODIMP CTRiASOGCGeoFeatures::InterfaceSupportsErrorInfo(REFIID riid)
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

STDMETHODIMP CTRiASOGCGeoFeatures::get_DefaultType (BSTR *pbstrType)
{
	CHECKOUTPOINTER(pbstrType);

CIID Guid (CLSID_TRiASSimpleGeoFeature);		// DefaultType der _Elemente_ !
CComBSTR bstrType (Guid.ProgID().c_str());

	*pbstrType = bstrType.Detach();
	return S_OK;
}

// eine neue Objekteigenschaft soll erzeugt werden
STDMETHODIMP CTRiASOGCGeoFeatures::OnCreate (VARIANT NameOrHandle, BSTR Type, FEATURETYPE rgType, ITRiASFeature **ppIFeat)
{
// wird z.Zt. nicht gerufen (TRiAS unterst�tzt lediglich eine Geometrie je Objektklasse)
	_ASSERTE(FALSE);
	return E_NOTIMPL;
}

/////////////////////////////////////////////////////////////////////////////
//
STDMETHODIMP CTRiASOGCGeoFeatures::OnChanging(CHANGEDFEATURES rgWhat, VARIANT vNewValue, VARIANT_BOOL *pDisAllow)
{
	CHECKOUTPOINTER(pDisAllow);

#if defined(_READWRITE)
	*pDisAllow = VARIANT_FALSE;		// immer einverstanden sein
	return S_OK;
#else
	*pDisAllow = VARIANT_TRUE;		// nie einverstanden sein
	return TRIASDB_E_OBJECTSNOTUPDATABLE;
#endif
}

// Irgend was wurde modifiziert
STDMETHODIMP CTRiASOGCGeoFeatures::OnChanged(CHANGEDFEATURES rgWhat, VARIANT vOldValue)
{
	return E_NOTIMPL;
}

// Objekt wird logisch freigegeben
STDMETHODIMP CTRiASOGCGeoFeatures::OnFinalRelease()
{
	return S_OK;
}

/////////////////////////////////////////////////////////////////////////////
// Ein Objekt soll gel�scht werden
STDMETHODIMP CTRiASOGCGeoFeatures::OnDelete (VARIANT vWhich)
{
// wird z.Zt. nicht gerufen (TRiAS unterst�tzt lediglich eine Geometrie je Objektklasse)
	_ASSERTE(FALSE);
	return E_NOTIMPL;
}

STDMETHODIMP CTRiASOGCGeoFeatures::SetupFeatures(IDispatch *pIParent, SETUPFEATURESMODE rgMode)
{
// Der Parameter pIParent enth�lt einen Zeiger auf das Bezugsobjekt (Objektklasse oder Objekt) f�r 
// welches die Objekteigenschaften erzeugt werden sollen
#pragma TODO("Hauptgeometrie- Objekteigenschaft instantiieren und zum Bezugsobjekt hinzuf�gen.")

	COM_TRY {
	WTRiASFeatures BaseFeats;

		THROW_FAILED_HRESULT(m_BaseUnk -> QueryInterface (BaseFeats.ppi()));

	// BEGIN_SAMPLE_CODE
		using namespace sample_data;

	WTRiASFeature Feat (CLSID_TRiASOGCGeoFeature);		// Feature erzeugen

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
	} COM_CATCH;
	return S_OK;
}

