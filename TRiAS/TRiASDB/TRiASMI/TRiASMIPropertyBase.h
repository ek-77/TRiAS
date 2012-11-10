// $Header: $
// Copyright� 1998-2000 TRiAS GmbH Potsdam, All rights reserved
// Created: 14.09.2000 21:21:48 
//
// This file was generated by the TRiASDB Data Server Wizard V1.02.103 (#HK000729)
//
// @doc
// @module TRiASMIPropertyBase.h | Implementation des <i ITRiASPropertyBase>- Interfaces

#if !defined(_PROPERTYBASE_H__E7BFBE4A_11FA_41B6_BFE9_956E8CEA626A__INCLUDED_)
#define _PROPERTYBASE_H__E7BFBE4A_11FA_41B6_BFE9_956E8CEA626A__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000

// Header include diagnostics
#if defined(_TRIAS_DBG_HEADER_DIAGNOSTICS)
#pragma message(__TIME__": include " __FILE__ )
#endif

///////////////////////////////////////////////////////////////////////////////
// FMTID f�r Speichern/Laden
// {7CD5571E-6427-11D2-9EDE-006008447800}
extern "C" const FMTID __declspec(selectany) FMTID_EnumProperties = 
	{0x7cd5571e,0x6427,0x11d2,{0x9e,0xde,0x00,0x60,0x08,0x44,0x78,0x00}};

///////////////////////////////////////////////////////////////////////////////
// Properties f�r ein Objekt verwalten
template<class C>
class ATL_NO_VTABLE CManagePropertyBase :
	public IDispatchImpl<ITRiASPropertyBase, &IID_ITRiASPropertyBase, &LIBID_TRiASDB,
		TYPELIB_TRiASDB_VERSION_MAJOR, TYPELIB_TRiASDB_VERSION_MINOR>
{
public:
	STDMETHOD(get_Properties) (ITRiASProperties **pVal)
	{
		AFX_MANAGE_STATE(AfxGetStaticModuleState())
		RETURN_FAILED_HRESULT(((C *)this) -> IsInitialized());
		if (NULL == pVal) 
			return TRIASDB_E_INVALID_PARAMETER;
		if (!m_Properties.IsValid())
		{
			RETURN_FAILED_HRESULT(CreatePropertiesCollection());
		}
		_ASSERT(m_Properties.IsValid());
		return ClonePropertiesCollection(pVal);
	}

	STDMETHOD(put_Properties) (ITRiASProperties *pVal)
	{
		AFX_MANAGE_STATE(AfxGetStaticModuleState())

	// bisherige Properties loslassen
		if (m_Properties.IsValid()) {
			m_Properties -> SetEventSink (((C *)this) -> GetUnknown(), VARIANT_FALSE);
			m_Properties.Assign(NULL);
		}

	// neue Properties erst bei der alten Objektmenge abmelden, dann hier anmelden
		RETURN_FAILED_HRESULT(pVal -> SetEventSink (NULL, VARIANT_FALSE));
		RETURN_FAILED_HRESULT(pVal -> SetEventSink (((C *)this) -> GetUnknown(), VARIANT_TRUE));
		m_Properties = pVal;

		return S_OK;
	}

	STDMETHOD(get_Property) (BSTR Which, ITRiASProperty **pVal)
	{
		AFX_MANAGE_STATE(AfxGetStaticModuleState())
		RETURN_FAILED_HRESULT(((C *)this) -> IsInitialized());
		if (NULL == pVal) return TRIASDB_E_INVALID_PARAMETER;
		if (!m_Properties.IsValid())
		{
			RETURN_FAILED_HRESULT(CreatePropertiesCollection());
		}
		_ASSERT(m_Properties.IsValid());

		if (m_Properties.IsValid()) {
		CComVariant vWhich (Which);

			return m_Properties -> Item (vWhich, pVal);
		}
		return E_UNEXPECTED;
	}

protected:
// neue PropertiesCollection anlegen und initialisieren
	HRESULT CreatePropertiesCollection(bool fRefresh = true)
	{
	__Interface<ITRiASProperties> Props;

		COM_TRY {
		// Properties-Collection erzeugen und initialisieren
			if (!m_Properties) 
				m_Properties = __Interface<ITRiASProperties>(CLSID_TRiASProperties);

			THROW_FAILED_HRESULT(m_Properties -> SetEventSink (NULL, VARIANT_FALSE));

		HRESULT hr = m_Properties -> SetEventSink (((C *)this) -> GetUnknown(), VARIANT_TRUE);

			if (FAILED(hr) && E_NOINTERFACE != hr)
			{
				THROW_FAILED_HRESULT(hr);
			}
			if (fRefresh) {
			// Properties erstmalig einlesen (Refresh ruft ((C *)this) -> FillWithProperties())
				THROW_FAILED_HRESULT(((C *)this) -> RefreshingProperties());
				THROW_FAILED_HRESULT(m_Properties -> Refresh());
				THROW_FAILED_HRESULT(((C *)this) -> PropertiesRefreshed());
			}

		} COM_CATCH_OP(m_Properties.Assign(NULL));
		return S_OK;
	}

// PropertiesCollection clonen
	HRESULT ClonePropertiesCollection(ITRiASProperties **pVal)
	{
		if (!m_Properties)
			return E_UNEXPECTED;

	// macht das folgende Sinn ?
#if defined(_ATL_FREE_THREADED)
		return m_Properties -> _Clone (pVal);
#else
	__Interface<ITRiASProperties> Props (m_Properties);

		*pVal = Props.detach();
		return S_OK;
#endif // _ATL_FREE_THREADED
	}

// PropertiesCollection freigeben
	HRESULT FreePropertiesCollection()
	{
		if (m_Properties.IsValid()) {
			m_Properties -> SetEventSink (((C *)this) -> GetUnknown(), VARIANT_FALSE);
			m_Properties.Assign(NULL);
		}
		return S_OK;
	}

	ITRiASProperties *GetProperties() throw(_com_error &)
	{
		if (!m_Properties.IsValid())
		{
			THROW_FAILED_HRESULT(CreatePropertiesCollection());
		}
		_ASSERT(m_Properties.IsValid());
		return m_Properties;
	}
	HRESULT RefreshingProperties() { return S_OK; }		// Notanker
	HRESULT PropertiesRefreshed() { return S_OK; }
	HRESULT IsInitialized() { return S_OK; }

protected:
	__Interface<ITRiASProperties> m_Properties;	// alle zu diesem Objekt geh�renden Eigenschaften
};

#endif // !defined(_PROPERTYBASE_H__E7BFBE4A_11FA_41B6_BFE9_956E8CEA626A__INCLUDED_)