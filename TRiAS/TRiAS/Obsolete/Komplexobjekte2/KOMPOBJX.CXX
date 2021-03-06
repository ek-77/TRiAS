// Verwaltung von Objektrelationen --------------------------------------------
// File: KOMPOBJX.CXX

#include "kompobjp.hxx"
#include "kompobj.h"		// ResourceKonstanten

#include <initguid.h>		// nur im einem Module notwendig
#include "kobjguid.h"

#include "version.h"

//
// Die folgende Funktion mu� vom Nutzer bereitgestellt werden und lediglich
// ein Objekt vom konkreten ErweiterungTyp anlegen. Diese Funktion ist notwendig,
// da keine virtuellen Konstruktoren erlaubt sind.
//
CTriasExtension *NewExtension (void)		// NEU: ohne Parameter
{
	return new CRelationExtension();
}

//
// NEU: Die folgende Funktion mu� ebenfalls vom Nutzer bereitgestellt werden. 
// Sie liefert den (f�r jede Erweiterung neu zu generierenden) CLSID 
// dieser Erweiterung.
// Bitte beachten: JEDE Erweiterung mu� ihren eigenen ClassID haben. Dieser ID
// kann mit dem Tool GENGUID.EXE generiert werden. 
//
bool GetExtensionCLSID (CLSID &rClsID)	// Liefert CLSID
{
	memcpy (&rClsID, &CLSID_RelationExtension, sizeof (GUID));
	return true;
}

//
// NEU: Die Funktion UpdateRegistry mu� definiert werden, wenn die Erweiterung 
// sich selbst in der RegDB registrieren soll (empfohlen!!).
// Der ProgID (hier 'TRiAS.Features.1') ist eine ZeichenKette, die die Erweiterung
// in der RegDB repr�sentiert. Das Format sollte beibehalten werden. Die '... .1'
// steht f�r die VersionsNummer.
// Der KlassenName (hier die Stringresource hinter IDS_LONGCLASSNAME) ist eine 
// normal-lesbare Zeichenkette, die lokalisiert wird (deshalb in der Resource) und
// die Bezeichnung der Erweiterung definiert.
//
bool UpdateRegistry (bool fRegister)	// RegDB aktualisieren (initialisieren/l�schen)
{
	if (fRegister) {
	// RegDB initialisieren
		return ExtOleRegisterExtensionClass (g_hInstance,
				CLSID_RelationExtension, 
				TEXT("TRiAS.Relations.1"), IDS_LONGCLASSNAME,
				KOMPOBJ_MAJORVERSION, KOMPOBJ_MINORVERSION,
				EFUnLoadable);
	} else {
	// RegDB s�ubern
		return ExtOleUnregisterClass (CLSID_RelationExtension, 
					      TEXT("TRiAS.Relations.1"));
	}

return true;	// alles ok
}


// NEU: Die Funktion void DeleteExtension (CTriasExtension *pTE) mu� nicht mehr
// zur Verf�gung gestellt werden. Die Destruktoren sind 'virtual', so da� auch so
// alles sauber aufger�umt werden kann.

// Konstruktor der ExtensionKlasse --------------------------------------------
// Die nutzerdefinierte Erweiterung mu� von der Klasse 'CTriasExtension'
// abgeleitet sein, welche wiederum als einzige Parameter die ResID's der
// im Hauptfenster und ORFenster einzuh�ngeneden Menu's �bergeben bekommt.
CRelationExtension :: CRelationExtension (void)
		    : CTriasExtension()
{
}

// Destruktor -----------------------------------------------------------------
CRelationExtension :: ~CRelationExtension (void) 
{
	// nothing to do
}


// Diese Funktion wird einmalig nach der erfolgreichen Installation der 
// Erweiterung durch TRIAS gerufen. Hier sollten alle notwendigen 
// Initialisierungen erfolgen. Die Semantik hat sich nicht ge�ndert.
STDMETHODIMP_(bool) CRelationExtension :: InitExtension (short iMode)
{
	if (!CTriasExtension :: InitExtension (iMode))
		return false;

return true;
}

// Diese Funktion wird gerufen bevor die Erweiterung freigegeben wird.
// An dieser Stelle kann (und soll) der gesamte von der Erweiterung angeforderte
// Speicher freigegeben, und sonstige Aufr�umarbeiten durchgef�hrt werden.
// Die Semantik hat sich nicht ge�ndert.
STDMETHODIMP_(bool) CRelationExtension :: UnLoadExtension (void)
{
	return CTriasExtension :: UnLoadExtension();
}

STDMETHODIMP_(bool) CRelationExtension :: MenuInit (
			HMENU hMenu, LPARAM lParam, HWND hWnd)
{
// �berpr�fen, ob unser Menu gefragt ist
	if (hWnd == NULL && hMenu != MenuHandle()) return false;
	if (hWnd != NULL && hMenu != ORMenuHandle()) return false;

// Menupunkte aktivieren/deaktivieren
	if (hWnd == NULL) {	// HauptfensterMenu
//		EnableMenuItem (hMenu, ID_FEATURE_DUPLICATE+MenuOffset(),
//				MF_BYCOMMAND|(m_hORWnd ? MF_GRAYED : MF_ENABLED));
		return true;
	}

// ORFensterMenu
//	EnableMenuItem (hMenu, ID_FEATURE_DUPDELETE+MenuOffset(),
//			MF_BYCOMMAND|(m_hORWnd == hWnd ? MF_ENABLED : MF_GRAYED));
	return true;
}


STDMETHODIMP_(bool) CRelationExtension :: MenuCommand (WPARAM wParam, HWND hWnd)
{
/*
	switch (wParam) {
	default:
		break;
	}
*/
return false;
}

STDMETHODIMP_(LRESULT) CRelationExtension :: Notification (WPARAM wParam, LPARAM lParam)
{
/*
	switch (wParam) {
	default:
		break;
	}
*/	
return false; // immer weiterleiten
}

bool ReadTextMerkmal (short iTTyp, DWORD lTarget, long lMCode, char *pText, short iLen)
{
TARGETMERKMAL gm;

        gm.dwSize = sizeof(TARGETMERKMAL);
        gm.lTarget = (LPARAM)lTarget;
        gm.lMCode = lMCode;
        gm.imaxLen = pText != NULL ? iLen : 0;
        gm.pMText = pText;
        gm.iTTyp = iTTyp;
        if (DEX_GetTextMerkmal (gm) == NULL)
                return false;

return true;
}


// Generieren eines ORFensters mit Anzeige eines MCodes -----------------------
bool CRelationExtension :: GenerateObjWnd (long lMCode, long *pObjs, long lCnt, uint uiRes)
{
// RechercheFenster anlegen
CREATEOBJEKTINFOEX COI;
ResString resCaption (ResID (uiRes, &RF()), 64);
POINT pt;

	pt.x = 0, pt.y = 0;
	
	INITSTRUCT (COI, CREATEOBJEKTINFOEX);
	COI.lpCaption = (char *)resCaption.Addr();
        COI.plObjs = pObjs;
        COI.iNumObjs = short(lCnt);
        COI.cMColor = RGB(255, 0, 0);
        COI.pntPos = pt;
	COI.m_iFlags = ROSortText;
	
bool fResult = (DEX_CreateObjektInfo (COI) != NULL);	// ORFenster erzeugen

return fResult;
}		        
