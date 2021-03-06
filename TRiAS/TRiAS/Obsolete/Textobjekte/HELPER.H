#if !defined(_HELPER_H)
#define _HELPER_H

class CHelper 
{
public:
// Konstruktor / Destruktor
		CHelper (class CTextExt *pTextExt);
		~CHelper (void);
	
// Rufe Trias zur Enum., Hauptarbeit
	bool ProvTextObj(HWND hWnd, char* pcGeo, CString sTxt, 
			long lIdent, long lMerkCd, bool, bool, bool, 
			bool bRename, long lCBIdent, bool fPosPtTexts);
	
	bool CalcPointofText(long*, long*, long*, short, long, long lIdent, bool fPosPtTexts);  // Berechne den Punkt f�r Textobjekt
	bool AbhaengTextObj (HWND hWnd, long lIdent, bool, char*); // Abh. der Textobj. nach Enumeration  der Objekte
	bool LoeschObjRelat (long, bool, short* piFounded); //L�schen vorheriger Ob.rel.,auf Wunsch auch �brige Textob.
	bool MakeObjRelat (long lONr , long lTxtONR); // wenn keine Relation vorhanden , herstellen
	bool MovingIfPntObj(long* pX, long* pY, long lIdent);
	SIZE GetDotsPerMM (HDC hDC); 
	bool EvalSchwerPunkt(long*, long*, long*);
	bool EvalLinMitte(long*, long*, long);
	bool PutUniqueIdentMCodeText(long lObNr, long lTObNr, bool bTemp);
	bool Rename( SEnObj *pstEnObj);
	bool GetKText (CString &cbKText, char cKey ,long lItem);
	bool FuellBox(DWORD dwType, CListBox *pLB, long lIdent);
	bool FuellBox (CComboBox *pCB, long lIdent);
	bool TestTextContents (const char *pcBuffer);
};

#endif 	// _HELPER_H
