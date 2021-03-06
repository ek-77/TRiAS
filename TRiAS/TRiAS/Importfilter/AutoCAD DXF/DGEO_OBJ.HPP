/*
DGEO_OBJ.HPP -

beinhaltet allgemeine Klasse f�r den DXF-Import.

erarbeitet : J. Benkenstein				 Stand vom 21. August 1995
*/

#ifndef _DGEO_OBJ_HPP
#define _DGEO_OBJ_HPP

enum DGeoTyp { DGT_Unknown, DGT_Linie, DGT_Flaeche, DGT_Text, DGT_Symbol, DGT_Punkt };

class Punkt;
class PunktListe;
class TextMerkmalsListe;
class CDGeoObjListe;

//	DGeoObj -------------------------------------------------------------------
class DGeoObj
{
// 	Attribute
protected:
	short _DGT;						// Typ
	ulong _ID;						// Identifikator
	double _BogenParam;				// BogenParameter bei Vertex-Elementen	
	double m_dWinkel;				// Symbol-oder Textdrehwinkel		
	TextMerkmalsListe *_pTML;		// Liste beinhaltet alle Textmerkmale
	PunktListe *_pPL;				// Liste aller Punkte
	long m_lExpectedVertices;
	
public:
// 	Konstruktor/Destruktor
	DGeoObj (void); 
	virtual ~DGeoObj (void);					// Listen l�schen

// 	sonstige Member
//	Da alle g�ltigen Punkte die Memberfunktionen "AddPunkt" durchlaufen,
//	bietet sich hier eine gute M�glichkeit die min. und max. Koordinaten
//	zu bestimmen
//	neuen Punkt �ber seine Koordinaten in PunktListe aufnehmen,
//	Funktion bricht Programm ab, wenn kein dyn. Speicher mehr vorh.
	Bool AddPunkt (double X, double Y);
		
//	neuen Punkt �ber seinen Zeiger in PunktListe aufnehmen,
//	Funktion bricht Programm ab, wenn kein dyn. Speicher mehr vorh.
	Bool AddPunkt (Punkt *pPt);
		
//	1. Punkt ans akt. Ende kopieren
	Bool AddFirstPunkt (double dAusBuchtung = 0.0);

//	erzeuge Bogen zum letzten Punkt
	Bool AddBogen (double X, double Y, double Ausbuchtung = 0.0);
		
//	Kreis/Kreisbogen �ber seine Parameter durch einen Polygonzug
//	approximieren (4 Grad) und in PunktListe speichern,
//	Funktion bricht Programm ab, wenn kein dyn. Speicher mehr vorh.
	Bool MakePolygon (double Radius, double Xm, double Ym,
					  double StartWi = 0, double StopWi = 360.0);
		
//	GeoTyp abfragen
	short isA (void) { return _DGT; } 

//	Merkmal der MerkmalsListe hinzuf�gen,
	Bool AddMerkmal (char *pMerkmalsText, char *pMerkmalsValue);

//	Winkel eines Symbols/Textes speichern
	void SetWinkel (double dWinkel) { m_dWinkel = dWinkel; }

//	Winkel lesen
	double GetWinkel () { return m_dWinkel; }

//	Merkmalsliste lesen
	TextMerkmalsListe *GetMerkmalsListe () { return  _pTML; }

//	lese Ident
	long GetIdent () { return _ID; }

//	anormale Init.
	Bool Init (DGeoTyp DGT, long lIdent, TextMerkmalsListe *pListe);

//	virtuelle Funktionen
//	Typ und LayerName �bergeben
	virtual Bool Init (DGeoTyp DGT, char *pLayerName, long lExpectedVertices); 

//	Ausgabe von Geometrie und Textmerkmalen an TRiAS
	virtual long Output (char *pVal = NULL);		

//	Objekt transformiert ausgeben
	virtual long OutputExt (long lIdent,						//	Identifikator
							TextMerkmalsListe *pListe,			//	Merkmalsliste
							double dXBasis, double dYBasis,		//	Blockbasispunkt
							double dXInsert, double dYInsert,	//	Einf�gepunkt
							double dXMasstab, double dYMasstab,	//	Ma�stab
							double dDrehWinkel,					//	Drehwinkel
							double dXOffset, double dYOffset,	//	zus�tz. Verschiebung
							CDGeoObjListe *pGeoListe = NULL);	//	Objekt in Liste ausgeben

//	Operatoren
	Bool operator = (const DGeoObj &);

protected:
//	VertexBogen erzeugen
	Bool MakeBogenPolygon (double Radius, double Xm, double Ym,
					  	   double StartWi, double StopWi, Bool Richtung); 
};

