// Memberfunktionen fuer MicroScrollControl -----------------------------------
// File: MUSCROLL.CXX

#include "trias03p.hxx"

#if !defined(WIN32)
#include <muscroll.h>
#else
#include <muscrl32.h>
#endif

#include <muscroll.hxx>

// Konstruktoren --------------------------------------------------------------
HorizMicroScroll :: HorizMicroScroll (pDialogWindow pW, ResID rsc) 
		  : HorizScrollBar (pW, rsc)
{
	// nothing to do
}

VertMicroScroll :: VertMicroScroll (pDialogWindow pW, ResID rsc)
		 : VertScrollBar (pW, rsc)
{
	// nothing to do
}

// Memberfunktionen -----------------------------------------------------------
// Horizontaler MicroScroll
Range HorizMicroScroll :: SetScrollRange (Range R) 
{
DWORD dwOldRange = MSDwRangeSet (GetHandle(), R.Min(), R.Max());

	return Range (LOWORD(dwOldRange), HIWORD(dwOldRange));
}

Range HorizMicroScroll :: GetScrollRange (void) 
{
#if !defined(WIN32)
DWORD dwOldRange = MSDwRangeGet (GetHandle());

	return Range (LOWORD(dwOldRange), HIWORD(dwOldRange));
#else
INT iMin, iMax;

	MSDwRangeGet (GetHandle(), &iMin, &iMax);
	return Range (iMin, iMax);
#endif
}

uint HorizMicroScroll :: SetCurrPos (uint newPos) 
{
	return (uint) MSWCurrentPosSet (GetHandle(), newPos);
}

uint HorizMicroScroll :: GetCurrPos (void) 
{
	return (uint) MSWCurrentPosGet (GetHandle());
}

BOOL HorizMicroScroll :: SetPegScroll (BOOL newPegStyle) 
{
	return MSFNoPegScrollSet (GetHandle(), newPegStyle);
}

BOOL HorizMicroScroll :: GetPegScroll (void) 
{
	return MSFNoPegScrollGet (GetHandle());
}

BOOL HorizMicroScroll :: SetInvertRange (BOOL newInvertStyle) 
{
	return MSFInvertRangeSet (GetHandle(), newInvertStyle);
}

BOOL HorizMicroScroll :: GetInvertRange (void) 
{
	return MSFInvertRangeGet (GetHandle());
}

Color HorizMicroScroll :: SetColor (MSColorDef iIndex, Color C) 
{
COLORREF oldC = MSCrColorSet (GetHandle(), iIndex, *(COLORREF *)&C);

	return *(Color *)&oldC;
}

Color HorizMicroScroll :: GetColor (MSColorDef iIndex) 
{
COLORREF oldC = MSCrColorGet (GetHandle(), iIndex);

	return *(Color *)&oldC;
}


// Memberfunktionen f�r vertikalen MicroScroll --------------------------------
Range VertMicroScroll :: SetScrollRange (Range R) 
{
DWORD dwOldRange = MSDwRangeSet (GetHandle(), R.Min(), R.Max());

	return Range (LOWORD(dwOldRange), HIWORD(dwOldRange));
}

Range VertMicroScroll :: GetScrollRange (void) 
{
#if !defined(WIN32)
DWORD dwOldRange = MSDwRangeGet (GetHandle());

	return Range (LOWORD(dwOldRange), HIWORD(dwOldRange));
#else
INT iMin, iMax;

	MSDwRangeGet (GetHandle(), &iMin, &iMax);
	return Range (iMin, iMax);
#endif
}

uint VertMicroScroll :: SetCurrPos (uint newPos) 
{
	return (uint) MSWCurrentPosSet (GetHandle(), newPos);
}

uint VertMicroScroll :: GetCurrPos (void) 
{
	return (uint) MSWCurrentPosGet (GetHandle());
}

BOOL VertMicroScroll :: SetPegScroll (BOOL newPegStyle) 
{
	return MSFNoPegScrollSet (GetHandle(), newPegStyle);
}

BOOL VertMicroScroll :: GetPegScroll (void) 
{
	return MSFNoPegScrollGet (GetHandle());
}

BOOL VertMicroScroll :: SetInvertRange (BOOL newInvertStyle) 
{
	return MSFInvertRangeSet (GetHandle(), newInvertStyle);
}

BOOL VertMicroScroll :: GetInvertRange (void) 
{
	return MSFInvertRangeGet (GetHandle());
}

Color VertMicroScroll :: SetColor (MSColorDef iIndex, Color C) 
{
COLORREF oldC = MSCrColorSet (GetHandle(), iIndex, *(COLORREF *)&C);

	return *(Color *)&oldC;
}

Color VertMicroScroll :: GetColor (MSColorDef iIndex) 
{
COLORREF oldC = MSCrColorGet (GetHandle(), iIndex);

	return *(Color *)&oldC;
}


