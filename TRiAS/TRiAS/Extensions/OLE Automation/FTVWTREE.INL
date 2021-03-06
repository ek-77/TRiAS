// Inlinefunktionen f�r typspezifischenBaum -----------------------------------
// File : FTVWTREE.INL

#include "Strings.h"

// ZugriffsFunktion auf den Suchschl�ssel innerhalb der ItemKlasse ------------
inline LPCSTR CGeoFeatureBase :: FGetBSTR (void)
{
	return (NULL != m_pName) ? m_pName : g_cbNil;
}

// VergleichsFunktion f�r zwei Suchschl�ssel ----------------------------------
inline int FCmpBSTR (LPCSTR rFeat1, LPCSTR rFeat2)
{
	_ASSERTE(NULL != rFeat1 && NULL != rFeat2);
	return strcmp (rFeat1, rFeat2);
}