//	CTextObject ---------------------------------------------------------------
class CTextObject : public DGeoObj
{
protected:
//	Attribute
	char *m_pText;				//	Textwert
	char *m_pHoehe;				//	H�he

public:
//	Konstruktor/Destruktor
	CTextObject ();
	virtual ~CTextObject (void);

//	einfache Schreibfunktionen
	Bool SetText (char *pText);
	Bool SetHoehe (char *pText);

//	Init.
	Bool Init (DGeoTyp DGT, char *pLayerName, long lExpectedVertices);

//	Text mit seinen Attributen an TRiAS ausgeben
	virtual long Output (char *pVal = NULL);

//	Operatoren
	Bool operator = (const CTextObject &);
};

//	Symbol/Insert-Objekt ------------------------------------------------------
class CSymbolObject : public DGeoObj
{
private:
//	Attribute
	char	*m_pBlockName;		//	Name des Blocks
	double	m_dXInsert,			//	Einf�gepunkt
			m_dYInsert,
			m_dXMasstab,		//	Ma�stabsfaktor
			m_dYMasstab;
	int		m_iZeilen,			//	Z�hlung der Zeilen
			m_iSpalten;			//	Spalten	
	double	m_dZeilenAbstand,
			m_dSpaltenAbstand;

//	Drehwinkel existiert als char * in der Basisklasse

public:
//	Konstruktor/Destruktor
	CSymbolObject ();
	virtual ~CSymbolObject ();

//	Lese/Schreibfunktionen
	double & XInsert () { return m_dXInsert; }
	double & YInsert () { return m_dYInsert; }
	double & XMasstab (){ return m_dXMasstab; }
	double & YMasstab () { return m_dYMasstab; }	
	int	   & Zeilen ()	{ return m_iZeilen; }
	int	   & Spalten () { return m_iSpalten; }	
	double & ZeilenAbstand () { return m_dZeilenAbstand; }
	double & SpaltenAbstand (){ return m_dSpaltenAbstand; } 

//	Blocknamen speichern
	Bool SetBlockName (char *pBlockname);

//	Blocknamen lesen
	const char *GetBlockName () { return m_pBlockName; }

//	virtuelle Funktionen
//	Typ und LayerName �bergeben
	virtual Bool Init (DGeoTyp DGT, char *pLayerName, long lExpectedVertices); 

//	Symbol/Insert mit seinen Attributen an TRiAS ausgeben
	virtual long Output (char *pVal = NULL);

//	Operatoren
	Bool operator = (const CSymbolObject &);
};

//	Klasse dient als scoping class f�r den DGeoObjZeiger
class CDGeoObjPtr
{
private:
//	Attribute
	DGeoObj *m_pDGeoObj;

public:
//	Konstruktor/Detstruktor
	CDGeoObjPtr ();		
	~CDGeoObjPtr ();				//	l�scht das �bergebene Objekt

//	Speichert den Zeiger und setzt Referenz auf NULL
	Bool Init (DGeoObj*&);

//	Lesefunktionen
	DGeoObj *GetDGeoObj () { return m_pDGeoObj; }
};

//	Liste speichert CDGeoObjPtr
class CDGeoObjListe : public CListContainer
{
protected:
	void UserDelete (void *pObj);

public:
// 	Konstruktor/Destruktor
	CDGeoObjListe (void);
	~ CDGeoObjListe (void);

// 	weitere Member
	Bool AddObject (DGeoObj*& pObject);		//	setzt �bergebenen Zeiger NULL
	BOOL AddObject (const DGeoObj&);
};
DeclareLock (CDGeoObjListe, CDGeoObjPtr);

#endif //_DGEO_OBJ_HPP
