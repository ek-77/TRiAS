// Funktionen f�r Erweiterungs-DLL "Geometriebereinigung"
// File: GEOREIN.CXX
// W. M�rtl


#include "GeoReinP.hxx"

#include <limits.h>		// ULONG_MAX
#include <resstrg.h>    // IDS_UIFORMAT

#include "GeomDLL.hxx"	// InitGeometrie
#include "GeometrR.h"	// IDS_GEOERROR, ...
#include "datbank.hxx"	// WriteFeatureText()

#include "GeoReinR.h"	// IDS_LONGCLASSNAME

#include "SelbInzi.hxx"	// SelbstInzi
#include "pa.hxx"		// PolygonApproximation()

#include <initguid.h>	// nur in einem Modul f�r Linken (*guid.h, CLSID_*) notwendig
#include "version.h"	// GEOREIN_MAJORVERSION, ...
#include "georein.hxx"	// GeoReinExtension


#if defined(_DEBUG)
#undef THIS_FILE
static char BASED_CODE THIS_FILE[] = __FILE__;
#endif



///////////////////////////////////////////////////////////////////////////////////////////////
// globale Parameter
extern UINT __DexNotify;
extern UINT __DexCmd;
extern char g_pDLLName [_MAX_PATH];
    


///////////////////////////////////////////////////////////////////////////////////////////////
BEGIN_OBJECT_MAP(ObjectMap)		// Makro
	OBJECT_ENTRY(CLSID_GeometrieBereinigung, GeoReinExtension)
END_OBJECT_MAP()

_ATL_OBJMAP_ENTRY* GetObjectMap (void)
{
	return ObjectMap;
}



///////////////////////////////////////////////////////////////////////////////////////////////
// Die Funktion UpdateRegistry mu� definiert werden, wenn die Erweiterung sich selbst in der
// RegDB registrieren soll (empfohlen!!).
// Der ProgID (hier 'TRiAS.Bereinigung.1') ist eine Zeichenkette, die die Erweiterung in der
// RegDB repr�sentiert. Das Format sollte beibehalten werden. Die '... .1' steht f�r die
// VersionsNummer.
// Der KlassenName (hier die Stringresource hinter IDS_LONGCLASSNAME) ist eine normal-lesbare
// Zeichenkette, die lokalisiert wird (deshalb in der Ressource) und die Bezeichnung der
// Erweiterung definiert.
BOOL UpdateRegistry (BOOL bRegister)	// RegDB aktualisieren (initialisieren/l�schen)
{
	if (bRegister)
	{
	// RegDB initialisieren ...
	bool bRet = ExtOleRegisterExtensionClass (g_hInstance, CLSID_GeometrieBereinigung,
											  TEXT("TRiAS.Bereinigung.1"), IDS_LONGCLASSNAME,
											  GEOREIN_MAJORVERSION, GEOREIN_MINORVERSION, 
											  EFPreLoad|EFPriorityLoad);

	// ... durch Eintrag des Schl�ssels "GeoRein", der anzeigt, ob die Geometriefehler,
	// die eigentlich mit gutem Gewissen nicht automatisch bereinigt werden k�nnen,
	// doch zwangsweise bereinigt werden sollen (default: ja, d.h. alle Bits setzen)
	// Bit 0: Selbstinzidenz
	// Bit 1: Konturinzidenz
	// Bit 2: Insel au�erhalb der Au�enkontur
	// Bit 3: Insel innerhalb einer anderen Insel
	// Bit 4: Entartung
	// Bit 5: ung�ltige Koordinaten

	// ... durch Eintrag der Schl�ssel DoppelPunkt, SpitzenWinkel bzw. Schleife, die anzeigen,
	// mit welcher Genauigkeit auf "doppelte Punkte", "Spitzen" bzw. "Schleifen" getestet werden soll
	// (default: dDopEps, dSpiEps bzw. iLoopLen)

	// ... durch Eintrag des Schl�ssels PolyApprox, der anzeigt, ob bei der Abspeicherung
	// eines Geometrieobjektes in die TRiAS-Datenbank eine Polygonapproximation
	// durchgef�hrt werden soll (default: nein, d.h. 0)
	// der eingetragene Wert (0 ... 100) ist ein Ma� f�r die Reduzierung der St�tzpunktanzahl

	ResourceFile RF (g_pDLLName);
	ResString ErrClean (ResID (IDS_ERRCLEAN, &RF), 30);		// f�r Schl�ssel "GeoRein"
	ResString AutoClear (ResID (IDS_AUTOCLEAR, &RF), 30);	// f�r Schl�ssel "AutoClear"	
	ResString PolyApprox (ResID (IDS_POLYAPPROX, &RF), 30);	
	CCurrentUser cuExtConfig (RegistryExtPathRein, true);	// Software\\...\\TRiAS\\Extensions\\TRiAS.Bereinigung.1\\Config
	DWORD dwWert1 = 0x3F;					// default-Wert des Schl�ssels "GeoRein"
	DWORD dwWert2 = bClear;					// default-Wert des Schl�ssels "AutoClear"
	DWORD dwWert3 = DtoL (10. * dDopEps);	// default-Wert des Schl�ssels "DoppelPunkt"
	DWORD dwWert4 = DtoL (10. * dSpiEps);	// default-Wert des Schl�ssels "Spitze"
	DWORD dwWert5 = iLoopLen;				// default-Wert des Schl�ssels "Schleife"
	DWORD dwWert6 = DtoL (100. * dRedEps);	// default-Wert des Schl�ssels "PolyApprox"

		// wenn Schl�ssel "GeoRein" bisher noch nicht in der RegDB existiert, dann diesen
		// Schl�ssel anlegen und alle Bits setzen
		if (!cuExtConfig.GetDWORD (ErrClean.Addr(), dwWert1))
			cuExtConfig.SetDWORD (ErrClean.Addr(), dwWert1);

		// wenn Schl�ssel "AutoClear" bisher noch nicht in der RegDB existiert, dann diesen
		// Schl�ssel anlegen und auf bClear setzen
		if (!cuExtConfig.GetDWORD (AutoClear.Addr(), dwWert2))
			cuExtConfig.SetDWORD (AutoClear.Addr(), dwWert2);

		// wenn Schl�ssel "DoppelPunkt" bisher noch nicht in der RegDB existiert, dann diesen
		// Schl�ssel anlegen und auf 10*dDopEps setzen (um eine Kommastelle zu erm�glichen)
		if (!cuExtConfig.GetDWORD (RegDoppelPunkt, dwWert3))
			cuExtConfig.SetDWORD (RegDoppelPunkt, dwWert3);

		// wenn Schl�ssel "SpitzenWinkel" bisher noch nicht in der RegDB existiert, dann diesen
		// Schl�ssel anlegen und auf 10*dSpiEps setzen (um eine Kommastelle zu erm�glichen)
		if (!cuExtConfig.GetDWORD (RegSpitzenWinkel, dwWert4))
			cuExtConfig.SetDWORD (RegSpitzenWinkel, dwWert4);

		// wenn Schl�ssel "Schleife" bisher noch nicht in der RegDB existiert, dann diesen
		// Schl�ssel anlegen und auf iLoopLen setzen
		if (!cuExtConfig.GetDWORD (RegSchleife, dwWert5))
			cuExtConfig.SetDWORD (RegSchleife, dwWert5);

		// wenn Schl�ssel "PolyApprox" bisher noch nicht in der RegDB existiert, dann
		// diesen Schl�ssel anlegen und auf 100*dRedEps setzen (um zwei Kommastelle zu
		// erm�glichen)
		if (!cuExtConfig.GetDWORD (PolyApprox.Addr(), dwWert6))
			cuExtConfig.SetDWORD (PolyApprox.Addr(), dwWert6);

#if _TRiAS_VER < 0x0300
	// alte Schl�sselbezeichnungen in Software\\...\\TRiAS\\Config l�schen
	ResString RegistryPfad (ResID (IDS_REGPFAD, &RF), 100);
	CCurrentUser cuConfig (RegistryPfad.Addr(), true);	// Software\\...\\TRiAS\\Config

		cuConfig.DeleteValue (ErrClean.Addr());
		cuConfig.DeleteValue (PolyApprox.Addr());
#endif // _TRiAS_VER < 0x0300

		return bRet;
	}
	else
		// RegDB s�ubern
		// die eigenen Eintr�ge m��ten hier wieder gel�scht werden !!!
		return ExtOleUnregisterClass (CLSID_GeometrieBereinigung, TEXT("TRiAS.Bereinigung.1"));

	return true;	// alles ok
}



