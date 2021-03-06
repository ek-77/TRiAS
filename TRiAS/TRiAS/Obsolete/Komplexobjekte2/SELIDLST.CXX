// Eine Listbox, die alle Identifikator/Objekttypen der Datenbasis enth�lt ----
// File: SELIDLST.CXX

#include "featurep.hxx"
#include "feature.h"		// ResourceKonstanten

#include "selidlst.hxx"

// Konstruktor/Destruktor/Initialisierung -------------------------------------
CSelIdentList :: CSelIdentList (pDialogWindow pW, ResID uiRes)
	       : MultiSelListBox (pW, uiRes)
{
	m_pBuff = NULL;
	m_lLastIdent = -1L;
	m_iLastTypes = 0;
	m_iIdBase = DEX_GetIdBase();
}

CSelIdentList :: ~CSelIdentList (void)
{
	DELETE (m_pBuff);
}


extern "C" {

typedef struct tagFILLIDENTDATA {
	MultiSelListBox *m_pMSLB;
	short m_iIdBase;
	char *m_pOutBuff;
} FILLIDENTDATA;


static void AddTypeString (FILLIDENTDATA *pFI, long lIdent, char cTyp, char *pKText)
{
	if (pFI -> m_iIdBase == 10) 
		wsprintf (pFI -> m_pOutBuff, "%08ld:%c:%s", lIdent, cTyp, pKText);
	else
		wsprintf (pFI -> m_pOutBuff, "%08lx:%c:%s", lIdent, cTyp, pKText);

	pFI -> m_pMSLB -> AddString (pFI -> m_pOutBuff);
}


bool _XTENSN_EXPORT PASCAL FillIdentsMSLB (long lIdent, DWORD dwTypes, void *pData)
{
PBDDATA pbdData;
char cbKText[33];
FILLIDENTDATA *pFI = (FILLIDENTDATA *)pData;

	memset (&pbdData, '\0', sizeof(PBDDATA));
	memset (cbKText, '\0', sizeof(cbKText));

	pbdData.dwSize = sizeof(PBDDATA);
	pbdData.pbdTyp = 'i';
	pbdData.pbdCode = lIdent;
	pbdData.pbdKText = cbKText;
	pbdData.pbdKTextLen = sizeof(cbKText) -1;
	pbdData.pbdLTextLen = 0;
	DEX_GetPBDData (pbdData);
	cbKText[32] = '\0';
	
	if (dwTypes & OTPunkt)	 AddTypeString (pFI, lIdent, 'P', pbdData.pbdKText);
	if (dwTypes & OTLinie)	 AddTypeString (pFI, lIdent, 'L', pbdData.pbdKText);
	if (dwTypes & OTFlaeche) AddTypeString (pFI, lIdent, 'F', pbdData.pbdKText);
	if (dwTypes & OTText)	 AddTypeString (pFI, lIdent, 'T', pbdData.pbdKText);

return true;	// weitermachen
}

} 	// extern "C"


bool CSelIdentList :: FInit (void)
{
// ZeichenKette anlegen
	m_pBuff = new char [_MAX_PATH];
	if (m_pBuff == NULL) return false;

FILLIDENTDATA FID;

	FID.m_pMSLB = this;
	FID.m_iIdBase = m_iIdBase;
	FID.m_pOutBuff = m_pBuff;

ENUMTEXTKEYEX ETK;

	ETK.eKey = NULL;			// aktuelle Sicht
	ETK.eFcn = (ENUMLONGKEYEXPROC)FillIdentsMSLB;
	ETK.ePtr = &FID;
	ETK.eData = OTPunkt|OTLinie|OTFlaeche|OTText;
	if (!DEX_EnumSightIdentsEx (ETK))	// alle Idents dieser Sicht
		return false;

return true;
}


CSelIdentList * CSelIdentList :: CreateInstance (pDialogWindow pW, ResID uiRes)
{
CSelIdentList *pLst = new CSelIdentList (pW, uiRes);

	if (pLst == NULL || !pLst -> FInit()) {
		DELETE (pLst);
		return NULL;
	}
	
return pLst;
}


// ZugriffsFunktionen auf ausgew�hlte Identifikatoren -------------------------
// Diese Funktionen liefern jetzt alle selektierten Objekttypen f�r einen Ident
// mit einem mal.
bool CSelIdentList :: GetFirstIdent (long &rlIdent, short &riOTyp)
{
// anf�ngliche Initialisierungen
	m_lLastIdent = -1L;
	m_iLastTypes = 0;
	
	if (!DecodeEntry (GetFirstSelected(), m_lLastIdent, m_iLastTypes))
		return false;		// kein Eintrag verf�gbar

return GetNextIdent (rlIdent, riOTyp);
}


bool CSelIdentList :: GetNextIdent (long &rlIdent, short &riOTyp)
{
// wenn wir bereits am Ende sind
	if (m_lLastIdent == -1L)
		return false;	// kein weiterer Eintrag verf�gbar
		
// ersten Ident gefunden
	rlIdent = m_lLastIdent;
	riOTyp = m_iLastTypes;
	
// jetzt solange suchen, bis neuer Ident kommt
	do {
		if (!DecodeEntry (GetNextSelected(), m_lLastIdent, m_iLastTypes)) {
			m_lLastIdent = -1L;	// das war der letzte Eintrag
			m_iLastTypes = 0;
			return true;
		}
		if (rlIdent != m_lLastIdent)
			break;
		riOTyp |= m_iLastTypes;		// Typ hinzuf�gen
	} while (true);

return true;
}


bool CSelIdentList :: SelectIdent (long lIdent, short iOTyp, bool fSel)
{
short iCnt = GetCount();
long lCurrIdent = -1;
short iCurrOTyp = 0;

	for (short iIndex = 0; iIndex < iCnt; iIndex++) {
	// Alle Eintr�ge der Listbox abarbeiten
	
		if (DecodeEntry (iIndex, lCurrIdent, iCurrOTyp)) {
			if (lCurrIdent == lIdent && iCurrOTyp == iOTyp) {
			// Eintrag gefunden
				ChangeSelected (iIndex, fSel);
				return true;
			}
		}
	}

return false;
}


// HilfsFunktionen ------------------------------------------------------------
bool CSelIdentList :: DecodeEntry (short iIndex, long &rlIdent, short &riOTyp)
{
	if (iIndex == -1) return false;
	
char *pT = NULL;

	GetString (m_pBuff, iIndex, _MAX_PATH);
	rlIdent = strtoul (m_pBuff, &pT, m_iIdBase);
	if (pT && *pT == ':') 
		riOTyp = GetOTyp (*(pT+1));
	else {
		riOTyp = 0;	// Unknown type
		return false;
	}
		
return true;
}

short CSelIdentList :: GetOTyp (short ch)
{
	switch (ch) {
	case 'P':	return OTPunkt;
	case 'L':	return OTLinie;
	case 'F':	return OTFlaeche;
	case 'T':	return OTText;
	}

return 0;
}


