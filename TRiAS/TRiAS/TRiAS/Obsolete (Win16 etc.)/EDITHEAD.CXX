// Code fuer Dialogbox (Editieren des GeoDB-Headers) --------------------------
// File: EDITHEAD.CXX

#include "triaspre.hxx"

#include "edithead.hxx"

extern Window *CurrActW;
extern HelpDisplay *IrisHD;

// Dialogfenster zur Headereditierung -----------------------------------------
static EditHeaderDialog *pEHDlg = NULL;

void IrisWind :: ShowEditHeader (void) 
{
// Dialogfenster generieren
	EditHeaderDialog EHDlg (this, DBO()); 
// Dialogfenster anzeigen
	EHDlg.Show (Centre);          // Header editieren

	DEXN_ReReadHeader();
}

// Konstruktor ----------------------------------------------------------------
#pragma warning (disable: 4355)

EditHeaderDialog :: EditHeaderDialog (pWindow ParentWnd, DatenBasisObjekt &DBO) :
	DialogWindow (ParentWnd, ResID (EDITHEADER)),
// Konstruktoren f�r die einzelnen Ressourcen rufen
	OKButton (this, IDOK),                                  // Buttons
	CancelButton (this, IDCANCEL),
	SaveButton (this, IDB_SAVE),
	DeleteButton (this, IDB_DELETE),
#if !defined(WIN32)
	HelpButton (this, IDB_HDEHELP),
#endif // WIN32
	SLE_HeaderKey (this, ResID (IDD_HEADERKEY)),            // EditFenster
	MLE_HeaderText (this, ResID (IDD_HEADERTEXT)),
	KeyList (this, ResID (IDL_HEADERKEY)),                  // ListBox
	GeoDBName (this, ResID (IDT_HEADERNAME)),                // FixedText
	_DB (DBO.DB())
{
// Pointer auf dieses Objekt merken
	pEHDlg = this;
// CaptionText setzen
	SetCaption (ResString (IDS_SAVEHEADERTEXTCAP, 30).Addr());
// M�gliche Fehlermeldungen abschalten
// Fehlermeldungen f�r EC_BADLEN und WC_NOTFOUND unterdr�cken
	err_install (EC_BADLEN, E_IGNORE, (int (**)(int,int,...))&e_badlen);
	err_install (WC_NOTFOUND, E_IGNORE, (int (**)(int,int,...))&w_notfound);
// Controls initialisieren
// FixedText
char File[_MAX_FNAME+_MAX_EXT], Ext[_MAX_EXT];

	_splitpath (DBO.DB().GetDBName(), NULL, NULL, File, Ext);
	GeoDBName.SetText ((pchar)strcat(File, Ext));   // GeoDB-Namen anzeigen
// EditControls
	SLE_HeaderKey.SetTextLimit (HDRKEYLENGTH); // HeaderKeyL�nge setzen
// ListBox
	ScanGeoDBHeader ();             // HeaderSatzListe f�llen
	// ListBox f�llen
	_Header.Every (FillKeyList);

// Buttons
	SaveButton.Disable ();                  // Speichern abschalten
	DeleteButton.Disable ();                // L�schen abschalten

// ROMode der DB merken
	_ROMode = DBO.DB().GetROMode();
}

#pragma warning (default: 4355)

// Funktion f�gt �bergebenes Item zur KeyList-ListBox hinzu
void EXPORTTRIAS FillKeyList (void *pItem) 
{
char localKey[HDRKEYLENGTH+2];
HeaderEntry *pHE = (HeaderEntry *)pItem;

	switch (pHE->Status()) {
	case HE_DELETED:
		return;		// do nothing

	case HE_MODIFIED:	// Eintrag ist modifiziert
		localKey[0] = ModifiedChar;     // 1. Buchstabe: '*'
		strcpy (&localKey[1], pHE->EntryKey());
		break;

	case HE_UNMODIFIED:     // Eintrag ist nicht modifiziert
		strcpy (localKey, pHE->EntryKey());
		break;

	case HE_INVALID:        // HeaderEntry ist unvollst�ndig
		return;		// �bergehen
	}               
	pEHDlg -> KeyList.AddString (localKey); // zu ListBox hinzuf�gen
}