///////////////////////////////////////////////////////////////////////////////////////////////
// globale Parameter
ResourceFile* pRF = NULL;
bool bMess;		// Flag f�r Ausgabe im DebugWindow (wird in InitExtension gesetzt)

             


///////////////////////////////////////////////////////////////////////////////////////////////
int ErrHandler (int iWC, int iRoutine, ...);



///////////////////////////////////////////////////////////////////////////////////////////////
// Konstruktor
// Die Erweiterung wird von der Klasse 'CTriasExtension' abgeleitet, welche wiederum als
// einzigen Parameter den ResID des im Hauptfenster einzuh�ngenden Men�s �bergeben bekommt.
GeoReinExtension :: GeoReinExtension (void)
				  : CTriasExtension()
{
	// Member initialisieren
	m_pCT = NULL;
	m_ulMCodeGeoErr = (ulong)-1;	// MerkmalsCode f�r Geometriefehler
	m_ulMCodeGeoClear = (ulong)-1;	// MerkmalsCode f�r bereinigten Geometriefehler
	m_ulMCodeInterSect = (ulong)-1;	// MerkmalsCode f�r Verschnitt
	m_lSem = -1L;
	m_bAnzeige = false;				// Anzeige bei KoOrd-Koordinaten noch nicht erfolgt
}


// --------------------------------------------------------------------------------------------
// Destruktor
GeoReinExtension :: ~GeoReinExtension (void) 
{
}



///////////////////////////////////////////////////////////////////////////////////////////////
// Im folgenden werden alle durch diese Erweiterung �berladenen virtuellen Funktionen definiert

// --------------------------------------------------------------------------------------------
// Folgende Funktion wird einmalig nach der erfolgreichen Installation der Erweiterung
// durch TRiAS gerufen. Hier erfolgen alle notwendigen Initialisierungen.
STDMETHODIMP_(BOOL) GeoReinExtension :: InitExtension (short iMode)
{
	if (!CTriasExtension :: InitExtension (iMode))
		return false;

	InitGeometrie (hWnd(), __DexNotify, __DexCmd);
	
	RegisterNotification (__DexCmd, false); // Windows-Message
	pRF = &RF();
	
	_ASSERTE (pRF != NULL);

ErrCode rcDummy;

	DEX_ErrInstall (rcDummy, WC_MESSAGE_REIN, ErrHandler, &m_oldEH);

	// TRiAS-Messages (nur 1 Parameter) anfordern
	RegisterNotification (DEX_PROJECTOPEN);	// registriere Benachrichtigung zu Projekt�ffnung
	RegisterNotification (DEX_PROJECTCLOSE);
	RegisterNotification (DEX_RESCALE);
	RegisterNotification (DEX_HEADERREREAD);
	RegisterNotification (DEX_N_SAVECOMPLETED);

	m_iMode = iMode;
	InitAndOPEN (iMode);

	return true;
} // InitExtension


