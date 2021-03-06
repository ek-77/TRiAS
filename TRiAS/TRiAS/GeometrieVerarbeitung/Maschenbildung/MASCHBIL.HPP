/*
Datei: MASCHBIL.HPP

Maschenbildung auf der Grundlage eines Linienverfolgungsverfahrens:
Es werden solange Linien (Kante) in math. positiver/negativer Richtung vereinigt,
bis ein Masche (Fl�che) ensteht, die an TRiAS ausgegeben wird und deren Objekt-
nummer im Ausgabestrom gespeichert wird.

Erarbeitet: J. Benkenstein							Stand vom: 15.10.1996
*/

#ifndef _MASCHBIL_HPP
#define _MASCHBIL_HPP

typedef map <CString, CString> CMerkmalsListe;	// Kurztext, Merkmalsinhalt (#WM990616)

class CParameters;
class CObjektKante;	
class CProgressIndicator;
class CInitAllKanten;

///////////////////////////////////////////////////////////////////////////////
// SmartIF's

///////////////////////////////////////////////////////////////////////////////
// CMaschenBildung 
class CMaschenBildung 
{
private:
//	Attribute
	CString m_strUnIdent;		// Merkmalsinhalt der UniqueIdents der vereinigten Linien
	double m_dDrehWi;			// Winkel des 1. Segments der akt. Kante zur x-Achse (im Bogenma�)
	BOOL m_bDirection;			// Umlaufsinn: 1/math. positiv, 0/math. negativ
	CObjektKante &m_PredikatKante;		// im Predikat zu �bergebende Kante

	CObjektKantenListe &m_InputListe;	// siehe Konstruktor
	WEnumObjectsByNumber m_WEnumObjs;
	CParameters &m_Params;				//	Eingabeparemeter
	CMerkmalsListe m_MerkmalsListe;		//  Baum aller aktuellen Objektmerkmale

public:
//	Konstruktor/Destruktor
	CMaschenBildung (CObjektKantenListe &InputListe,	//	STL-Liste der zu vereinigenden Kanten
					 WEnumObjectsByNumber &WEnumObjs,	//	Objektnummern-Ausgabe-Strom
					 CParameters &Params,				//	weitere Parameter					 
					 CObjektKante &InputKante);			//	Referenzkante
					 
protected:
//	allg. Parameter r�cksetzen
	void Reset (void);

//	Kanten vereinigen
	BOOL UnionKanten (CObjektKante &InputFirst, CObjektKante &InputNext,
					  BOOL bCheckDirection = TRUE/*, BOOL fUseGeoRein = FALSE*/);

//	Kanten vereinigen
	BOOL UnionLines (CObjektKante &InputFirst, CObjektKante &InputNext, short sAppendType);								   

//	Kann Kante zur Fl�che vereinigt werden ?
	BOOL CanCreateFlaeche (CObjektKante &Kante);

//	aus �bergebener Kante eine Fl�che erzeugen: Anfangspunkt ans Ende hinzuf�gen
	void CreateFlaeche (CObjektKante &Kante);

//	hat diese Fl�che den richtigen Umlaufsinn ?
	BOOL DirectionOK (CObjektKante &Kante);

//	k�nnen Linien vereinigt werden ?
	short CanLinesUnion (CObjektKante &Kante);

//	Fl�che und uinque Ident an TRiAS ausgeben,
//	zur�ck wird die von TRiAS erzeugte Objekt-Nummer gegeben
	// long OutputArea (CObjektKante &Kante);

//	Linie und uinque Ident an TRiAS ausgeben
//	zur�ck wird die von TRiAS erzeugte Objekt-Nummer gegeben
	// long OutputLine (CObjektKante &Kante);

//	Objektmerkmale der Kante in m_MerkmalsListe sammeln
	void GetObjFeatures (CObjektKante &Kante, BOOL bOutputMerkmal);

//	liegen �bergebene Punkte im Bereich der Fuzzy-Toleranze: Aspectratio ber�cksichtigen
	BOOL ImFangBereich (long lX1, long lY1, long lX2, long lY2);

//	die beiden Kanten haben im "Inneren" (d.h. ohne Beachtung der Endpunkte) eine Gemeinsamkeit
	BOOL Community (long* pXOld, long* pYOld, long lCntOld, long* pXNew, long* pYNew,
					long lCntNew);

//	Init. der akt. Kante und aller weiteren f�r die Suche wichtigen Parameter
	void InitSearch (CObjektKante &Kante, BOOL bDirection, BOOL bIgnoreChanged,
					 BOOL bOutputMerkmal, BOOL bOutputParent = TRUE);

//	predikat: 
//	0. Objekt nicht mit sich selbst testen
//	1. Nur die Kanten, die innerhalb der Toleranz liegen, filtern.
//	2. Den Winkel berechnen und ggf. in beiden Kanten speichern
	BOOL IsKanteOK (CObjektKante &OK);

//	Richtung schon durchlaufen ?
	BOOL KantenDirectionOK (CObjektKante &Kante);

//	berechne "Anstieg" zwischen den beiden Strecken (lX1,lY1)-(lX2,lY2) und (lX2,lY2)-(lX3,lY3)
	BOOL Anstieg (long lX1, long lY1, long lX2, long lY2, long lX3, long lY3,
				  double& dAnstieg);

//	interne Linien-Vereinigung: Anzahl vereinigte
	int CreateUnionLines (CInitAllKanten *pAllKanten, CObjektKante &ActKante,
						  BOOL bOutputMerkmal, BOOL bOutputParent,
						  CObjektKante **ppLastKante = NULL);

//	alle Merkmale eines Objekts ausgeben
	void OutputMerkmale (long lObjNr);

public:
//	Maschen bilden
//	BOOL CreateMaschen (HPROJECT hPr, CProgressIndicator *pIndicator = NULL, BOOL bOutputMerkmal = TRUE);
	HRESULT CreateMaschen (HPROJECT hPr, CProgressIndicator *pIndicator = NULL,
						   BOOL bOutputMerkmal = TRUE);
	
//	Linienvereinigung
//	BOOL CreateLines (HPROJECT hPr, CProgressIndicator *pIndicator, BOOL bOutputMerkmal = TRUE);
	HRESULT CreateLines (HPROJECT hPr, CProgressIndicator *pIndicator, BOOL bOutputMerkmal = TRUE);
};

#endif		// _MASCHBIL_HPP