// HeaderSatzListe ------------------------------------------------------------
void EXPORTTRIAS HeaderSatzListe :: UserDelete (void *pHE) 
{
	((HeaderEntry *)pHE)-> /*HeaderEntry ::*/ ~HeaderEntry ();
}


// Funktion l�scht alle Eintr�ge aus KeyList ----------------------------------
inline void EditHeaderDialog :: DeleteKeyList (void) 
{
register int ItemCount = KeyList.GetCount ();

	for (register int i = 0; i < ItemCount; i++)
		KeyList.DelString (0);
}


// Destruktor
EditHeaderDialog :: ~EditHeaderDialog (void) 
{
INT_FUNC *dummy;

// alte Fehlermodi wieder einstellen
	err_install (WC_NOTFOUND, (int (*)(int,int,...))w_notfound, &dummy);
	err_install (EC_BADLEN, (int (*)(int,int,...))e_badlen, &dummy);

// Pointer wieder l�schen
	pEHDlg = NULL;
}


// Initiale F�llung der HeaderSatzListe ---------------------------------------
ErrCode EditHeaderDialog :: ScanGeoDBHeader (void) 
{
ErrCode EC;                                     // FehlerCode der Funktionen
DB_ADDR dba;                                    // DatenBankAdresse
char localKey[HDRKEYLENGTH+1];                     // HeaderKey
CActDB ActDB (_DB);
ErrCode RC;

	memset (localKey, '\0', HDRKEYLENGTH+1);// Feld ausnullen
	DBASSERT (z_keyfirst (&dba, HDIDN));	// ersten Schl�ssel suchen
	EC = (ErrCode)z_keyread (localKey);     // und lesen

	while (EC == EC_OKAY) {
		{
		HeaderEntryCreator HEC (_Header);	// Entry generieren

			Create (HEC, HeaderEntry) (_DB, localKey);
		}       // und in HeaderSatzListe einf�gen
		EC = (ErrCode)z_keynext (&dba, HDIDN);  // n�chsten Key suchen
		if (EC != EC_OKAY) break;               // Fehler
		memset (localKey, '\0', HDRKEYLENGTH+1);   // Feld ausnullen
		EC = (ErrCode)z_keyread (localKey);     // Key einlesen
	}

return EC;
}

// Eventbehandlung f�r Editieren GeoDB-Header ---------------------------------
void EditHeaderDialog :: ListBoxSel (ControlEvt) 
{      // Click
char localKey[HDRKEYLENGTH+2];     // aktueller HeaderKey
char *pKey;                     // Zeiger auf Key

// �berpr�fen, ob ge�ndertes Fenster gespeichert werden soll,
	AsktoSaveHeaderEntry ();
// ausgew�hlten ListBoxEintrag anzeigen
	if (KeyList.GetCurrentString (localKey)) {  // aktuellen HeaderKey lesen
		if (*(pKey = localKey) == ModifiedChar)
			pKey++;         // '*' �berspringen

	// HeaderText zu Key suchen
	register char *localText = RetrieveHeaderText (pKey);
		if (localText == NULL) return;

	// Text im SingleLineEditControl setzen
	register char *cptr;    // tempor�rer Zeichenkettenpointer

		if ((cptr = strrlchr (pKey, ' ')) != NULL)
			*cptr = '\0';   // abschlie�ende Leerzeichen kappen
		// in EditControl anzeigen
		SLE_HeaderKey.SetText (pKey);
		
	// HeaderText in MultiLineEditControl setzen
		if ((cptr = strrlchr (localText, ' ')) != NULL)
			*cptr = '\0';   // abschlie�ende Leerzeichen kappen
		MLE_HeaderText.SetText (localText);

	// Pufferspeicher wieder freigeben
		DELETE (localText);
	}
}


