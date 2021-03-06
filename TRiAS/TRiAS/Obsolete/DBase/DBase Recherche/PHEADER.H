// FILE: PHEADER.H
// vor�bersetzter Header f�r DBASER32.EXT

#ifndef _PHEADER_H
#define _PHEADER_H

#include <dbasedlm.h>

#include <d4all.h>			// CodeBase-Klassen
#include <crcb.hxx>		 	// f�r Erzeugen/l�schen eines CodeBase-Objektes

#ifdef WIN32
   	#define __export
#include <bool.h>
#else
	#define LPCTSTR LPCSTR
	#define LPTSTR  LPSTR
	#define TEXT    _T
	#include "xtensnm.hxx"	// _XTENSN_ENTRY, ... f�r 16-Bit-Variante
	#include <tchar.h>		// LPCTSTR in xtencunk.hxx f�r 16-Bit-Variante
	#include <ole2.h>		// ITriasXtension, ... in ixtensn.hxx f�r 16-Bit-Variante
	#include <ole16.h>
	#include <shellapi.h>	// HKEY in xtsnaux.hxx f�r 16-Bit-Variante
	#include <print.h>
#endif

#include <tstring>
#include <stdio.h>
#include <stdlib.h>
#include <protos.h>  
#include <errcodes.hxx>      // FehlerCodes

#include <commonvu.hxx>
#include <containr.hxx>
#include <xtension.h>	
#include <ixtensn.hxx>
#include <xtensnx.h>
#include <xtencunk.hxx>			// CTriasExtension			  

#ifndef _TRIAS02_ENTRY
#define _TRIAS02_ENTRY
#endif

#ifndef EXPORT02
#define EXPORT02
#endif 

#endif 		// _PHEADER_H
