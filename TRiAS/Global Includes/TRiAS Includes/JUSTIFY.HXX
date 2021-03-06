// Header f�r TextAusrichtung -------------------------------------------------
// File: JUSTIFY.HXX

#if !defined(_JUSTIFY_HXX)
#define _JUSTIFY_HXX

// gew�nschte Textausrichtung
enum AlignType {
	ATLeft = 0,			// linksb�ndig
	ATRight = 1,		// rechtsb�ndig
	ATCentre = 2,		// zentriert
	ATJust = 3,			// blocksatz

	ATBaseLine = 0x80,	// auf Basislinie beziehen
};

_TRIAS03_ENTRY CoOrd Justify (HDC hdc, HDC hTargetDC, 
	       const char *lpText, POINT *pPtRef, RECT *prc, 
	       AlignType nAlign, bool fToDraw, short *piLineCnt = NULL, short iEsc = 0);

#endif // _JUSTIFY_HXX
