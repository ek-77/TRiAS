// $Header: $
// Copyrightę 2003 Hartmut Kaiser, All rights reserved
// Created: 13.12.2003 19:54:19 
//
// @doc
// @module StdAfx.h | include file for standard system include files,
// or project specific include files that are used frequently, but
// are changed infrequently

#if !defined(_STDAFX_H__8240B2F9_B282_47F7_B697_03CA7D834F12__INCLUDED_)
#define _STDAFX_H__8240B2F9_B282_47F7_B697_03CA7D834F12__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#define VC_EXTRALEAN		// Exclude rarely-used stuff from Windows headers

#include <afx.h>
#include <afxwin.h>         // MFC core and standard components
#include <afxext.h>         // MFC extensions
#include <afxdtctl.h>		// MFC support for Internet Explorer 4 Common Controls
#ifndef _AFX_NO_AFXCMN_SUPPORT
#include <afxcmn.h>			// MFC support for Windows Common Controls
#endif // _AFX_NO_AFXCMN_SUPPORT

#include <iostream>
#include <string>

// TODO: reference additional headers your program requires here

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(_STDAFX_H__8240B2F9_B282_47F7_B697_03CA7D834F12__INCLUDED_)