// HeaderText f�r Key liefern (aus HeaderSatzListe)
char *EditHeaderDialog :: RetrieveHeaderText (char *localKey) 
{
register char *localText;       // lokale Kopie des Textes
char *pBuf;                     // Zeiger auf HeaderEntry im Node

// Key vorbereiten
register int KeyLen = strlen(localKey);         // reale Keyl�nge

	memset (&localKey[KeyLen], ' ',
		HDRKEYLENGTH-strlen(localKey));    // mit Spaces auff�llen
	localKey[HDRKEYLENGTH] = '\0';             // abschlie�endes '\0'-Byte

// Text aus Datei bzw. HeaderSatzListe holen
ExtTable t (_Header);   // Navigator anlegen

	if (!t.Find (localKey)) return NULL;

// HeaderText lesen
HeaderEntryLock l(t);   // Eintrag lock'en

	pBuf =  l -> EntryText();
	localText = new char [strlen(pBuf)+1];  // Speicher anfordern
	if (localText == NULL) {
	// Fehler: Kein Speicherplatz.
		db_error (EC_NOMEMORY, RC_EditLBSel);
		return NULL;
	}
	strcpy (localText, pBuf);               // Text umkopieren

return localText;
}


void EditHeaderDialog :: ListBoxClk (ControlEvt) 
{      // DoubleClick
}


// HeaderEntry in GeoDB wegschreiben ------------------------------------------
void EXPORTTRIAS WriteHeaderEntry (void *vpHE) 
{
HeaderEntry *pHE = (HeaderEntry *)vpHE;

	switch (pHE->Status()) {
	case HE_MODIFIED:
		{
		long Len = strlen ((const char *)pHE->EntryText());

#if defined (MSWIND)
			AnsiToOem ((char *)pHE->EntryText(), (char *)pHE->EntryText());
#endif
			DEX_SetDirtyGeoDB(true);
			puthd_ ((char *)pHE->EntryText(), (short)Len, &Len, 
				(long *)pHE->EntryKey(), 0L);
		}
		break;

	case HE_DELETED:
		DEX_SetDirtyGeoDB(true);
		delhd_ ((long *)pHE->EntryKey());
		break;

	case HE_UNMODIFIED:
	case HE_INVALID:
		break;
	}
}


// Interrupthandler f�r TastenDruck
void EditHeaderDialog :: ButtonClick (ControlEvt e) 
{   // Button gedr�ckt
	switch ((unsigned int)e.GetControlID ()) {      // welcher Button gedr�ckt
	case IDOK:			  // OKButton: Speichern und raus
		AsktoSaveHeaderEntry ();  // aktuellen Eintrag evtl. speichern
		_Header.Every (WriteHeaderEntry); // gesamten Header schreiben
		EndDlg (1);     // raus
		break;

	case IDCANCEL:          // CancelButton: �nderungen verwerfen und raus
		EndDlg ();      // Abbrechen
		break;

	case IDB_SAVE:          // SaveButton: aktuellen Eintrag abspeichern
		SaveEntry ();
		break;

	case IDB_DELETE:        // DeleteButton: aktuellen Eintrag l�schen
		DeleteEntry ();
		break;
	
	case IDB_HDEHELP:
		IrisHD -> Show (IDB_HDEHELP);
		break;
	}
}


// aktuellen Eintrag in HeaderSatzListe abspeichern
void EditHeaderDialog :: SaveEntry (void) 
{
char Key[HDRKEYLENGTH+1];

// Key aus EditControl lesen
	SLE_HeaderKey.GetText (Key, HDRKEYLENGTH+1);       // aktueller Key
	SLE_HeaderKey.SetText (Key);                    // not modified
	
register int KeyLen = strlen (Key);

	memset (&Key[KeyLen], ' ', HDRKEYLENGTH-KeyLen);   // mit Spaces auff�llen
	Key[HDRKEYLENGTH] = '\0';                          // StringEnde

// wenn Key in HeaderSatzListe, dann l�schen
	{
	ExtTable t (_Header);

		if (t.Find (Key))               // Key suchen
		// wenn gefunden, dann aus HeaderSatzListe l�schen
			t.Delete ();
	}

// Text aus EditControl lesen
short textLen = MLE_HeaderText.GetTextLen ();   // Textl�nge abfragen
register pchar Text = new char [textLen+1];     // Textpuffer anlegen

	if (Text == NULL) {
	// Kein Speicherplatz mehr
		db_error (EC_NOMEMORY, RC_SaveEntry);
		return;
	}
	MLE_HeaderText.GetText (Text, textLen+1);       // Text abfragen
	MLE_HeaderText.SetText (Text);                  // not modified
	
// Neuen HeaderSatzListen-Eintrag generieren
	{
	HeaderEntryCreator HEC (_Header);
	HeaderEntry *pHE = Create (HEC, HeaderEntry) (_DB, Key, Text); 
		// HeaderEntry bilden

		pHE->Status() = HE_MODIFIED;    // Kennzeichen: modifiziert
	}       // und in HeaderSatzListe einspeichern

	DELETE (Text);                            // Puffer wieder freigeben

// ListBox aktualisieren
	KeyList.Hide ();                // ListBox nicht anzeigen
	DeleteKeyList ();               // alle Eintr�ge in ListBox l�schen
					// und dise neu f�llen
	_Header.Every (FillKeyList);
	KeyList.Show ();                // ListBox wieder anzeigen
}


