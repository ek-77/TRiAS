// Allgemeine Deklarationen f�r "Objektoperationen mit GeoObjekten"
// File: OPDEKLAR.HXX
// W. M�rtl

#ifndef _OPDEKLAR_HXX
#define _OPDEKLAR_HXX



// ********************************************************************************************
// Versionskontrolle
#define REGOPERATPROPACT_VERSION_1_0_0		100
#define REGOPERATPROPACT_VERSION_1_0_1		101
#define REGOPERATPROPACT_VERSION_1_0_2		102
#define REGOPERATPROPACT_ACTVERSION			REGOPERATPROPACT_VERSION_1_0_2
#define REGOPERATPROPACT_SIGNATURE			0x41504F52		// "ROPA"			

#define LINESPLITPROPACT_VERSION_1_0_0		100
#define LINESPLITPROPACT_VERSION_1_0_1		101
#define LINESPLITPROPACT_VERSION_1_0_2		102
#define LINESPLITPROPACT_VERSION_1_0_3		103
#define LINESPLITPROPACT_ACTVERSION			LINESPLITPROPACT_VERSION_1_0_3
#define LINESPLITPROPACT_SIGNATURE			0x4150534C		// "LSPA"

#define SETSOPERATPROPACT_VERSION_1_0_0		100
#define SETSOPERATPROPACT_VERSION_1_0_1		101
#define SETSOPERATPROPACT_VERSION_1_0_2		102
#define SETSOPERATPROPACT_ACTVERSION		SETSOPERATPROPACT_VERSION_1_0_2
#define SETSOPERATPROPACT_SIGNATURE			0x41504F53		// "SOPA"

#define AREABUILDPROPACT_VERSION_1_0_0		100
#define AREABUILDPROPACT_VERSION_1_0_1		101
#define AREABUILDPROPACT_VERSION_1_0_2		102
#define AREABUILDPROPACT_ACTVERSION			AREABUILDPROPACT_VERSION_1_0_2
#define AREABUILDPROPACT_SIGNATURE			0x41504241		// "ABPA"

#define OPTIONSPROPACT_VERSION_1_0_0		100
#define OPTIONSPROPACT_VERSION_1_0_1		101
#define OPTIONSPROPACT_ACTVERSION			OPTIONSPROPACT_VERSION_1_0_1
#define OPTIONSPROPACT_SIGNATURE			0x4150504F		// "OPPA"

#define MINOR_VERSION_MASK					0xff

// ********************************************************************************************
// Struktur f�r Daten�bergabe der Routine MerkmaleKopieren()
struct DatKop
{
	long lONr1, lONr2;	// Nummer des Quell- bzw. Zielobjektes
	string sUISubst;	// Text, durch den der bisherige UniqueIdent ersetzt wird
	bool bOverWrite;	// alten Merkmalstext �berschreiben (true) bzw. neuen Text anh�ngen (false)
	bool bGeoErr;		// Merkmalstext von "Geometriefehler" wird kopiert (true)
//	bool bClear;		// Merkmalstext von "Bereinigter Geometriefehler" wird kopiert (true)	#WM021210
//	bool bSect;			// Merkmalstext von "Verschnitt" wird kopiert (true)					#WM021210
	DWORD dwFeat;		// Angabe dazu, welche Merkmal kopiert werden sollen
};


// ********************************************************************************************
// m�gliche Objektoperationen
enum ObjOp
{
	EINZOBJ,		// Schnitt eines einzelnen Objektes
	IDGRUPP,		// Schnitt aller Objekte einer Identifikatorgruppe
	ALLOBJ,			// Schnitt aller Objekte einer Sicht
	VEREINIGUNG,	// Vereinigung mehrerer Fl�chen bzw. zweier Linien
	DURCHSCHNITT,	// Durchschnitt mehrerer Fl�chen
	SUBTRAKTION,    // Exklusiv-Oder zwischen 2 Fl�chen
	SPLITTING,		// Liniensplittung
	GEMKONTUR,		// gemeinsame Konturabschnitte zweier Fl�chen
	LEER			// noch keine Operation ausgew�hlt
};


// Optionen f�r Objektoperationen
#define FEAT	0x01	// Merkmale der Originalobjekte sollen �bernommen werden (true)
#define DELET	0x02	// Originalobjekte sollen gel�scht werden (true)
#define MARK	0x04	// Originalobjekte sollen markiert werden (true)
#define SHNEW	0x08	// neue Objekte sollen angezeigt werden (true)
#define SHORIG	0x10	// Originalobjekte sollen angezeigt werden (true)

	
// ******************************************************************************************
// Konstantendefinitionen
const short iZug = 10;			// Zugabe in Millimeter f�r Rechteck beim L�schen von Objekten

// Parameter f�r default-Toleranz bei Linienvereinigung
const double MinExt = 100;		// minimale Ausdehnung in x- bzw. y-Richtung
const double dLowFuzzy = 0.01;	// Fuzzy f�r obige Ausdehnung
const int FuzzyVal = 10000;		// Divisor zur Berechnung der Fuzzy-Toleranz
const double dFuzzyVal = 0.005;	// default-Fuzzy-Toleranz soll 0,5% von der maximalen
								// Containerseite sein

const string sUnionName = "Vereinigtes Objekt";		// default-Name f�r ErgebnisObjektklasse bei
													// ObjektVereinigung
const string sMeaningName = "Durchschnittsobjekt";	// default-Name f�r ErgebnisObjektklasse bei
													// ObjektDurchschnitt

#endif  // _OPDEKLAR_HXX
