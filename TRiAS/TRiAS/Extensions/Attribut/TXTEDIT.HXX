// Klassendefinition fuer SingleLineEdit ---------------------------
// File: TXTEDIT.HXX

#if !defined(_TXTEDIT_HXX)
#define _TXTEDIT_HXX

// Klasse f�r definierte Eingaben ---------------------------------------------
class TxtEdit : public ControlWindow {

private:
	char *m_pKey;	
	char *m_pFirstKey;	
	PushButton * m_pPush;
	ComboBox * m_pCombo;

protected:
	void KeyDown (KeyEvt);

public:
// Konstruktoren
		TxtEdit (pDialogWindow p, ResID r);
		TxtEdit (pWindow parent, uint id, Point p, Dimension d);

// MemberFunktionen
	SingleLineEdit *GetEditControl (void) { 
		return (SingleLineEdit *)GetControl(); 
	};
	void GetText (char *, uint);
	void SetText (const char *);
	void SetButton ( PushButton *);
	void SetCombo ( ComboBox *);
	void SetKey ( char *);
	int GetTextLen (void);
	void SetTextLimit (uint);

// Destruktor
		~TxtEdit (void);
};

#endif // _TXTEDIT_HXX

