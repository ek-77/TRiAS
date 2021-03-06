// Allgemeine Deklarationen und Konstantendefinitionen f�r "Geometrie-DLL"
// File: GeoKonst.hxx
// W. M�rtl

#ifndef _GEOKONST_HXX
#define _GEOKONST_HXX




// ********************************************************************************************
// m�gliche 1. Markierung bei markierbaren Punkten
enum Mar1
{
	NORMAL,		// normaler Punkt
	INNERHALB,	// Punkt innerhalb eines �berlappungsbereiches
	RANDP,		// Randpunkt eines �berlappungsbereiches
	RAND_INN,	// Randpunkt eines �berlappungsbereiches mit Zuf�hrung aus dem
				// Inneren der Bezugsfl�che
	RAND_UMG,	// Randpunkt eines �berlappungsbereiches mit Zuf�hrung aus der
				// Umgebung der Bezugsfl�che
	BERUEHR,	// Punkt mit Randpunkt- bzw. Innenber�hrung ohne Seitenwechsel
	BERUE_INN,	// Punkt mit Randpunkt- bzw. Innenber�hrung ohne Seitenwechsel, wobei die
				// beteiligten Strecken aus dem Inneren der Bezugsfl�che kommen
	BERUE_UMG,	// Punkt mit Randpunkt- bzw. Innenber�hrung ohne Seitenwechsel, wobei die
				// beteiligten Strecken aus der Umgebung der Bezugsfl�che kommen
	BERUE_ER,	// erster Punkt einer offenen Kante mit Randpunkt- bzw. Innenber�hrung ohne
				// Seitenwechsel, wobei die beteiligten Strecken aus dem Inneren der
				// Bezugsfl�che kommen und der Anfangspunkt der Kante im Inneren der
				// Bezugsfl�che liegt
	BERUE_LE,	// letzter Punkt einer offenen Kante mit Randpunkt- bzw. Innenber�hrung ohne
				// Seitenwechsel, wobei die beteiligten Strecken aus dem Inneren der
				// Bezugsfl�che kommen und der Endpunkt der Kante im Inneren der Bezugsfl�che
				// liegt
	SCHNITT,	// Schnittpunkt
	GEMEINSAM	// Punkt, an dem 2 Linien eine Gemeinsamkeit haben (Schnitt, Ber�hrung,
				// �berlappung) 
};

// m�gliche 2. Markierung bei markierbaren Punkten
enum Mar2
{
	UNVERBR,	// "unverbrauchte" Strecke
	VERBR		// "verbrauchte" Strecke
};

// m�gliche Ergebnisse bei Test auf �berschneidung der Strecken zweier Kanten
enum SchnittErg
{
	KEINE,		// keine �berschneidung
	ECHT,		// �berschneidung, so da� Schnittpunkt jeweils im "Inneren" der beiden
				// Strecken liegt (echter Schnitt)
	RAND,		// �berschneidung, so da� Schnittpunkt bei beiden Strecken ein Randpunkt
				// ist, Seitenwechsel ist noch nicht gekl�rt (Randpunktber�hrung)
	RAND_MIT,	// �berschneidung, so da� Schnittpunkt bei beiden Strecken ein Randpunkt
				// ist und ein sofortiger Seitenwechsel erfolgt (Randpunktber�hrung)
	RAND_OHNE,	// Ber�hrung in einem Punkt, der bei beiden Strecken ein Randpunkt ist, ein
				// Seitenwechsel erfolgt nicht (Randpunktber�hrung)
	INNEN,		// Ber�hrung in einem Punkt, der bei einer Strecke ein Randpunkt ist, bei der
				// anderen in deren "Inneren" liegt, Seitenwechsel ist noch nicht gekl�rt
				// (Innenber�hrung)
	INNEN_MIT,	// �berschneidung, so da� Schnittpunkt bei einer Strecke ein Randpunkt ist,
				// bei der anderen in deren "Inneren" liegt und ein sofortiger Seitenwechsel
				// erfolgt (Innenber�hrung)
	INNEN_OHNE,	// Ber�hrung in einem Punkt, der bei einer Strecke ein Randpunkt ist, bei der
				// anderen in deren "Inneren" liegt, ein Seitenwechsel erfolgt nicht
				// (Innenber�hrung)
	BERUE_OHNE,	// Randpunkt- oder Innenber�hrung ohne Seitenwechsel
	UEBERLAPP	// �berlappung beider Strecken
};


// Relation eines Objektes zu einem Bezugsobjekt (nach der OGC-Norm)
enum OGCPosit
{
	WITHIN,		// vollst�ndig innerhalb des Bezugsobjektes
	CONTAIN,	// �berdeckt das Bezugsobjekt vollst�ndig
	OVERLAP,	// teilweise innerhalb, teilweise au�erhalb des Bezugsobjektes (nur f�r die
				// Kombinationen Linie/Linie und Fl�che/Fl�che; der Durchschnitt beider Objekte
				// mu� die gleiche Dimension wie die Vergleichsobjekte haben)
	ENTER,		// teilweise innerhalb, teilweise au�erhalb des Bezugsobjektes (nur f�r die
				// Kombinationen Linie/Linie, Linie/Fl�che und Fl�che/Linie; der Durchschnitt
				// beider Objekte mu� eine geringere Dimension wie die gr��ere der beiden
				// Dimensionen der Vergleichsobjekte haben)
	TOUCH,		// ber�hrt das Bezugsobjekt von au�en
	EQUAL,		// vollst�ndig identisch mit dem Bezugsobjekt
	DISJOINT,	// keinerlei Gemeinsamkeiten mit dem Bezugsobjekt
	INTERSECT,	// mindestens ein Punkt mit dem Bezugsobjekt gemeinsam (NOT DISJOINT)
	UNCLEAR		// vorzeitiges Ende bei falschen Parametern, unzureichendem dynamischen
				// Speicher oder Abbruch durch den Anwender
};


