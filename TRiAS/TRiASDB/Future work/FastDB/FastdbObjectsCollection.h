// $Header: $
// Copyright� 1998-2000 TRiAS GmbH Potsdam, All rights reserved
// Created: 25.02.2000 11:15:18 
//
// This file was generated by the TRiASDB Data Server Wizard V1.01.076 (#HK000225)
//
// @doc
// @module FastdbObjectsCollection.h | Declaration of the <c CFastdbObjectsCollection> class

#if !defined(_FASTDBOBJECTSCOLLECTION_H__2BCCA603_4388_42EA_89CB_0E70D9334B95__INCLUDED_)
#define _FASTDBOBJECTSCOLLECTION_H__2BCCA603_4388_42EA_89CB_0E70D9334B95__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000

// Header include diagnostics
#if defined(_TRIAS_DBG_HEADER_DIAGNOSTICS)
#pragma message(__TIME__": include " __FILE__ )
#endif

#include "resource.h"       // main symbols

/////////////////////////////////////////////////////////////////////////////
// SmartIF's
DefineSmartInterface(TRiASObjectsCollection);

/////////////////////////////////////////////////////////////////////////////
// CFastdbObjectsCollection
class ATL_NO_VTABLE CFastdbObjectsCollection : 
	public CComObjectRootEx<CComObjectThreadModel>,
	public CComCoClass<CFastdbObjectsCollection, &CLSID_FastdbObjectsCollection>,
	public CErrSupport<CFastdbObjectsCollection, &IID_ITRiASObjectsCollection>,
	public ITRiASObjectsCollectionCallback
{
public:
	CFastdbObjectsCollection()
	{
	}

	DECLARE_REGISTRY_RESOURCEID(IDR_FASTDBOBJECTSCOLLECTION_RGS)
	DECLARE_AGGREGATE_EX_SUPPORT();

	BEGIN_COM_MAP(CFastdbObjectsCollection)
		COM_INTERFACE_ENTRY(ITRiASObjectsCollectionCallback)
		COM_INTERFACE_ENTRY(ISupportErrorInfo)

	// durch aggregiertes Objekt implementierte Interfaces
		COM_INTERFACE_ENTRY_AGGREGATE_EX(IID_ITRiASObjectsCollection, m_BaseUnk.p)
		COM_INTERFACE_ENTRY_AGGREGATE_EX(IID_ITRiASBase, m_BaseUnk.p)
		COM_INTERFACE_ENTRY_AGGREGATE_EX(IID_IDispatch, m_BaseUnk.p)
		COM_INTERFACE_ENTRY_AGGREGATE_BLIND(m_BaseUnk.p)		// alles andere nicht gesondert behandeln
	END_COM_MAP()

	DECLARE_GET_CONTROLLING_UNKNOWN()
	DECLARE_PROTECT_FINAL_CONSTRUCT()
	HRESULT FinalConstruct()
	{
		RETURN_FAILED_HRESULT(m_BaseUnk.CreateInstance (CLSID_TRiASObjectsCollection, CLSCTX_ALL, GetControllingUnknown()));

	WTRiASObjectsCollection BaseObj;

		RETURN_FAILED_HRESULT(m_BaseUnk -> QueryInterface(BaseObj.ppi()));
		return BaseObj -> putref_ObjectsCollectionCallback(this);
	}
	void FinalRelease()
	{
		m_BaseUnk.Assign(NULL);
	}

// ISupportsErrorInfo
	STDMETHOD(InterfaceSupportsErrorInfo)(REFIID riid);

// ITRiASObjectsCollectionCallback
public:
	STDMETHOD(get_DefaultType)(BSTR *pbstrType);
	STDMETHOD(OnCreate)(VARIANT NameOrHandle, BSTR Type, OBJECTSCOLLECTIONTYPE rgType, ITRiASObjects **ppIObjs);
	STDMETHOD(OnDelete)(VARIANT vWhich);
	STDMETHOD(OnFinalRelease)();

protected:
	HRESULT CreateObject (VARIANT NameOrHandle, DWORD dwType, const CLSID *pClsId, ITRiASObjects **ppIObjs);

private:
	WUnknown m_BaseUnk;					// aggregiertes Objekt
};

#endif // !defined(_FASTDBOBJECTSCOLLECTION_H__2BCCA603_4388_42EA_89CB_0E70D9334B95__INCLUDED_)