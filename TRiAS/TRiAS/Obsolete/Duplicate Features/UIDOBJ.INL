// Inlinefunktionen f�r typspezifischenBaum -----------------------------------
// Generiert aus CTTREE.CTT
// File: UIDOBJ.INL

#if !defined(_UIDOBJ_INL)
#define _UIDOBJ_INL

// Member f�r ItemKlasse, die im Baum h�ngt ----------------------------------
// Normaler Konstruktor (evtl. notwendig) ------------------------------------
inline CObjUIdent :: CObjUIdent (LPUIDENT pUIdent, ULONG lONr, short iOType)
		   : m_Key (StrDup(pUIdent)), m_lONr (lONr), m_iOType (iOType)
{
}

// Destruktor -----------------------------------------------------------------
inline CObjUIdent :: ~CObjUIdent (void)
{
	DELETE (m_Key);
}

// ZugriffsFunktion auf den Suchschl�ssel innerhalb der ItemKlasse ------------
inline LPUIDENT &CObjUIdent :: FGetLPUIDENT (void)
{
	return m_Key;
}

// VergleichsFunktion f�r zwei Suchschl�ssel ----------------------------------
inline int FCmpLPUIDENT (LPUIDENT &rObj1, LPUIDENT &rObj2)
{
	return strcmp (rObj1, rObj2);
}

#endif // _UIDOBJ_INL

