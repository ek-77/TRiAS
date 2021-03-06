// Memberfunktionen f�r die Bufferung einzelner Objekte der DB
// File: BUFFER.CXX

extern "C" {
	#include <windows.h>
	#include <string.h>
	#include <protos.h>
	#include <limits.h>
}

#include "buffer.htp"

#include <commonvu.hxx>
#include <containr.hxx>
#include <drawobj.hxx>
#include <cvext.hxx>
#include <dcreator.hxx>
#include <deltree.hxx>

#if !defined(MSWIND)
#error "Diese Datei kann nur f�r MS-Windows verwendet werden"
#endif

#include "errcodes.hxx"
#include "draw_obj.hxx"
#include "iris.hxx"
#include "impexp.hxx"
// #include "buffdlg.hxx"

// globale Daten
extern Window *CurrActW;

// ---------------------------------------------------------------------------
// Aufbau des BuffDlgFensters, Abfrage der Parameter und Bufferung der ObjListe
ErrCode doBuffering (ObjContainer &OC) {
// DialogBox aufbauen und Parameter abfragen
/*BufferDlg BDlg (CurrActW);

	BDlg.Show();
	if (BDlg.Result() == 0) 	// Resultat der DialogBox
		return EC_OKAY;		// abgebrochen: kein Buffering

// EierUhr anschalten
Pointer waitPointer (HourGlass);
Pointer *oldPointer = CurrActW -> ChangePointer (&waitPointer);

// alle zu exportierenden Objekte aufsammeln
ObjFeld Objekte;
IrisWind *pW = (IrisWind *)CurrActW;

// Geometrierecherche durchf�hren
ErrCode EC = pW -> DBO().GIWindow (OC, Objekte, TRUE);
	if (EC != EC_OKAY) {
		CurrActW -> ChangePointer (oldPointer);
		return EC;
	}

// �ber Sicht Filtern
	EC = pW -> DBO().IdFilter (Objekte, BDlg.GetSrcSight());
	if (EC != EC_OKAY) {
		CurrActW -> ChangePointer (oldPointer);
		return EC;
	}

// Buffering f�r gefundene Objektmenge durchf�hren


// SandUhr wieder ausschalten
	CurrActW -> ChangePointer (oldPointer);
*/
return EC_OKAY;
}


