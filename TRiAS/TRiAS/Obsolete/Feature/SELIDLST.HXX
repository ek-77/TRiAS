// Eine Listbox, die alle Identifikator/Objekttypen der Datenbasis enth�lt ----
// File: SELIDLST.HXX

#if !defined(_SELIDLST_HXX)
#define _SELIDLST_HXX

class CSelIdentList : public MultiSelListBox {
private:
	char *m_pBuff;
	short m_iIdBase;
	long m_lLastIdent;
	short m_iLastTypes;
	
	bool DecodeEntry (short iIndex, long &rlIdent, short &riOTyp);
	short GetOTyp (short ch);
	
public:
// Konstruktor/Destruktor/Initialisierung
		CSelIdentList (pDialogWindow pW, ResID uiRes);
		~CSelIdentList (void);
		
	bool FInit (void);
	
static CSelIdentList *CreateInstance (pDialogWindow pW, ResID uiRes);

// ZugriffsFunktionen auf ausgew�hlte Identifikatoren
	bool GetFirstIdent (long &rlIdent, short &riOTyp);
	bool GetNextIdent (long &rlIdent, short &riOTyp);

// Initialisierungsfunktion der anfangs ausgew�hlten Idents
	bool SelectIdent (long lIdent, short iOTyp, bool fSel = TRUE);
};

#endif // _SELIDLST_HXX
 