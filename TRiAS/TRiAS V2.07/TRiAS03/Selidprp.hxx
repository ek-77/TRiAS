///////////////////////////////////////////////////////////////////////////
// @doc 
// @module Selidprp.hxx | ActionProperty, welche Ident/Objekttypen ausw�hlt und zusammenstellt

#if !defined(_SELIDPRP_HXX__1E709225_67C1_11D1_B9EA_080036D63803__INCLUDED_)
#define _SELIDPRP_HXX__1E709225_67C1_11D1_B9EA_080036D63803__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000


#include <propactn.h>
#include <selidprp.h>

#include "propactb.hxx"		// CPropertyAction
#include "selident.hxx"		// CSelectIdentDlg

class CSelIDPropAct :
	public CPropertyActionExt,	// JG 980915
	public CComObjectRoot,
	public CComCoClass<CSelIDPropAct, &CLSID_SelectIdentObjTyp>
{
private:
	CSelectIdentDlg *m_pCfgDlg;
	string m_strDesc;

	bool m_fIsDirty;		// DirtyFlag
	bool m_fIsInitialized;	// ist fertig initialisiert

	bool m_fHasInitData;	// InitialisierungsDaten sind gesetzt
	CCaSelIdResult m_caSelInfo;

public:
	BEGIN_COM_MAP(CSelIDPropAct)
		COM_INTERFACE_ENTRY(IPropertyAction)
		COM_INTERFACE_ENTRY(IPropertyAction2)
		COM_INTERFACE_ENTRY(IPersistPropertyBag)
		COM_INTERFACE_ENTRY(IClassProperty)
		COM_INTERFACE_ENTRY(IPersistStreamInit)
		COM_INTERFACE_ENTRY2(IPersistStream, IPersistStreamInit)
		COM_INTERFACE_ENTRY2(IPersist, IPersistStream)
		COM_INTERFACE_ENTRY(IPropertyInfo)
	END_COM_MAP()

	DECLARE_AGGREGATABLE(CSelIDPropAct)		// class factory
	DECLARE_STATIC_REGISTRY_RESOURCEID(IDR_PROPINFO_IDENTOTYP)

		CSelIDPropAct (void);
		~CSelIDPropAct (void);

static HRESULT CreateInstance (IClassProperty **ppIClsProp)
	{ return _CreatorClass::CreateInstance(NULL, IID_IClassProperty, (LPVOID *)ppIClsProp); }

// IClassProperty specific functions ***
	STDMETHOD(GetPropInfo) (THIS_ LPSTR pBuffer, WORD wLen, DWORD *pdwFlags);
	STDMETHOD(HelpInfo)(THIS_ LPSTR pBuffer, ULONG ulLen, 
						LPSTR pHelpFile, ULONG *pulHelpCtx);

// IPropertyAction methods
	STDMETHOD (AddConfigPages) (THIS_ LPFNADDPROPSHEETPAGE lpfnAddPage, 
				LPARAM lParam, LPCSTR pcDesc, UINT *puiCnt);
	STDMETHOD (PreConfigPages) (THIS_ IDataObject *pIDataObject, DWORD dwFlags);
	STDMETHOD (EndAction) (THIS_ DWORD dwReserved, IDataObject **ppEnumObj);

// JG 980910
/*	STDMETHOD (BeginAction)(IProgressIndicator *)
	{
		ATLTRACENOTIMPL("CPropertyAction::BeginAction");
	}*/


// IPropertyInfo specific functions 
	STDMETHOD(SetPropInfo) (THIS_ LPCSTR pBuffer, DWORD dwFlags);

// IPersist methods
	STDMETHOD(GetClassID)(THIS_ LPCLSID lpClassID);

// IPersistStreamInit methods
	STDMETHOD(IsDirty)(THIS);
	STDMETHOD(Load)(THIS_ LPSTREAM pStm);
	STDMETHOD(Save)(THIS_ LPSTREAM pStm, BOOL fClearDirty);
	STDMETHOD(GetSizeMax)(THIS_ ULARGE_INTEGER *pcbSize);
	STDMETHOD(InitNew)(THIS);

// IPersistPropertyBag
	STDMETHOD(Load)(THIS_ IPropertyBag *pBag, IErrorLog *pLog);

// sonstiges
	void SetDirty (bool fDirty = true);
};

#endif // !defined(_SELIDPRP_HXX__1E709225_67C1_11D1_B9EA_080036D63803__INCLUDED_)
