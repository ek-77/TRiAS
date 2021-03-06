/*
        Die Klasse beinhaltet Infos f�r TRiAS-Enum-Funtkionen.

        Erarbeitet: J. Benkenstein                      Stand vom: 30.11.95
*/

#ifndef _OBJ_INFO_HPP
#define _OBJ_INFO_HPP

#ifdef WIN32
class CListCtrl;
#endif

// Konstanten
const short KurzTextLen = 80;            		// L�nge des KurzTextes f�r Objektklasse/Merkmal
const short LangTextLen = 256;                  // L�nge des Langtextes  -- " --
const short maxLangTextShowLen = 40;			// max. Darstellungsl�nge eines LangTextes
const ulong ulUnIdMKode = 51200000;				// MerkmalsKode f�r unique Ident			

//	CObjektInfo -------------------------------------------
class CObjektInfo
{
public:
	ulong m_ulKode;							// Identifikator/Merkmalskode
	CString m_strDescr;

	CObjektInfo (void) { m_ulKode = 0; }
	~CObjektInfo (void) {}

	BOOL InfoComplete (void) { return (m_ulKode > 0) && (!m_strDescr.IsEmpty ()); } 
};

//	Parameter-Halter f�r DEX_Enum-Funktionen
class ObjMerkmalInfo                        
{
public:
	long m_lType;

// KK000411
	ulong m_lIdent;

	CComboBox *m_pCComboBox;
    CListBox *m_pCListBox;
#ifdef WIN32
	CListCtrl *m_pCListCtrl;
	int m_iIndex, 					// akt. Index in Listcontrol
	m_iMaxFirstLen, m_iMaxSecLen;	// max. Zeichenanzahl f�r 1. und 2. Spalte
#endif
	ObjMerkmalInfo (void) { Reset (); }

// KK000411
	void Reset (void) 	  { m_lType = 'i'; m_lIdent = 0;  m_pCComboBox = NULL; m_pCListBox = NULL; 
#ifdef WIN32	
						    m_pCListCtrl = NULL; m_iIndex = m_iMaxFirstLen = m_iMaxSecLen = 0;
#endif
						  }
};

//	KurzText zu einem Id oder Merkmal lesen
char* __export GetKurzText (ulong ulKode, short sType,
						    char *pBuffer, short sBufferSize);

BOOL __export FAR PASCAL FillObjMerkmalList (ulong Ident, BOOL, void* pData);
#ifdef WIN32
BOOL __export FAR PASCAL FillObjMerkmalListView (ulong Ident, BOOL, void* pData);
#endif

#endif _OBJ_INFO_HPP