// --------------------------------------------------------------------------------------------
STDMETHODIMP_(BOOL) GeoReinExtension :: UnLoadExtension (void)
{
// Interface's wieder freigeben
	m_wTopoRel.Assign (NULL);	// TopoRel freigeben

// TRiAS-Messages wieder abmelden
	UnRegisterNotification (DEX_N_SAVECOMPLETED);
	UnRegisterNotification (DEX_HEADERREREAD);
	UnRegisterNotification (DEX_RESCALE);
	UnRegisterNotification (DEX_PROJECTCLOSE);
	UnRegisterNotification (DEX_PROJECTOPEN);
	
	UnRegisterNotification (__DexCmd, false);

ErrCode rcDummy;

	DEX_ErrInstall (rcDummy, WC_MESSAGE_REIN, m_oldEH, NULL);

	// restliche Abmeldungen
	UnLoadAndCLOSE();

	// die einstellbaren Parameter in die Registry-DB wegschreiben
	AdjustValuesToRegistry();

	return CTriasExtension :: UnLoadExtension();
} // UnLoadExtension


// --------------------------------------------------------------------------------------------
// Diese Funktion wird bei Systemereignissen diverser Natur gerufen
STDMETHODIMP_(LRESULT) GeoReinExtension :: Notification (WPARAM iMsg, LPARAM p)
{
	switch (iMsg)
	{
		case DEX_PROJECTOPEN:	// Projekt wird ge�ffnet
			InitAndOPEN (m_iMode);
			break;
        
		case DEX_PROJECTCLOSE:
			UnLoadAndCLOSE();
			break;

		case DEX_N_SAVECOMPLETED:
		case DEX_RESCALE:
		case DEX_HEADERREREAD:
			DELETE_OBJ (m_pCT);
			m_pCT = new CoordTransX();
			if (! m_pCT) 
				DEX_Error (RC_georein, EC_NOMEMORY);
			m_bMetric = m_pCT->isMetric();
			break;

		default:		// Notifikationen der Basisklasse
			break;
	}

	return CTriasExtension :: Notification (iMsg, p);

} // Notification


// --------------------------------------------------------------------------------------------
STDMETHODIMP_(LRESULT) GeoReinExtension :: WindowsNotification (UINT wMsg, WPARAM wParam,
																LPARAM lParam)
{
	if (wParam != DEX_MODIFYOBJGEOMETRIE)	// nur Reaktion, wenn Objekt eingespeichert werden soll	 
		return false;						// Meldung wird nicht bearbeitet

	if (piInterlockedIncrement (&m_lSem) > 0)
	{
		piInterlockedDecrement (&m_lSem);
		return false;		// nicht mehrfach aufrufen
	}

OBJGEOMETRIE *pOG = (OBJGEOMETRIE *)lParam;
IUnknown *pICS = NULL;

	if (sizeof(GEOMETRIEWITHCS) == pOG->dwSize)
	{
		pICS = ((GEOMETRIEWITHCS *)lParam) -> pICS;
		pOG = ((GEOMETRIEWITHCS *)lParam) -> pOG;
	}

int iFlags = pOG->iFlags;	// Flags des zu testenden Objektes

	if (iFlags & OGGeometryIsChecked)	// Geometrie ist schon (mit der KurzAnalyse) getestet,
	{									//  deshalb keine weitere Testung
		iFlags &= ~OGGeometryIsChecked;	// OGGeometryIsChecked zur�cksetzen
		piInterlockedDecrement (&m_lSem);
		return false;
	}

	GeometrieCheck (pOG, pICS);
	piInterlockedDecrement (&m_lSem);

	return false;
} // WindowsNotification


// --------------------------------------------------------------------------------------------
// Aktionen, die bei InitExtension und DEX_PROJECTOPEN gleich sind
bool GeoReinExtension :: InitAndOPEN (int iMode)
{
	m_ulMCodeGeoErr = ULONG_MAX;	// MerkmalsCode f�r Geometriefehler
	m_ulMCodeGeoClear = ULONG_MAX;	// MerkmalsCode f�r bereinigten Geometriefehler
	m_ulMCodeInterSect = ULONG_MAX;	// MerkmalsCode f�r Verschnitt

// CoordTransX anlegen
	if (DEX_TestActiveProject())    // ein Projekt ist schon ge�ffnet
	{
		DELETE_OBJ (m_pCT);		// vorsichtshalber l�schen
		m_pCT = new CoordTransX();	// KoordinatenTransformation
		if (! m_pCT)				// (nur einmal f�r jedes Projekt anlegen)
		{                                                                      
			DEX_Error (RC_georein, EC_NOMEMORY);
			return false;
		}
		m_bMetric = m_pCT->isMetric();
	}

// Abfrage in der RegDB,
// ... mit welcher Genauigkeit auf "doppelte Punkte", "Spitzen" und "Schleifen" getestet werden soll
// ... ob eine Polygonapproximation durchgef�hrt werden soll
ResString AutoClear (ResID (IDS_AUTOCLEAR, pRF), 30);	
ResString PolyApprox (ResID (IDS_POLYAPPROX, pRF), 30);	
CCurrentUser cuExtConfig (KEY_READ, RegistryExtPathRein);
DWORD dwWert1, dwWert2, dwWert3, dwWert4, dwWert5;

	if (cuExtConfig.GetDWORD (AutoClear.Addr(), dwWert1))
		m_bClear = dwWert1;
	else
		m_bClear = bClear;

	if (cuExtConfig.GetDWORD (RegDoppelPunkt, dwWert2))
		m_dDPEps = dwWert2 / 10.;
	else
		m_dDPEps = dDopEps;

	if (cuExtConfig.GetDWORD (RegSpitzenWinkel, dwWert3))
		m_dSpEps = dwWert3 / 10.;
	else
		m_dSpEps = dSpiEps;

	if (cuExtConfig.GetDWORD (RegSchleife, dwWert4))
		m_iLoopLen = dwWert4;
	else
		m_iLoopLen = iLoopLen;

	if (cuExtConfig.GetDWORD (PolyApprox.Addr(), dwWert5))
		m_dReduz = dwWert5 / 100.;
	else
		m_dReduz = dRedEps;

	return true;

} // InitAndOPEN


