// $Header: $
// Copyrightę 1998-2000 TRiAS GmbH Potsdam, All rights reserved
// Created: 10.05.2000 19:36:40 
//
// This file was generated by the TRiASDB Data Server Wizard V1.02.086 (#HK000510)
//
// @doc
// @module TRiASHPapp.h | Declaration of the <c CTRiASHPApp> class

#if !defined(_ROOTAPP_H__A62C679B_D70A_4349_B3A7_5FA48D19DE26__INCLUDED_)
#define _ROOTAPP_H__A62C679B_D70A_4349_B3A7_5FA48D19DE26__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000

// Header include diagnostics
#if defined(_TRIAS_DBG_HEADER_DIAGNOSTICS)
#pragma message(__TIME__": include " __FILE__ )
#endif

#include <WinVersion.h>

class CTRiASHPApp : 
	public CWinApp
{
public:

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CTRiASHPApp)
	public:
    virtual BOOL InitInstance();
    virtual int ExitInstance();
	//}}AFX_VIRTUAL

	//{{AFX_MSG(CTRiASHPApp)
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()

public:
	bool IsWin31 (void) { return m_Version.IsWin31(); }
	bool IsWin40 (void) { return m_Version.IsWin40(); }
	bool IsWin41 (void) { return m_Version.IsWin41(); }
	bool IsWin50 (void) { return m_Version.IsWin50(); }
	bool IsWin32s (void) { return m_Version.IsWin32s(); }
	bool IsWinNT (void) { return m_Version.IsWinNT(); }

private:
	CWinVersion m_Version;
};

#endif // !defined(_ROOTAPP_H__A62C679B_D70A_4349_B3A7_5FA48D19DE26__INCLUDED_)
