// Inlinefunktionen f�r typspezifischenBaum -----------------------------------
// Generiert aus CTTREE.CTT
// File: ORIDENTS.INL

// Member f�r ItemKlasse, die im Baum h�ngt ----------------------------------
// Normaler Konstruktor (evtl. notwendig) ------------------------------------
inline CORIdent :: CORIdent (ULONG ulKey, short iOType)
		 : m_Key (ulKey), m_iOTypes (iOType)
{
}

// ZugriffsFunktion auf den Suchschl�ssel innerhalb der ItemKlasse ------------
inline ULONG &CORIdent :: FGetULONG (void)
{
	return m_Key;
}

// Verwaltung der Objekttypen -------------------------------------------------
inline short CORIdent :: FGetOTypes (void)
{
	return m_iOTypes; 
}

inline short CORIdent :: FMergeOTypes (short iOType)
{
	return m_iOTypes |= iOType;
}

// VergleichsFunktion f�r zwei Suchschl�ssel ----------------------------------
inline int FCmpULONG (ULONG &rObj1, ULONG &rObj2)
{
	if (rObj1 > rObj2) 	return (+1);
	if (rObj1 == rObj2) 	return (0);
	if (rObj1 < rObj2) 	return (-1);

return 0;
}


