// $Header: $
// Copyrightę 1998-2000 TRiAS GmbH Potsdam, All rights reserved
// Created: 25.02.2000 11:15:18
//
// This file was generated by the TRiASDB Data Server Wizard V1.01.076 (#HK000225)
//
// @doc
// @module StdAfx.h | include file for standard system include files,
// or project specific include files that are used frequently,
// but are changed infrequently

#if !defined(_STDAFX_H__1EDD0F01_7A4D_4066_9BD8_B89D58215180__INCLUDED_)
#define _STDAFX_H__1EDD0F01_7A4D_4066_9BD8_B89D58215180__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include "FastdbConfig.h"
#include <TRiASConfig.h>

#include <afxwin.h>
#include <afxdisp.h>

///////////////////////////////////////////////////////////////////////////////
// ospace-STL specific stuff
namespace ospace { namespace std { namespace rel_ops {} } }
using namespace ospace::std;
using namespace ospace::std::rel_ops;

#include <ospace/std/string>
typedef os_string string;

#include <ospace/std/list>
#include <ospace/std/map>

///////////////////////////////////////////////////////////////////////////////
// ATL-related stuff 
#include <atlbase.h>
//You may derive a class from CComModule and use it if you want to override
//something, but do not change the name of _Module
extern CComModule _Module;
#include <atlcom.h>
#include <atlctl.h>

#include <Atl/Ciid.h>
#include <Atl/AtlAggregate.h>

///////////////////////////////////////////////////////////////////////////////
// Interfacewrapper und Fehlerbehandlung
#include <ospace/com/Iterenum.h>
#include <ospace/com/ComErrorMacros.h>
#include <com/ErrorMacros2.h>

///////////////////////////////////////////////////////////////////////////////
// Fehlercodes
#include <DBMsg.hmc>
#include "DBUtil.h"

///////////////////////////////////////////////////////////////////////////////
// diverse Objekte/Interfaces, auf die Bezug genommen wird
#include <GMObjects/PBasic.tlh>		// GeoMedia-Geometrieobjekte

#pragma warning (disable: 4192)		// automatically excluding 'symbol' while importing type library
#import "tlb/TRiASDB.tlb" raw_interfaces_only, raw_native_types, no_namespace, named_guids
#import "tlb/TRiASCS.tlb" raw_interfaces_only, raw_native_types, no_namespace, named_guids
#import "tlb/TDBGeo.tlb" raw_interfaces_only, raw_native_types, no_namespace, named_guids

#include <TRiASDBModuleStrings.h>
#include <TRiASDBGuids.h>

///////////////////////////////////////////////////////////////////////////////
// sonstiges
#include <Com/PropertyHelper.h>
#include <Com/SafeArray.h>

#if defined(_USE_FASTDB)
#include "FastDBLib/FastDB.h"
#include "FastDBLib/FastDBEx.h"
#elif defined(_USE_GIGABASE)
#include "GigaBASELib/GigaBASE.h"
#include "GigaBASELib/GigaBASEEx.h"
#else
#error "Must specify '_USE_FASTDB' or '_USE_GIGABASE' !"
#endif // defined(_USE_FASTDB) || defined(_USE_GIGABASE)

#include "DBObjects.h"
#include "FastDB.hmc"

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(_STDAFX_H__1EDD0F01_7A4D_4066_9BD8_B89D58215180__INCLUDED)