// --------------------------------------------------------------------------------------------
// Aktionen, die bei UnLoadExtension und DEX_PROJECTCLOSE gleich sind
void GeoReinExtension :: UnLoadAndCLOSE (void)
{
	DELETE_OBJ (m_pCT);
}


// --------------------------------------------------------------------------------------------
// die einstellbaren Parameter in die Registry-DB wegschreiben, da sie durch die
// Interface-Funktion SetAdjustValue() ver�ndert worden sein k�nnen
void GeoReinExtension :: AdjustValuesToRegistry (void)
{
ResString AutoClear (ResID (IDS_AUTOCLEAR, pRF), 30);	
ResString PolyApprox (ResID (IDS_POLYAPPROX, pRF), 30);	
CCurrentUser cuExtConfig (RegistryExtPathRein, true);
DWORD dwWert2 = m_bClear;				// Wert des Schl�ssels "AutoClear"
DWORD dwWert3 = DtoL (10. * m_dDPEps);	// Wert des Schl�ssels "DoppelPunkt"
DWORD dwWert4 = DtoL (10. * m_dSpEps);	// Wert des Schl�ssels "Spitze"
DWORD dwWert5 = m_iLoopLen;				// Wert des Schl�ssels "Schleife"
DWORD dwWert6 = DtoL (100. * m_dReduz);	// Wert des Schl�ssels "PolyApprox"

	if (!cuExtConfig.GetDWORD (AutoClear.Addr(), dwWert2))
		cuExtConfig.SetDWORD (AutoClear.Addr(), dwWert2);

	if (!cuExtConfig.GetDWORD (RegDoppelPunkt, dwWert3))
		cuExtConfig.SetDWORD (RegDoppelPunkt, dwWert3);

	if (!cuExtConfig.GetDWORD (RegSpitzenWinkel, dwWert4))
		cuExtConfig.SetDWORD (RegSpitzenWinkel, dwWert4);

	if (!cuExtConfig.GetDWORD (RegSchleife, dwWert5))
		cuExtConfig.SetDWORD (RegSchleife, dwWert5);

	if (!cuExtConfig.GetDWORD (PolyApprox.Addr(), dwWert6))
		cuExtConfig.SetDWORD (PolyApprox.Addr(), dwWert6);

} // AdjustValuesToRegistry


// --------------------------------------------------------------------------------------------
// Test, ob Geometrie �berhaupt �berpr�ft werden soll und Aufruf der GeometrieTest-Routine;
// R�ckgabe von true, wenn Objektgeometrie �berpr�ft wurde, sonst false
bool GeoReinExtension :: GeometrieCheck (OBJGEOMETRIE *pOG, IUnknown *pICS)
{
	_ASSERTE (pOG != NULL);

	if (! pOG) return false;

int iFlags = pOG->iFlags;	//  Flags des zu testenden Objektes

	m_iOT = pOG->iObjTyp;	// Objekttyp (Punkt, Linie, Fl�che, Text, ...) bzw.
	if ((m_iOT != OT_PUNKT && m_iOT != OT_KANTE && m_iOT != OT_FLAECHE &&
		m_iOT != OT_TEXT && m_iOT != OT_LABEL) ||	// weder Geometrie- noch (indirektes) Textobjekt bzw.
		iFlags & OGTempObject ||	// tempor�re Abspeicherung oder
		iFlags & OGOverlay)			// schon vorhandene Geometrie �bernehmen
		return false;	// dann keine Testung der Geometrie; Objekt wird deshalb nur durchgereicht
				
	Approximation32 (pOG);

bool bDblCoord = iFlags & OGConverted;	// Koordinaten des an GeoRein �bergebenen Objektes sind
										// im double- (true) bzw. KoOrd-Format (false)

// Konvertierung in ElementarObjekt (EPunkt, EKante, EFlaeche); aus Text wird auch Punkt
EObjekt* pEO = NULL;	// EObjekt, das aus OBJGEOMETRIE rekonstruiert wird

	if (!OBJGEOMETRIEinEObj (pOG, pEO, m_pCT, pICS))
	{
		DELETE_OBJ (pEO);	// vorsichtshalber
		return false;
	}
                    
string sUIdent;
long lONr = pOG->lONr;	// Objektnummer des zu testenden Objektes
	
	if (0 != lONr && -1 != lONr)	// neue lokale Stringresource
	{
	ResString resText (ResID (IDS_UIFORMAT, pRF), 20);

		Format (sUIdent, (char*)resText.Addr(), lONr);
	}
	else
		sUIdent = ResString (ResID (IDS_UINEUTRAL, pRF), 20);

bool bEIO = false;		// pEO (noch) nicht in OBJGEOMETRIE zur�ck�bertragen
string sAnalyseText;	// Ergebnis der Fehleranalyse

// Test auf Geometriefehler und evtl. Bereinigung; enth�lt das Objekt noch Fehler, die
// nicht automatisch bereinigt werden konnten, dann R�ckgabe von false
GeoFehlerListe GFL(*pEO);

	if (! GeometrieTest (GFL, *pEO, bDblCoord, iFlags, sAnalyseText))	// Geometriefehler
		SetFeatureWithError (lONr, pEO, pOG, bDblCoord, iFlags, bEIO, sAnalyseText, sUIdent);

	else	// kein Geometriefehler (mehr)
		SetFeatureWithoutError (lONr, pEO, pOG, bDblCoord, iFlags, bEIO, sAnalyseText, sUIdent, GFL);

	if (! bEIO)	// (bereinigtes) Geometrieobjekt wieder in Struktur OBJGEOMETRIE einschreiben
		EObjInOBJGEOMETRIE (pEO, m_iOT, pOG, bDblCoord);

	DELETE_OBJ (pEO);
	
	return true;
} // GeometrieCheck


