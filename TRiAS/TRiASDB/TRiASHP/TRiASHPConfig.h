// $Header: $
// Copyright� 1998-2000 TRiAS GmbH Potsdam, All rights reserved
// Created: 10.05.2000 19:36:40
//
// This file was generated by the TRiASDB Data Server Wizard V1.02.086 (#HK000510)
//
// @doc
// @module TRiASHPConfig.h | Konfigurationskonstanten f�r TRiASHP Data Server TRiASHP

#if !defined(_TRIASHPCONFIG_H__D03C6896_B031_4661_9612_08CD0B0F4151__INCLUDED_)
#define _TRIASHPCONFIG_H__D03C6896_B031_4661_9612_08CD0B0F4151__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000

///////////////////////////////////////////////////////////////////////////////
// globale Konfigurationskonstanten
//#define _MERGE_PROXYSTUB			// merge proxys/stubs with this dll
#define __ATL_USED__				// ATL in diesem Projekt verwenden
#define __OSPACESTL_USED__			// ospace-STL verwenden

///////////////////////////////////////////////////////////////////////////////
// die folgende Definition reinnehmen, wenn der Datenserver R/W sein soll
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

///////////////////////////////////////////////////////////////////////////////
// TRiAS Schnittstelle
#define __XT
#define __DEXPROCS

///////////////////////////////////////////////////////////////////////////////
// required for Lol support
#define yy_user_config_

#endif // !defined(_TRIASHPCONFIG_H__D03C6896_B031_4661_9612_08CD0B0F4151__INCLUDED_)