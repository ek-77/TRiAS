/*  Product: Small Parser

    Copyright (C) 1999  Systementor AB, Stefan Holmberg
    Email - stefan.holmberg@systementor.se
    Web:   - http://www.systementor.se

///////////////////////////////////////////////////////////////////////////////
*/

/* * $History: InsertStmt.h $ 
 * 
 * *****************  Version 3  *****************
 * User: Stefan Holmberg Date: 7/13/99    Time: 8:47p
 * Updated in $/Products/SmallParser
 * Fixing headers so all code is in CPP-files
 * 
 * *****************  Version 2  *****************
 * User: Stefan Holmberg Date: 7/11/99    Time: 12:24p
 * Updated in $/Products/SmallParser
*/

// InsertStmt.h : Declaration of the cInsertStmt

#ifndef __INSERTSTMT_H_
#define __INSERTSTMT_H_

#include "resource.h"       // main symbols
#include "TableIdent.h"       // main symbols
#include "Parser\ParseTree.h"       // main symbols
#include "ColumnIdentList.h"
#include "GenericStackList.h"

/////////////////////////////////////////////////////////////////////////////
// cInsertStmt
class ATL_NO_VTABLE cInsertStmt : 
	public CComObjectRootEx<CComSingleThreadModel>,
	public CComCoClass<cInsertStmt, &CLSID_InsertStmt>,
	public ISupportErrorInfo,
	public IDispatchImpl<IInsertStmt, &IID_IInsertStmt, &LIBID_TRiASQL>
{
public:
	cInsertStmt();
	~cInsertStmt();
	void Clear();


	void InitializeFromParseTree( CParseTree *pTree );


	CComObject<cTableIdent>			*m_pTableIdent;
	CComObject<cColumnIdentList>	*m_pColumnIdentList;
	CComObject<cGenericStackList>		*m_pInsertExpressionStackList;


//	DECLARE_REGISTRY_RESOURCEID(IDR_INSERTSTMT)
	DECLARE_NO_REGISTRY()

	DECLARE_PROTECT_FINAL_CONSTRUCT()

	BEGIN_COM_MAP(cInsertStmt)
		COM_INTERFACE_ENTRY(IInsertStmt)
		COM_INTERFACE_ENTRY(IDispatch)
		COM_INTERFACE_ENTRY(ISupportErrorInfo)
	END_COM_MAP()

// ISupportsErrorInfo
	STDMETHOD(InterfaceSupportsErrorInfo)(REFIID riid);

// IInsertStmt
public:
	STDMETHOD(get_InsertExpressionList)(/*[out, retval]*/ IGenericStackList* *pVal);
	STDMETHOD(get_ColumnIdentList)(/*[out, retval]*/ IColumnIdentList* *pVal);
	STDMETHOD(get_TableIdent)(/*[out, retval]*/ ITableIdent* *pVal);
};

#endif //__INSERTSTMT_H_