// aktuellen Eintrag l�schen
void EditHeaderDialog :: DeleteEntry (void) 
{
char Key[HDRKEYLENGTH+1];

// Key aus EditControl lesen
	SLE_HeaderKey.GetText (Key, HDRKEYLENGTH+1);

register int KeyLen = strlen(Key);

	memset (&Key[KeyLen], ' ', HDRKEYLENGTH-KeyLen);   // mit Spaces auff�llen
	Key[HDRKEYLENGTH] = '\0';                          // StringEnde

// wenn Key in HeaderSatzListe, dann l�schen
ExtTable t (_Header);

	if (t.Find (Key)) {
	// aus HeaderSatzListe l�schen
	HeaderEntryLock l(t);

		if (l) l -> Status() = HE_DELETED;
	}
		
// EditControls l�schen, da aktueller Eintrag jetzt gel�scht ist
	SLE_HeaderKey.SetText ("");
	MLE_HeaderText.SetText ("");

// ListBox aktualisieren
	KeyList.Hide ();                // ListBox nicht anzeigen
	DeleteKeyList ();               // alle Eintr�ge in ListBox l�schen
					// und diese neu f�llen
	_Header.Every (FillKeyList);
	KeyList.Show ();                // ListBox wieder anzeigen
}


// EditControl wird ver�ndert -------------------------------------------------
void EditHeaderDialog :: EditChange (ControlEvt e) 
{
	if ((uint)e.GetControlID() == IDD_HEADERKEY) {      // nur HeaderKey auswerten
	Bool SaveEnable = ( ((Edit *)e.GetControl())->GetTextLen() != 0 );

		if (SaveEnable && !_ROMode > 0) {  
		// HeaderKey vorhanden und nicht $RO: SaveButton freigeben
			SaveButton.Enable();
			DeleteButton.Enable();
		} else {           // SaveButton sperren
			SaveButton.Disable();
			DeleteButton.Disable();
		}
	}
}


// EditControl erh�lt/verliert EingabeFocus
void EditHeaderDialog :: EditFocusChg (EditFocusChgEvt e) 
{
	switch ((unsigned int)e.GetControlID ()) {      // welches EditControl beeinflu�t
	case IDD_HEADERKEY:     // HeaderKey eingegeben
		if (!e.gotFocus()) {    // Focus abgegeben
		// Key holen
		char localKey[HDRKEYLENGTH+1];
			SLE_HeaderKey.GetText (localKey, HDRKEYLENGTH+1);

		// Text dazu holen
		register char *localText = RetrieveHeaderText (localKey);

		// Text Anzeigen
			if (localText != NULL) {
				MLE_HeaderText.SetText (localText);
				DELETE (localText);
			}
		}
		break;

	case IDD_HEADERTEXT:    // HeaderText eingegeben
		break;
	}
}


// Fragen, ob HeaderEntry abgespeichert werden soll
Bool EditHeaderDialog :: AsktoSaveHeaderEntry (void) 
{
// fragen, ob Editcontrols ge�ndert wurden
	if (SLE_HeaderKey.isModified() || MLE_HeaderText.isModified()) {
	MessBox AsktoSave (ResString (IDS_SAVEHEADERTEXTCAP, 30),
			   ResString (IDS_SAVEHEADERTEXT, 120),
			   this);       

	// dann fragen, ob gespeichert werden soll
		AsktoSave.SetType (QuestionMarkIcon | YesNoButtons);
		switch (AsktoSave.Show ()) {
		case YesReply:          // ja speichern
			SaveEntry ();
			return TRUE;

		case NoReply:           // nein nicht speichern
			return FALSE;
		}
	}

return FALSE;
}
