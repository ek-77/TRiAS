// $Header: $
// Copyright� 1999 TRiAS GmbH, All rights reserved
// Created: 11/22/1998 01:07:25 PM
//
// @doc
// @module AbstandConfig.h | Konfigurationskonstanten f�r Absand

#if !defined(_ABSTANDCONFIG_H__CB8A8F86_8195_11D2_9EF6_006008447800__INCLUDED_)
#define _ABSTANDCONFIG_H__CB8A8F86_8195_11D2_9EF6_006008447800__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000

// Header include diagnostics
#if defined(_TRIAS_DBG_HEADER_DIAGNOSTICS)
#pragma message(__TIME__": include " __FILE__ )
#endif

///////////////////////////////////////////////////////////////////////////////
// globale Konfigurationskonstanten
#define __ATL_USED__				// ATL in diesem Projekt verwenden
#define ATL_NO_NAMESPACE			// ...aber ohne namespace

#define __OSPACESTL_USED__			// OspaceSTL in diesem Projekt verwenden
#define __CV__

//#define _USE_LEGACY_CODE			// Code kompatibel mit V2.10 halten

#if defined(_DEBUG)
#define _ATLX_ASSERT_ON_FAILURE
#endif // _DEBUG

///////////////////////////////////////////////////////////////////////////////
// TRiAS-Erweitungskonstanten
#define DLL
#define __XT
#define __DEXPROCS
#define __XTENSNDLL__

#endif // !defined(_ABSTANDCONFIG_H__CB8A8F86_8195_11D2_9EF6_006008447800__INCLUDED_)
