// Inlinefunktionen f�r typspezifischenBaum -----------------------------------
// Generiert aus CTTREE.CTT
// File: VIEWTREE.INL

#if !defined(_VIEWTREE_INL)
#define _VIEWTREE_INL

// Member f�r ItemKlasse, die im Baum h�ngt ----------------------------------
// Normaler Konstruktor (evtl. notwendig) ------------------------------------
inline CViewEntry :: CViewEntry (LPCSTR pcView)
		   : m_Key(pcView), 
		     m_fActView(false), m_fDefaultView(false), m_fInMenu(false)
{
}

// Destruktor -----------------------------------------------------------------
inline CViewEntry :: ~CViewEntry (void)
{
}

// ZugriffsFunktion auf den Suchschl�ssel innerhalb der ItemKlasse ------------
inline string &CViewEntry :: FGetstring (void)
{
	return m_Key;
}

// VergleichsFunktion f�r zwei Suchschl�ssel ----------------------------------
inline int FCmpstring (string &rObj1, string &rObj2)
{
	return strcmp (rObj1.c_str(), rObj2.c_str());
}

#endif // _VIEWTREE_INL
