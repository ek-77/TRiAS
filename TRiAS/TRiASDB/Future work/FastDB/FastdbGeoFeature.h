// $Header: $
// Copyright� 1998-2000 TRiAS GmbH Potsdam, All rights reserved
// Created: 25.02.2000 11:15:18 
//
// This file was generated by the TRiASDB Data Server Wizard V1.01.076 (#HK000225)
//
// @doc
// @module FastdbGeoFeature.h | Declaration of the <c CFastdbGeoFeature> class

#if !defined(_FASTDBGEOFEATURE_H__1755EE06_5D0B_4CE1_A3A2_DA47D58E2E5F__INCLUDED_)
#define _FASTDBGEOFEATURE_H__1755EE06_5D0B_4CE1_A3A2_DA47D58E2E5F__INCLUDED_

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
DefineSmartInterface(TRiASFeature);

/////////////////////////////////////////////////////////////////////////////
// CFastdbGeoFeature

class ATL_NO_VTABLE CFastdbGeoFeature : 
	public CComObjectRootEx<CComObjectThreadModel>,
	public CComCoClass<CFastdbGeoFeature, &CLSID_TRiASSimpleGeoFeature>,
	public CErrSupport<CFastdbGeoFeature, &IID_ITRiASFeature>,
	public IDispatchImpl<ITRiASSearchObjects, &IID_ITRiASSearchObjects, &LIBID_TRiASDB,
		TYPELIB_TRiASDB_VERSION_MAJOR, TYPELIB_TRiASDB_VERSION_MINOR>,
	public ITRiASFeatureCallback
{
public:
	CFastdbGeoFeature()
	{
	}

	DECLARE_REGISTRY_RESOURCEID(IDR_FASTDBGEOFEATURE_RGS)
	DECLARE_AGGREGATE_EX_SUPPORT();

	BEGIN_COM_MAP(CFastdbGeoFeature)
		COM_INTERFACE_ENTRY(ITRiASFeatureCallback)
		COM_INTERFACE_ENTRY(ISupportErrorInfo)
		COM_INTERFACE_ENTRY(ITRiASSearchObjects)

	// durch aggregiertes Objekt implementierte Interfaces
		COM_INTERFACE_ENTRY_AGGREGATE_EX(IID_ITRiASFeature, m_BaseUnk.p)
		COM_INTERFACE_ENTRY_AGGREGATE_EX(IID_ITRiASBase, m_BaseUnk.p)
		COM_INTERFACE_ENTRY_AGGREGATE_EX(IID_IDispatch, m_BaseUnk.p)
		COM_INTERFACE_ENTRY_AGGREGATE_EX(IID_IConnectionPointContainer, m_BaseUnk.p)
		COM_INTERFACE_ENTRY_AGGREGATE_BLIND(m_BaseUnk.p)		// alles andere nicht gesondert behandeln
	END_COM_MAP()

	DECLARE_GET_CONTROLLING_UNKNOWN()
	DECLARE_PROTECT_FINAL_CONSTRUCT()
	HRESULT FinalConstruct()
	{
		RETURN_FAILED_HRESULT(m_BaseUnk.CreateInstance (CLSID_TRiASFeature, CLSCTX_ALL, GetControllingUnknown()));

	WTRiASFeature BaseObj;

		RETURN_FAILED_HRESULT(m_BaseUnk -> QueryInterface(BaseObj.ppi()));
		return BaseObj -> putref_FeatureCallback(this);
	}
	void FinalRelease (void)
	{
		m_BaseUnk.Assign(NULL);
	}

// ISupportsErrorInfo
	STDMETHOD(InterfaceSupportsErrorInfo)(REFIID riid);

// ITRiASFeatureCallback
	STDMETHOD(get_DefaultType)(BSTR *pbstrType);
	STDMETHOD(SetupFeature)(/*[in]*/ SETUPFEATUREMODE rgWhat);
	STDMETHOD(Update)(ITRiASObject *Obj, VARIANT Val);
	STDMETHOD(Eval)(ITRiASObject *Obj, VARIANT *pVal);
	STDMETHOD(EvalEx)(ITRiASObject *Obj, SAFEARRAY **ppConstraints, VARIANT *Val);
	STDMETHOD(OnChanging)(CHANGEDFEATURE rgWhat, VARIANT vNewValue, VARIANT_BOOL *pDisAllow);
	STDMETHOD(OnChanged)(CHANGEDFEATURE rgWhat, VARIANT vOldValue);
	STDMETHOD(Clone)(ITRiASFeature **ppIFeat);
	STDMETHOD(OnFinalRelease)();

// ITRiASSearchObjects
	STDMETHOD(ConsiderSearch)(BSTR Command, SAFEARRAY *pParams);
	STDMETHOD(SearchObjects)(BSTR Command, ITRiASObjects *pIObjs, SAFEARRAY *pParams);
	STDMETHOD(ConstraintObjects)(ITRiASObjects *pObjs);

protected:
	HRESULT OnChangedName();
	HRESULT OnChangedDescription();
	HRESULT OnChangedHandle();
	HRESULT OnChangedROMode();
	HRESULT OnChangedType();

	HRESULT SetGeometry (ITRiASObject *pIObj, LPCSTR pcName, SAFEARRAY *pGeom, ITRiASSimpleRectangle *pIRect);

	HRESULT GetGeometry (ITRiASObject *pIObj, SAFEARRAY **ppsa, const double *pdWindow = NULL, double *pdCont = NULL);

private:
	WUnknown m_BaseUnk;				// aggregiertes Objekt (TRiASFeature)
};

#endif // !defined(_FASTDBGEOFEATURE_H__1755EE06_5D0B_4CE1_A3A2_DA47D58E2E5F__INCLUDED_)