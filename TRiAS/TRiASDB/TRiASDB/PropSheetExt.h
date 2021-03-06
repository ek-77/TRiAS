///////////////////////////////////////////////////////////////////////////
// @doc 
// @module PropSheetExt.h | Template f�r TRiASPropertySheetExtension

#if !defined(_PROPSHEETEXT_H__805D0154_A21C_11D1_BA29_080036D63803__INCLUDED_)
#define _PROPSHEETEXT_H__805D0154_A21C_11D1_BA29_080036D63803__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000

#include <ixtnext.hxx>

///////////////////////////////////////////////////////////////////////////
// Template zum Einh�ngen von PropertyPages

template <class T>
class CTRiASPropSheetExt : 
	public ITriasPropSheetExt,
	public ITRiASOpenWizardPropExt
{
protected:
	T *m_pDlg;

	void DestroyDlg(void) 
	{
		if (m_pDlg) delete m_pDlg;	m_pDlg = NULL; 
	}

public:
// Konstruktor
	CTRiASPropSheetExt() { m_pDlg = NULL; }
	~CTRiASPropSheetExt() { DestroyDlg(); }

	BEGIN_COM_MAP(CTRiASPropSheetExt)
		COM_INTERFACE_ENTRY(ITRiASOpenWizardPropExt)
		COM_INTERFACE_ENTRY(ITriasPropSheetExt)
	END_COM_MAP()

////////////////////////////////////////////////////////////////////////////
// ITriasPropSheetExt
	STDMETHOD(AddPages)(LPFNADDPROPSHEETPAGE lpfnAddPage, LPARAM lParam)
	{
		AFX_MANAGE_STATE(AfxGetStaticModuleState())

	HPROPSHEETPAGE hPSP = NULL;

		try {
			if (NULL == m_pDlg) 
				_com_issue_error(E_UNEXPECTED);
		
		// Page kreieren
			hPSP = ::CreatePropertySheetPage ((PROPSHEETPAGE *)&m_pDlg->m_psp); 
			if (NULL == hPSP) _com_issue_error(E_HANDLE);	
		
		// Page hinzuf�gen
			if (!(*lpfnAddPage) (hPSP, lParam)) 
				_com_issue_error(E_FAIL);
		
		} catch (_com_error &e) {
			DestroyDlg(); 
			if (hPSP) ::DestroyPropertySheetPage(hPSP);
			return _COM_ERROR(e);
		}
		return S_OK;
	}

	STDMETHOD(ReplacePage)(UINT uPageID, LPFNADDPROPSHEETPAGE lpfnReplacePage, LPARAM lParam)
	{
		AFX_MANAGE_STATE(AfxGetStaticModuleState())
		ATLTRACENOTIMPL("CTRiASPropSheetExt<T>::ReplacePage");
	}

////////////////////////////////////////////////////////////////////////////
// ITRiASOpenWizardPropExt
// Die Implementation in diesem Template setzt vorraus, da� der zu instantiierende
// Dialog die folgenden Funktionen implementiert hat:

	STDMETHOD(InitForOpenDialog)(BSTR bstrProgID, BSTR bstrCaption, VARIANT_BOOL fCreate, IComposeStringPairs *pIPairs)
	{
		AFX_MANAGE_STATE(AfxGetStaticModuleState())
		USES_CONVERSION;

		DestroyDlg(); 
		COM_TRY {
			m_pDlg = new T;		// Page neu anlegen

			THROW_FAILED_HRESULT(m_pDlg -> SetProgID(OLE2A(bstrProgID)));
			THROW_FAILED_HRESULT(m_pDlg -> SetTitle(OLE2A(bstrCaption)));
			THROW_FAILED_HRESULT(m_pDlg -> SetPairs(pIPairs));

		} COM_CATCH_OP(DestroyDlg());

	// wenn der Speichermode nicht stimmt, dann normal wieder raus
		if (FAILED(m_pDlg -> SetCreateMode(fCreate))) {
			DestroyDlg();
			return E_FAIL;
		}
		return S_OK;
	}
};

#endif // !defined(_PROPSHEETEXT_H__805D0154_A21C_11D1_BA29_080036D63803__INCLUDED_)
