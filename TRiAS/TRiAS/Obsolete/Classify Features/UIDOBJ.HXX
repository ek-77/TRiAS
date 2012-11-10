// Klassendeklaration der typspezifischen TreeKlasse --------------------------
// Generiert aus CTTREE.CTT
// File UIDOBJ.HXX

#if !defined(_UIDOBJ_HXX)
#define _UIDOBJ_HXX

// Schl�sseltyp ---------------------------------------------------------------
typedef char * LPUIDENT;	// Unique Ident eines Objektes

// Klasse, die im Baum h�ngen soll --------------------------------------------
class CObjUIdent {
private:
	LPUIDENT m_Key;			// Suchschl�ssel (UIdent)
	ULONG m_lONr;			// ObjektNummer
	short m_iOType;			// ObjektTyp
	LONG m_lCnt;			// Anzahl der Vorkommen

public:
		CObjUIdent (LPUIDENT pUIDent, ULONG lONr, short iOType);
		~CObjUIdent (void);

inline short &OTyp (void) const { return (short &)m_iOType; }
inline ULONG &ObjNr (void) const { return (ULONG &)m_lONr; }
inline char *Text (void) const { return (char *)m_Key; }
inline void Increment (void) { m_lCnt++; }
inline LONG Count (void) { return m_lCnt; }

// Funktionen zur SuchSchl�sselVerwaltung
	LPUIDENT & FGetLPUIDENT (void);		// liefert SuchSchl�ssel
friend int FCmpLPUIDENT (LPUIDENT &, LPUIDENT &);	// vergleicht 2 Schl�ssel
};


// Eigentliche typspezifische TreeKlasse --------------------------------------

// Funktionstypen, die Schl�sselverwaltung realisieren ------------------------
typedef void * (* CTTREEGETKEYFCN) (void *);
typedef int (* CTTREECMPKEYFCN)(void *, void *);
  
typedef bool (* CObjUIdentEnumFunc)(CObjUIdent &, void *);

  
class CUIdentObjects : public CTree {
private:
	CTable *m_pActItem;		// f�r FindFirst/FindNext
	DWORD m_dwOpt;			// Zeit f�r letzte Optimierung
	DWORD m_dwInsert;		// Zeit f�r letztes Insert
	unsigned int m_fFilled : 1;	// Baum wurde gef�llt
	
protected:
	void UserDelete (void *pObj);

public:
// Konstruktor/Destruktor
		CUIdentObjects (void);
		~CUIdentObjects (void);

// Elementarfunktionen
	bool FAddItem (LPUIDENT pUIDent, ULONG lONr, short iOType);	// Element hinzuf�gen
	bool FDeleteItem (const LPUIDENT &);		// Element l�schen
	CObjUIdent *FFindItem (const LPUIDENT &);	// Element liefern
	
	CObjUIdent *FFindFirstItem (const LPUIDENT &);
	CObjUIdent *FFindNextItem (const LPUIDENT &);

	LONG GetCount (const LPUIDENT &);

	bool FillTree (ULONG lMCode);			// Baum f�llen
inline 	bool isFilled (void) const { return m_fFilled ? true : false; }

        Bool FEnumItems (const LPUIDENT &rKey, CObjUIdentEnumFunc pFcn, void *pEData = NULL);

// SuchSchl�sselVerwaltung
friend LPUIDENT *FCTTreeGetLPUIDENT (CObjUIdent *pObj);
friend int FCTTreeCmpLPUIDENT (LPUIDENT *pObj1, LPUIDENT *pObj2);
};

// KlassenDeklarationen/Definitionen f�r TypLock und TypCreator
DeclareLock (CUIdentObjects, CObjUIdent);

#endif // _UIDOBJ_HXX