// --------------------------------------------------------------------------------------------
// Behandlung des Merkmals "Geometriefehler" f�r ein Objekt mit Geometriefehler
void GeoReinExtension :: SetFeatureWithError (long lONr, EObjekt* pEO, OBJGEOMETRIE* pOG,
				  bool bDblCoord, int& iFlags, bool& bEIO, string sAnalyseText, string sUIdent)
{
ErrCode rcDummy;	// f�r DEX_SetError()

	// Liegt ein Geometriefehler vor, wird das Objekt entweder abgewiesen oder unter bestimmten
	// Bedingungen trotzdem abgespeichert, aber mit dem Merkmal "Geometriefehler" versehen, in
	// dem der Fehler beschrieben wird.

	// ein schon in der DB vorhandenes Objekt wurde modifiziert
	if (iFlags & OGModObject)	// Geometrie des Objektes ersetzen
	{
		// hatte dieses Objekt schon Geometriefehler, wird es trotz der immer noch vorhandenen
		// Fehler abgespeichert, da ja f�r deren Bereinigung mehrere Schritte n�tig sein k�nnen;
		// die Fehlermitteilung wird aktualisiert
		if (S_FALSE != FehlerhaftesObjekt (NULL, lONr))
		{
			EObjInOBJGEOMETRIE (pEO, m_iOT, pOG, bDblCoord);	// pEO ist (evtl.) teilbereinigt
			bEIO = true;							// pEO in OBJGEOMETRIE zur�ck�bertragen
			GeometryErrorToFeature (pOG, IDS_GEOERROR, IDS_GEOERRORKT, IDS_GEOERRORLT,
									m_ulMCodeGeoErr, sAnalyseText, sUIdent);
		}


		// dieses Objekt war bisher fehlerfrei, ist aber jetzt fehlerbehaftet
		else
		{
		struct ErrBox ebDate;

			ebDate.bAnsw = false;	// YES/NO gedr�ckt (true/false)

			// nur dann abgespeichert, wenn das OGAskWhenError-Flag gesetzt ist und ...
			if (iFlags & OGAskWhenError)
			{
			ResString resText (ResID (IDS_DEFECTSTORE, pRF), 150);

				ebDate.sErrText = resText.Addr();
				DEX_SetError (rcDummy, 0, WC_MESSAGE_REIN, (void*)&ebDate);
			}

			// ... der Anwender die Abfrage bejaht
			if (ebDate.bAnsw)	// fehlerbehaftet abspeichern
			{
				EObjInOBJGEOMETRIE (pEO, m_iOT, pOG, bDblCoord);
				bEIO = true;
				GeometryErrorToFeature (pOG, IDS_GEOERROR, IDS_GEOERRORKT, IDS_GEOERRORLT,
									    m_ulMCodeGeoErr, sAnalyseText, sUIdent);
			}
			else		// nicht abspeichern
				pOG->iFlags |= OGIgnoreGeometry;	// neue Geometrie ignorieren
		}
	}


	// ein bisher noch nicht in der DB vorhandenes Objekt soll eingespeichert werden
	else
	{
	long lNewONr = 0;	// Objektnummer, wenn das Objekt fehlerhaft abgespeichert wird
				
	// bei aufgetretenen Fehlern wird nur dann abgespeichert, wenn das OGAskWhenError-Flag
	// gesetzt ist und ...
	struct ErrBox ebDate;

		ebDate.bAnsw = false;	// YES/NO gedr�ckt (true/false)

		if (iFlags & OGAskWhenError)
		{
		ResString resText (ResID (IDS_DEFECTSTORE, pRF), 150);

			ebDate.sErrText = resText.Addr();
			DEX_SetError (rcDummy, 0, WC_MESSAGE_REIN, (void*)&ebDate);
		}

		// ... der Anwender die Abfrage bejaht (z.B. bei Neueditierung) oder wenn das
		// OGForceGeoError-Flag nicht gesetzt ist (z.B. bei Daten-Import)
		if (ebDate.bAnsw || !(iFlags & OGForceGeoError))
		{
			EObjInOBJGEOMETRIE (pEO, m_iOT, pOG, bDblCoord);	// pEO ist (evtl.) teilbereinigt
			bEIO = true;

			// vor dem Anh�ngen des Merkmals "Geometriefehler" wird dieses Objekt in der
			// Routine GeometryErrorToFeature() erst einmal erzeugt
			GeometryErrorToFeature (pOG, IDS_GEOERROR, IDS_GEOERRORKT, IDS_GEOERRORLT,
									m_ulMCodeGeoErr, sAnalyseText, sUIdent);
			lNewONr = pOG->lONr;
		}

		// Objekt ist jetzt evenuell in die Datenbank abgespeichert;
		// durch das noch nachfolgend gesetzte OGIgnoreGeometry-Flag wird TRiAS mitgeteilt,
		// da� das Objekt fehlerhaft ist und deshalb nicht in die DB einzuspeichern ist
		// (war das OGForceGeoError-Flag r�ckgesetzt gewesen, ist dieses Objekt schon durch
		// die Routine GeometryErrorToFeature() fehlerhaft abgespeichert worden)
		pOG->iFlags |= OGIgnoreGeometry;
		pOG->lONr = lNewONr;
	}
} // SetFeatureWithError