// Schnittverhalten von geometrischen Objekten auf dem Bildschirm
enum SectScreen
{
	INSECT,		// es gibt Schnittpunkte, die alle im Bildschirmbereich liegen
	OUTSECT,	// es gibt Schnittpunkte, die aber alle au�erhalb des Bildschirms liegen
	INOUTSECT,	// es gibt Schnittpunkte, die teilweise im und teilweise au�erhalb des
				// Bildschirmbereiches liegen
	INFISECT,	// es gibt keine eindeutigen Schnittpunkte (die beiden Objekte liegen teilweise
				// oder ganz �bereinander)
	NOSECT,		// es gibt keine Schnittpunkte
	ERRSECT		// irgend eine unklare Situation

};


// ********************************************************************************************
// Stringkonstanten
const char RegistryExtPathRein[] = TEXT("Software\\" REG_COMPANY_KEY "\\" REG_PRODUCT_KEY "\\Extensions\\TRiAS.Bereinigung.1\\Config");

const char RegDoppelPunkt[] = TEXT("DoppelPunkt");
const char RegSpitzenWinkel[] = TEXT("SpitzenWinkel");
const char RegSchleife[] = TEXT("Schleife");


// ********************************************************************************************
// Definitionen
#define VIEWCHILDID		0xE900		// Child-ID vom ViewFenster

#if _TRiAS_VER >= 0x0300	// neuer Compiler
#define MAXVIEWNAMESIZE	_MAX_PATH	// maximale L�nge eines Sichtnamens
#else						// alter Compiler
#define MAXVIEWNAMESIZE	40			// maximale L�nge eines Sichtnamens
#endif // _TRiAS_VER >= 0x0300

const short iKurzTextLen = 64;		// max. L�nge des Kurztextes f�r Objektklasse/Merkmal
const short iLangTextLen = 1024;	// max. L�nge des Langtextes f�r Objektklasse/Merkmal
#define TEXTL	80					// L�nge des Konvertierungspuffers f�r Koordinaten, Objektname bzw. Caption
const short iCharSize = 50;			// L�nge einer Fenster�berschrift


// ********************************************************************************************
// Konstantendefinitionen
const double Pi = 3.141592653589793238462643383279502884197169399;

// dGlEps ist die zul�ssige Abweichung bei EpsGleich() bzw. EpsUngleich().
// Eigentlich m��te sqrt(2)/2 = 0.7071 (die halbe Diagonale eines Quadrates mit der
// Kantenl�nge 1) ausreichen.
// In mindestens einem Fall reicht dies aber nicht aus: So wurde eine Fl�che mit Inseln
// geschnitten. Zwischen dem Schnitt der Au�enkontur und den Innenkonturen wurden jeweils die
// double-Koordinaten auf KoOrd-Koordinaten gerundet, da die Ergebnisfl�che ein
// GeoFlaeche-Objekt ist. Dadurch ragte die Ergebnisfl�che mehr als sqrt(2)/2 �ber die
// schneidende Fl�che hinaus. Ein erneuter Schnitt (nun aber mit dem Schnittergebnis des ersten
// Schnittes) h�tte noch einmal echte neue Teilfl�chen ergeben.
// Die bisher bekannte gr��te Abweichung betr�gt 0.74275 (08.10.98)
// Die bisher bekannte gr��te Abweichung betr�gt 1.51555 (13.10.98)
const double dGlEps = 1.52;		// zul�ssige Abweichung bei Test auf Gleichheit (in DB-Koordinaten)
const double dREps = 1E-6;		// zul�ssiges Rauschen bei double-Koordinaten
const short iKoEps = 6;			// zul�ssige Abweichung bei eps-Kollinearit�t dreier Punkte
const short iCoEps = 6;			// zul�ssige Abweichung bei Container-Durchschnitt
const short iBuEps = 6;			// zul�ssige Abweichung bei Bildung der Pufferelemente

const short iRWZug = 5;			// Zugabe (in Pixel) bei der Positionierung von Recherchefenstern
const short iZeiZug = 5;		// Zugabe beim Zeichnen eines Rechteckbereiches in Millimeter
const int iSicher = 2;			// Sicherheitszugabe f�r zu bildendes Rechteck bei Neuzeichnen

const string sMTrenn = "/";		// Trennzeichen f�r Merkmale aus mehreren Objekten 

const double dDopEps = 0.;		// zul�ssige Abweichung bei Bereinigung von DoppelPunkt'en (in Meter)
const double dSpiEps = 0.5;		// Grenzwinkel f�r Spitze (in Gradma�)
const int iLoopLen = 5;			// min. Anzahl von St�tzpunkten bei Schleifen an Kantenenden


#endif  // _GEOKONST_HXX
