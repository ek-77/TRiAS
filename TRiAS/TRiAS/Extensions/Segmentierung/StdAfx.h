// stdafx.h : include file for standard system include files,
//      or project specific include files that are used frequently,
//      but are changed infrequently

#if !defined(AFX_STDAFX_H__3A59B966_0E9F_4AC5_AB2B_2B168790BBEF__INCLUDED_)
#define AFX_STDAFX_H__3A59B966_0E9F_4AC5_AB2B_2B168790BBEF__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include <Pragmas.h>


#include "SegmentConfig.h"
#include <TRiASConfig.h>

#include "SegmentUtil.h"

#if defined(__MFC__)
// MFC stuff
#include <afxwin.h>         // MFC core and standard components
#include <afxext.h>         // MFC extensions
#include <afxcmn.h>			// MFC support for Windows 95 Common Controls
#endif // defined(__MFC__)

// ospace stl
#include <tstring>

// ATL stuff
#if defined(__WTL__)

#include <atlbase.h>
#include <atlapp.h>
extern CAppModule _Module;
#include <atlcom.h>
#include <atlwin.h>

#else

#include <atlbase.h>
extern CComModule _Module;
#include <atlcom.h>

#endif // defined(__WTL__)


#include <ospace/com/smartif.h>
#include <ospace/com/iterenum.h>

#include <ospace/std/map>
#include <ospace/std/vector>
#include <ospace/std/list>


#include <com/DefSmartIf.h>


#include <com/Errormacros2.h>
#include <com/BSTRHelpers.h>
#include <com/VariantHelpers.h>
#include <com/StreamHelpers.h>
#include <com/GUIDHelpers.h>



#include <xtension.h>		// Definition aller Erweiterungs- spezifischen
#include <xtensnx.h>		// Konstanten und Datenstrukturen

#include <ixtensn.hxx>		// Interfaces einer Erweiterung
#include <xtencatl.hxx>		// InterfaceImplementation der BasisKlasse
#include <xtsnaux.hxx>

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_STDAFX_H__3A59B966_0E9F_4AC5_AB2B_2B168790BBEF__INCLUDED)