// --------------------------------------------------------------------------------------------
// Behandlung des Merkmals "Geometriefehler" f�r ein Objekt ohne bzw. mit automatisch
// bereinigtem Geometriefehler
void GeoReinExtension :: SetFeatureWithoutError (long lONr, EObjekt* pEO, OBJGEOMETRIE* pOG,
                                  bool bDblCoord, int& iFlags, bool& bEIO, string sAnalyseText,
								  string sUIdent, GeoFehlerListe& GFL)
{	
	// Geometrie eines schon in der DB vorhandenen Objektes soll ersetzt werden
	if (iFlags & OGModObject)
		FehlerMerkmalLoeschen (lONr);	// dann Merkmal "Geometriefehler" l�schen

	if (sAnalyseText.length() > 0)	// Text f�r automatisch bereinigte Geometriefehler
	{
		EObjInOBJGEOMETRIE (pEO, m_iOT, pOG, bDblCoord);	// pEO ist (evtl.) teilbereinigt
		bEIO = true;

		if (GeometryErrorToFeature (pOG, IDS_GEOERROR, IDS_GEOERRORKT, IDS_GEOERRORLT,
									m_ulMCodeGeoClear, sAnalyseText, sUIdent))
									
		// nur wenn Objekt bisher noch nicht existiert hatte, wurde es jetzt durch
		// GeometryErrorToFeature() angelegt und in die DB eingespeichert; deshalb soll Objekt
		// im weiteren Speicherprozess von TRiAS ignoriert werden
		if (0 == (iFlags & OGModObject))
			pOG->iFlags |= OGIgnoreGeometry;
			
		// Test, ob sich am Kantenende eine Schleife befand
		IsLineWithLoop (GFL, pOG->lIdent, iFlags, sUIdent);
	}
} // SetFeatureWithoutError


