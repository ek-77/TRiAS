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
// @module TRiASOGCGeoFeature.h | Declaration of the <c CTRiASOGCGeoFeature> class

#if !defined(_TRIASOGCGEOFEATURE_H__CBB15264_76F2_4666_B343_382B199082D2__INCLUDED_)
#define _TRIASOGCGEOFEATURE_H__CBB15264_76F2_4666_B343_382B199082D2__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000

// Header include diagnostics
#if defined(_TRIAS_DBG_HEADER_DIAGNOSTICS)
#pragma message(__TIME__": include " __FILE__ )
#endif

#include "resource.h"       // main symbols

/////////////////////////////////////////////////////////////////////////////
// CTRiASOGCGeoFeature

class ATL_NO_VTABLE CTRiASOGCGeoFeature : 
	public CComObjectRootEx<CComObjectThreadModel>,
	public CComCoClass<CTRiASOGCGeoFeature, &CLSID_TRiASOGCGeoFeature>,
	public CErrSupport<CTRiASOGCGeoFeature, &IID_ITRiASFeature>,
	public IDispatchImpl<ITRiASSearchObjects, &IID_ITRiASSearchObjects, &LIBID_TRiASDB,
		TYPELIB_TRiASDB_VERSION_MAJOR, TYPELIB_TRiASDB_VERSION_MINOR>,
	public ITRiASFeatureCallback
{
public:
	CTRiASOGCGeoFeature()
	{
	}

	_ATLX_DEBUG_OBJECTCOUNT_IMPL(CTRiASOGCGeoFeature)

	DECLARE_REGISTRY_RESOURCEID(IDR_TRIASOGCGEOFEATURE_RGS)
	DECLARE_AGGREGATE_EX_SUPPORT();

	BEGIN_COM_MAP(CTRiASOGCGeoFeature)
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
#if defined(_READWRITE)
	HRESULT OnChangedName();
	HRESULT OnChangedDescription();
	HRESULT OnChangedHandle();
	HRESULT OnChangedROMode();
	HRESULT OnChangedType();

	HRESULT SetGeometry (ITRiASObject *pIObj, LPCSTR pcName, SAFEARRAY *pGeom);
#endif // defined(_READWRITE)
	HRESULT GetGeometry (ITRiASObject *pIObj, SAFEARRAY **ppsa, const double *pdWindow = NULL, double *pdCont = NULL);

private:
	WUnknown m_BaseUnk;				// aggregiertes Objekt (TRiASFeature)
};

#endif // !defined(_TRIASOGCGEOFEATURE_H__CBB15264_76F2_4666_B343_382B199082D2__INCLUDED_)