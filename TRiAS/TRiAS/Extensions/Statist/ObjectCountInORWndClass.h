// $Header: $
// Copyrightę 1999-2004 Hartmut Kaiser, All rights reserved
// Created: 16.12.2002 14:57:54 
//
// @doc
// @module ObjectCountInORWndClass.h | Declaration of the <c ObjectCountInORWndClass> class

#if !defined(_OBJECTCOUNTINORWNDCLASS_H__22D626EA_F0F9_4665_85CD_1D388115AC8B__INCLUDED_)
#define _OBJECTCOUNTINORWNDCLASS_H__22D626EA_F0F9_4665_85CD_1D388115AC8B__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000

// Header include diagnostics
#if defined(_TRIAS_DBG_HEADER_DIAGNOSTICS)
#pragma message(__TIME__": include " __FILE__ )
#endif

#include "resource.h"

/////////////////////////////////////////////////////////////////////////////
// CObjectCountInORWndClass
class ATL_NO_VTABLE CObjectCountInORWndClass : 
	public CComObjectRootEx<CComSingleThreadModel>,
	public CComCoClass<CObjectCountInORWndClass, &CLSID_ObjectCountInORWnd>,
	public ISupportErrorInfo,
	public ITRiASNotificationSink,
	public IDispatchImpl<IValueProvider, &IID_IValueProvider, &LIBID_TRiASStatistics,
		TYPELIB_STATIST_MAJOR_VERSION, TYPELIB_STATIST_MINOR_VERSION>
{
public:
// Construction
	CObjectCountInORWndClass();
	~CObjectCountInORWndClass();

// Initialisation

// Operations
	DECLARE_REGISTRY_RESOURCEID(IDR_OBJECTCOUNTINORWND)
	DECLARE_PROTECT_FINAL_CONSTRUCT()

// Interface map
	BEGIN_COM_MAP(CObjectCountInORWndClass)
		COM_INTERFACE_ENTRY(IDispatch)
		COM_INTERFACE_ENTRY(ISupportErrorInfo)
		COM_INTERFACE_ENTRY(IValueProvider)
		COM_INTERFACE_ENTRY(ITRiASNotificationSink)
	END_COM_MAP()

	HRESULT SetXtsnSite (ITriasXtensionSite *pSite, IValueProviderCallback *pICallback);
	HRESULT DisConnectFromServer (void);

	void SetData (HWND hWnd, HOBJECTS lIdent, OBJECTTYPE rgTypes = OBJECTTYPE_AllSimple) 
	{ 
		m_hWnd = hWnd; 
        m_lIdent = lIdent;
		m_rgTypes = rgTypes;
	}

// Implementation
protected:
// Attributes

// Operations
	BOOL CALLBACK EnumClasses(INT_PTR lIdent, DWORD dwTypes, void *pData);

// Interfaces
public:
// ISupportsErrorInfo
	STDMETHODIMP InterfaceSupportsErrorInfo(REFIID riid);

// IValueProvider
	STDMETHODIMP get_Name(BSTR *Name);
	STDMETHODIMP get_Description(BSTR *Name);
	STDMETHODIMP get_Flags(VALUEPROVIDERPROP *Flags);
	STDMETHODIMP get_Value(VARIANT *Value);

// ITRiASNotificationSink specific functions
	STDMETHOD(ServerEvent) (SERVEREVT se);
	STDMETHOD(ProjectEvent) (long hPr, PROJECTEVT pe, VARIANT vProj);
	STDMETHOD(GeoViewEvent) (long hPr, GEOVIEWEVT ve, VARIANT vData);
	STDMETHOD(GeoClassEvent) (long hPr, GEOCLASSEVT ce, long ulIdent);
	STDMETHOD(GeoObjectEvent) (long hPr, GEOOBJECTEVT oe, long lONr);
	STDMETHOD(GeoFeatureEvent) (long hPr, GEOFEATUREEVT fe, long ulMCode);
	STDMETHOD(GeoRelationEvent) (long hPr, GEORELATIONEVT re, long ulRCode);
	STDMETHOD(ObjectWindowEvent)(OBJWNDEVT oe, long hORWnd);

private:
	HWND m_hWnd;
    HOBJECTS m_lIdent;
	OBJECTTYPE m_rgTypes;

	WConnectionPointContainer m_Cont;
	DWORD m_dwCookie;

	IValueProviderCallback *m_pICallback;
	BOOL m_fNeedsToDelete;
};

#endif // !defined(_OBJECTCOUNTINORWNDCLASS_H__22D626EA_F0F9_4665_85CD_1D388115AC8B__INCLUDED_)