// --------------------------------------------------------------------------------------------
// Die folgende Funktion verpa�t dem fehlerhaften bzw. dem bereinigten Objekt ein Merkmal, in
// dem die Beschreibung der (bereinigten) Geometriefehler eingetragen sind. Wenn das Objekt
// noch nicht existiert, wird es vorher erzeugt.
bool GeoReinExtension :: GeometryErrorToFeature (OBJGEOMETRIE* pOG, uint uiResKey,
			   uint uiResKT, uint uiResLT, ulong& ulMCode, string sAnalyseText, string sUIdent)
{
	_ASSERTE (pOG != NULL);

	if (0 == (pOG->iFlags & OGModObject))	// Geometrie des Objektes nicht ersetzen,
	{										// d.h. Objekt existiert noch nicht
	// Test, ob sAnalyseText IRGENDWO ein 'F' enth�lt
	size_t pos1 = 0, pos2;
		
		for (;;)
		{
			pos2 = sAnalyseText.find ('F', pos1);
			if (NPOS == pos2) break;		// kein 'F' (mehr) gefunden

			// sAnalyseText enth�lt irgendwo ein 'F'; Folgt darauf das Zeichen '1' ... '9' ?
			if ('1' <= sAnalyseText[pos2+1] && sAnalyseText[pos2+1] <= '9')
			{
				// Folgt danach ": " ?
				if (':' == sAnalyseText[pos2+2] && ' ' == sAnalyseText[pos2+3])
				{	// Objekt hat Geometriefehler, soll aber trotzdem abgespeichert werden
					pOG->iFlags |= OGObjectHasGeometryErrors;
					break;
				}

				// bzw. Ziffer und ": " ?
				else if ('0' <= sAnalyseText[pos2+2] && sAnalyseText[pos2+2] <= '9' &&
						 ':' == sAnalyseText[pos2+3] && ' ' == sAnalyseText[pos2+4])
				{
					pOG->iFlags |= OGObjectHasGeometryErrors;
					break;
				}

				// bzw. Kleinbuchstabe und ": " ?
				else if ('a' <= sAnalyseText[pos2+2] && sAnalyseText[pos2+2] <= 'z' &&
						 ':' == sAnalyseText[pos2+3] && ' ' == sAnalyseText[pos2+4])
				{
					pOG->iFlags |= OGObjectHasGeometryErrors;
					break;
				}
			
				// bzw. Ziffer, Kleinbuchstabe und ": " ?
				else if ('0' <= sAnalyseText[pos2+2] && sAnalyseText[pos2+2] <= '9' &&
						 'a' <= sAnalyseText[pos2+3] && sAnalyseText[pos2+3] <= 'z' &&
						 ':' == sAnalyseText[pos2+4] && ' ' == sAnalyseText[pos2+5])
				{
					pOG->iFlags |= OGObjectHasGeometryErrors;
					break;
				}}

			pos1 = pos2 + 1;
		}

		// Da das Objekt noch nicht existiert, wird an dieser Stelle versucht, es in der
		// Datenbank zu erzeugen.
#if _TRiAS_VER < 0x0300
		DEX_ModObjGeometrie (*pOG);
#else
		pOG->iFlags |= OGNoExtendedErrorCheck;	// das Teilen von Kanten wird erst einmal unterbunden (#WM021217)
		DEX_ModObjGeometrieEx (DEX_GetContextDataSource(), *pOG);
#endif // _TRiAS_VER < 0x0300

		if (0 == pOG->lONr || -1 == pOG->lONr)
			return false;	// Objekt wurde nicht erzeugt

		// um in Zukunft doppeltes Einspeichern verhindern:
		pOG->iFlags &= ~OGNewObject;	// kein neues Objekt generieren, sondern
		pOG->iFlags |= OGModObject;		//  Geometrie des Objektes ersetzen
	
		// f�r alle F�lle unseren UniqueIdent verpassen
		if (sUIdent == ResString (ResID (IDS_UINEUTRAL, pRF), 20).Addr())
		{
		ResString resText (ResID (IDS_UIFORMAT, pRF), 20);

			Format (sUIdent, (char*)resText.Addr(), pOG->lONr);
		}

#if _TRiAS_VER < 0x0300
		WriteFeatureText (pOG->lONr, DEX_GetUniqueIdentMCode(), TT_Objekt, sUIdent);
#else
	HPROJECT hPr = DEX_GetObjectProject (pOG->lONr);

		WriteFeatureText (pOG->lONr, DEX_GetUniqueIdentMCodeEx (hPr), TT_Objekt, sUIdent);
#endif // _TRiAS_VER < 0x0300
	}

	// Merkmal an dieses Objekt schreiben, der MerkmalsCode befindet sich im DBHeader
	if (0 == ulMCode || (ulong)-1 == ulMCode)
	{
		ulMCode = GetHeaderMCode (true, uiResKey, uiResKT, uiResLT,
								  DEX_GetObjIdent(pOG->lONr));
		if (0 == ulMCode || (ulong)-1 == ulMCode)
			return false;
	}

	return WriteFeatureText (pOG->lONr, ulMCode, TT_Objekt, sAnalyseText);

} // GeometryErrorToFeature


// --------------------------------------------------------------------------------------------
// Testen, ob das Merkmal "Geometriefehler" �berhaupt existiert und wenn ja, dann am
// lONr-Objekt l�schen
void GeoReinExtension :: FehlerMerkmalLoeschen (long lONr)
{
// MerkmalsCode f�r Merkmal "Geometriefehler" aus DBHeader holen
ulong ulMCode = GetHeaderMCode (false, IDS_GEOERROR, IDS_GEOERRORKT, IDS_GEOERRORLT,
								DEX_GetObjIdent(lONr));

	if (0 == ulMCode || (ulong)-1 == ulMCode)
		return;	// Merkmal "Geometriefehler" existiert �berhaupt nicht

	WriteFeatureText (lONr, ulMCode, TT_Objekt, "");
} // FehlerMerkmalLoeschen


// --------------------------------------------------------------------------------------------
// Polygonapproximation (derzeit nur !!!) f�r Linienobjekte;
// R�ckgabe von true, wenn Approximation durchgef�hrt wurde, sonst false
bool GeoReinExtension :: Approximation32 (OBJGEOMETRIE* pOG)
{
	if (m_dReduz <= dRedEps) return false;	// keine Reduzierung der St�tzpunkte

	_ASSERTE (pOG != NULL);

	if (! pOG) return false;

	if (pOG->iObjTyp != OT_KANTE)	// keine Linie
		return false;

// ACHTUNG: Nachfolgend wird davon ausgegangen, da� in der �bergebenen Geometrie das Flag
// OGConverted gesetzt ist, d.h. da� die Koordinaten im double-Format vorliegen. Der Fall,
// da� OGConverted nicht gesetzt ist, bleibt vorerst noch unbearbeitet.
int iFlags = pOG->iFlags;

	if ((iFlags & OGConverted) == 0)
	{
		if (! m_bAnzeige)
		{
			MessageBox (hWnd(), "Es wird keine Polygonapproximation durchgef�hrt,\nda das Flag OGConverted nicht gesetzt ist!", "Achtung:", MB_ICONEXCLAMATION | MB_OK);
			m_bAnzeige = true;
		}
		return false;
	}

long lAnzv = pOG->lCnt;	// St�tzpunktanzahl vor Approximation

	if (lAnzv <= k0)		// Mindestanzahl an St�tzpunkten f�r Approximation
		return false;

long lAnzn = lAnzv;			// St�tzpunktanzahl nach Approximation

	if (PolygonApproximation ((double*)pOG->pdblX, (double*)pOG->pdblY, lAnzn, m_dReduz, k0) == false)
	{
		pOG->iFlags |= OGIgnoreGeometry;	// Geometrie ignorieren (nicht ver�ndern)
		piInterlockedDecrement (&m_lSem);
		return false;	// keine Abspeicherung der Geometrie (wurde bei PolygonApproximation zerst�rt)
	}
			
	// Objekt pOG aktualisieren, wenn St�tzpunktanzahl reduziert wurde
	if (lAnzv > lAnzn)	
		pOG->lCnt = lAnzn;	// St�tzpunktanzahl nach Approximation

	return true;
} // Approximation32


