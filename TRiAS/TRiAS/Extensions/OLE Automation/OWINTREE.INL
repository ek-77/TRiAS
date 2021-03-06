// Inlinefunktionen f�r typspezifischenBaum -----------------------------------
// File: OWINTREE.INL

// Member f�r ItemKlasse, die im Baum h�ngt ----------------------------------
// ZugriffsFunktion auf den Suchschl�ssel innerhalb der ItemKlasse ------------
inline HWND& CGeoObjectWin :: FGetHWND (void)
{
	return m_hORWnd;
}

// VergleichsFunktion f�r zwei Suchschl�ssel ----------------------------------
inline int FCmpHWND (const HWND &rObjWin1, const HWND &rObjWin2)
{
	if (rObjWin1 >  rObjWin2) return (+1);
	if (rObjWin1 == rObjWin2)	return ( 0);
	if (rObjWin1 <  rObjWin2) return (-1);

return 0;
}
