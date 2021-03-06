// Precompiled Header f�r IMPASC.EXT ------------------------------------------
// File: FEATUREP.HXX

#if !defined(_FEATUREP_HXX)
#define _FEATUREP_HXX

#include <windows.h>
#include <ole2.h>
#include <tstring>
#include <stdlib.h>

#if !defined(WIN32)
#include <shellapi.h>
#include <tchar.h>
#endif

#include <commonvu.hxx>         // CommonVu - eigene Klassendeklarationen

#include <errcodes.hxx>         // FehlerCodes
#include <xtension.h>           // Definition aller Erweiterungs- spezifischen
#include <xtensnx.h>		// Konstanten und Datenstrukturen

#include <eieruhr.hxx>

#include <ixtensn.hxx>		// Interfaces einer Erweiterung
#include <xtencunk.hxx>		// InterfaceImplementation der BasisKlasse
#include <xtsnguid.h>
#include <xtsnaux.hxx>
#include <strdupx.hxx>

#include <containr.hxx>

#include "uidobj.hxx"	// KlassenDeklarationen
#include "uidobj.inl"	// Inline-Funktionen

#include "feature.hxx"		// die Erweiterung selbst

#endif // _FEATUREP_HXX