// --------------------------------------------------------------------------------------------
// Test, ob in der GeoFehlerListe SelbstInzid-Fehler mit abgetrennten Schleifen eingetragen
// wurden;
// die Variable "sAnalyseText" wird nicht als Parameter an diese Funktion �bergeben, da sie 
// die Beschreibung von m�glicherweise 2 abgetrennten Schleifen enthalten kann; an die
// abgetrennten Schleifen soll aber nur EINE Beschreibung angehangen werden
bool GeoReinExtension :: IsLineWithLoop (GeoFehlerListe& GFL, long lIdent, int iFlags,
										 string sUIdent)
{
ResString resText (ResID (IDS_SINZIDENZBER1, pRF), 70);
string sAnalyseText;	// Beschreibung der bereinigten Selbstinzidenz
double XOut, YOut;		// Real-Koordinaten des Inzidenz-Punktes

CRing ri (GFL);	// Navigator f�r sequentiellen Container auf aktuelle GeoFehlerListe

	for (ri.First(); ri.Valid(); ri.Next())
	{
	GeoFehlerLock ml (ri);

		if (!ml) continue;

		if (GFT_Selbstinzidenz == ml->GetType())
		{
		SelbstInzid* pSI = (SelbstInzid*)(GeoFehler*)ml;

			if (pSI->GetEndLoop())	// Selbstinzidenz mit abgetrennter Schleife
			{
			// zuerst EKante --> OBJGEOMETRIE wegen GeometryErrorToFeature()
			EKante* pLoopKt = pSI->GetEndLoop();
			OBJGEOMETRIE LoopOG;

				INITSTRUCT (LoopOG, OBJGEOMETRIE);
				LoopOG.lIdent = lIdent;
				LoopOG.iObjTyp = OT_KANTE;
				LoopOG.iFlags = iFlags & ~OGConverted;	// KoOrd- und nicht double-Koordinsten
				LoopOG.iFlags |= OGNewObject;			// neues Objekt generieren und
				LoopOG.iFlags &= ~OGModObject;			//  nicht Geometrie des Objektes ersetzen
				LoopOG.lCnt = pLoopKt->ASP();
				LoopOG.pdblX = new KoOrd [LoopOG.lCnt];
				LoopOG.pdblY = new KoOrd [LoopOG.lCnt];

			    if (!LoopOG.pdblX || !LoopOG.pdblY)
				{
					DEX_Error (RC_georein, EC_NOMEMORY);
    				return false;
				}

				pLoopKt->GetKante ((KoOrd*)LoopOG.pdblX, (KoOrd*)LoopOG.pdblY, LoopOG.lCnt);

				DBKoordInReal (pSI->RP(1), XOut, YOut, m_pCT);	// Datenbank- in Real-Koordinaten
				Format (sAnalyseText, "%s (%ld,%ld)\r\n", (char*)resText.Addr(), DtoL(XOut),
					    DtoL(YOut));

				// hier wird die Schleife als neues Objekt nach TRiAS gespeichert und mit den
				// Merkmalen der urspr�nglichen Kante versehen
				GeometryErrorToFeature (&LoopOG, IDS_GEOERROR, IDS_GEOERRORKT, IDS_GEOERRORLT,
								        m_ulMCodeGeoErr, sAnalyseText, sUIdent);
				DELETE_OBJ(LoopOG.pdblX);
				DELETE_OBJ(LoopOG.pdblY);
			}
		}
	}

	return true;

} // IsLineWithLoop


// --------------------------------------------------------------------------------------------
//	DebugSection-Eintrag aus win.ini lesen
bool GeoReinExtension :: _GetDebugOutputFlag (void)
{
ResString Section (ResID (IDS_DEBUGSECTION, pRF), 30);
ResString Entry (ResID (IDS_DEBUGENTRY, pRF), 30);	
char pcBuffer [5] = "";
	
	return GetProfileString (Section.Addr(), Entry.Addr(), "0", pcBuffer, sizeof (pcBuffer)) 
		   && (atoi (pcBuffer) > 0) ? true : false;
} // _GetDebugOutputFlag


// --------------------------------------------------------------------------------------------
// Reaktion auf Fehlercode iWC
int ErrHandler (int iWC, int iRoutine, ...)
{
va_list vaArgs;		// Liste der unbenannten Argumente

	va_start (vaArgs, iRoutine);

void* pvData = va_arg (vaArgs, void*);	// Makro, um die unbenannten Argumente herauszuholen

	va_end (vaArgs);

ResString resTitel (ResID (IDS_LONGCLASSNAME, pRF), 50);
				
	if (IDYES == MessageBox (__hWndM, ((ErrBox*)pvData)->sErrText.c_str(), resTitel.Addr(),
							 MB_ICONERROR | MB_YESNO))
	{
		// nachfolgende Zeile ist erforderlich, da die return-Werte ("1" bzw. "0")
		// komischerweise bei DEX_SetError() nicht ankommen
		((ErrBox*)pvData)->bAnsw = true;	// f�r "YES"
		return 1;	// f�r "YES"
	}

	((ErrBox*)pvData)->bAnsw = false;		// f�r "NO"
	return 0;		// f�r "NO"

} // ErrHandler
