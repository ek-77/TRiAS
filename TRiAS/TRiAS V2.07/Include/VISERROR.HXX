// Klassendeklaration der typspezifischen TreeKlasse --------------------------
// Generiert aus TTREE.CTT

#if !defined(_VISERROR_HXX)
#define _VISERROR_HXX

// Schl�sselKlasse ------------------------------------------------------------
class CVisError {
public:
	long m_lIdent;	// Identifikator
	short m_iVTyp;	// Visualisierungstyp
	char *m_pView;	// SichtName
	
	void SetViewName (char *pView);

// Konstruktoren
		CVisError (long lIdent, short iVTyp, char *pView = NULL)
			: m_lIdent (lIdent), m_iVTyp (iVTyp) 
		{
			SetViewName (pView);
		}
		~CVisError (void)
		{
			if (m_pView) delete m_pView;
		}
};

// Klasse, die im Baum h�ngen soll --------------------------------------------
class CVisErrorItem {
public:
	CVisError m_Key;				// Suchschl�ssel

	inline CVisErrorItem (long lIdent, short iVTyp, char *pView = NULL);
	inline ~CVisErrorItem (void);

// Funktionen zur SuchSchl�sselVerwaltung
inline	CVisError & FGetVisError (void);			// liefert SuchSchl�ssel

friend inline int FCmpVisError (CVisError &, CVisError &);	// vergleicht 2 Schl�ssel
};


// Eigentliche typspezifische TreeKlasse --------------------------------------

// Funktionstypen, die Schl�sselverwaltung realisieren ------------------------
typedef void * (* TTREEGETKEYFCN) (void *);
typedef int (* TTREECMPKEYFCN)(void *, void *);
  
typedef bool (* VisErrorItemEnumFunc)(CVisErrorItem &, void *);

  
class CIgnoreVisErrorTree : public CTree {
protected:
	void UserDelete (void *pObj);

public:
// Konstruktor/Destruktor
		CIgnoreVisErrorTree (void);
		~CIgnoreVisErrorTree (void);

// Elementarfunktionen
	Bool FAddItem (long lIdent, short iVTyp, char *pView = NULL);	// Element hinzuf�gen
	Bool FDeleteItem (CVisError &);			// Element l�schen
// Element liefern
	CVisErrorItem *FFindItem (long lIdent, short iVTyp, char *pView = NULL);

	Bool FReInsert (CVisError &oldKey, CVisError &newKey);

// EnumerationsFunktionen
	Bool FEnumAllItems (VisErrorItemEnumFunc pFcn, void *pEData = NULL);
	Bool FEnumItems (CVisError &rKey, VisErrorItemEnumFunc pFcn, void *pEData = NULL);

// SuchSchl�sselVerwaltung
friend CVisError *FTTreeGetVisError (CVisErrorItem *pObj);
friend int FTTreeCmpVisError (CVisError *pObj1, CVisError *pObj2);
};

// KlassenDeklarationen/Definitionen f�r TypLock und TypCreator
DeclareLock (CIgnoreVisErrorTree, CVisErrorItem);

#include <viserror.inl>		// zugeh�rige Inline-Funktionen 

#endif // _VISERROR_HXX
