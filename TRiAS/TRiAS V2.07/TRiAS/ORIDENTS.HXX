// Klassendeklaration der typspezifischen TreeKlasse --------------------------
// Generiert aus CTTREE.CTT
// File: ORIDENTS.HXX

#if !defined(_ORIDENTS_HXX)
#define _ORIDENTS_HXX

// Klasse, die im Baum hängen soll --------------------------------------------
typedef unsigned long ULONG;
 
class CORIdent {
private:
	ULONG m_Key;				// Suchschlüssel
	short m_iOTypes;				// ObjektTypen

public:
		CORIdent (ULONG ulKey, short iOType = 0);
		~CORIdent (void) {}

// Funktionen zur SuchSchlüsselVerwaltung
	ULONG & FGetULONG (void);		// liefert SuchSchlüssel
	short FGetOTypes (void);
	short FMergeOTypes (short iOType);	// fgt OTyp hinzu
	
friend int FCmpULONG (ULONG &, ULONG &);	// vergleicht 2 Schlüssel
};


// Eigentliche typspezifische TreeKlasse --------------------------------------

// Funktionstypen, die Schlüsselverwaltung realisieren ------------------------
typedef void * (* CTTREEGETKEYFCN) (void *);
typedef int (* CTTREECMPKEYFCN)(void *, void *);
  
  
class CORIdents : public CTree {
protected:
	void UserDelete (void *pObj);

public:
// Konstruktor/Destruktor
		CORIdents (void);
		~CORIdents (void);

// Elementarfunktionen
	Bool FAddItem (ULONG &, short iOType = 0);	// Element hinzufügen
	CORIdent *FFindItem (ULONG &);			// Element liefern

// SuchSchlüsselVerwaltung
friend ULONG *FCTTreeGetULONG (CORIdent *pObj);
friend int FCTTreeCmpULONG (ULONG *pObj1, ULONG *pObj2);
};

// KlassenDeklarationen/Definitionen für TypLock und TypCreator
DeclareLock (CORIdents, CORIdent);

#endif // _ORIDENTS_HXX

