// Einstellen der Parameter f�r die Textrecherche
// File: MKRECH.HXX


#if !defined(_MKRECH_HXX)
#define _MKRECH_HXX

#if !defined(NOTEXTRECHPARS)
class TextRechercheParams : public DialogWindow {
private:
// Controls
	ListBox RechMerkmal;		// Auswahl des RechercheMerkmals
	PushButton OKButton;		// Buttons
	PushButton CancelButton;
#if defined(WIN16)
	PushButton HelpButton;
#endif // WIN16
	RadioButton ExactSearch;
	RadioButton InExactSearch;
	RadioButton SubStringSearch;
// sonstige Daten
	int _SMode;				// gew�hlter Suchmode
	long _MKSearch;			// SuchMerkmal
	short m_iMkBase;

protected:
// EventHandler
	void ButtonClick (ControlEvt);
	void ListBoxClk (ControlEvt);
	void ListBoxSel (ControlEvt);
	
public:
// Konstruktor
		TextRechercheParams (pWindow pW, int Mode, long MKode);

// Memberfunktionen
	int GetSearchMode (void) { return _SMode; }
	long GetMKSearch (void) { return _MKSearch; }
	ErrCode FillMerkmale (void);
};

#endif // NOTEXTRECHPARS

#endif // _MKRECH_HXX
