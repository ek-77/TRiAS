// $Header: $
// Copyright� 1998-2001 TRiAS GmbH Potsdam, All rights reserved
// Created: 27.04.2001 16:50:09
//
// This file was generated by the TRiASDB Data Server Wizard V1.02.115 (#HK010427)
//
// @doc
// @module TRiASOGCConfig.h | Konfigurationskonstanten f�r TRiASDB Data Server TRiASOGC

#if !defined(_TRIASOGCCONFIG_H__6DF5B225_85A4_406B_A203_B058B4D83F0E__INCLUDED_)
#define _TRIASOGCCONFIG_H__6DF5B225_85A4_406B_A203_B058B4D83F0E__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000

///////////////////////////////////////////////////////////////////////////////
// globale Konfigurationskonstanten
//#define _MERGE_PROXYSTUB			// merge proxys/stubs with this dll
#define __ATL_USED__				// ATL in diesem Projekt verwenden
#define __OSPACESTL_USED__			// ospace-STL verwenden
#define __MFC_USED__				// verwenden der MFC

///////////////////////////////////////////////////////////////////////////////
// die folgende Definition reinnehmen, wenn der Datenserver wirklich R/W sein soll
// #define _READWRITE

///////////////////////////////////////////////////////////////////////////////
// zus�tzliche _DEBUG-Optionen
#if defined(_DEBUG)
#define _ATLX_ASSERT_ON_FAILURE
// evtl. ausf�hrliches AddRef/Release Tracking zuschalten
//#define _ATLX_DEBUG_REFCOUNT_WALKSTACK
//#define _USE_IMAGE_HELP			// dabei MSSymbols verwenden

// evtl. Objekte global z�hlen
#define _ATLX_DEBUG_REFCOUNT
#define _ATLX_DEBUG_OBJECTCOUNT

// Interfaces verfolgen
//#define _ATL_DEBUG_INTERFACES
//#define _ATL_DEBUG_QI
#endif // _DEBUG


#endif // !defined(_TRIASOGCCONFIG_H__6DF5B225_85A4_406B_A203_B058B4D83F0E__INCLUDED_)
