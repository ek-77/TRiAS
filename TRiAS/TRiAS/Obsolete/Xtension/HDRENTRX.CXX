// HeaderEntry-Memberklassen, Variante fuer Erweiterungen
// File: HDRENTRX.CXX

#include "xtensnp.hxx"

#include "hdrentrx.hxx"

#ifdef _DEBUG
#undef THIS_FILE
static char BASED_CODE THIS_FILE[] = __FILE__;
#endif

// HeaderEntry ----------------------------------------------------------------
HeaderEntryX :: HeaderEntryX (void) 
{
	memset (_HeaderKey, '\0', HDRKEYLENGTH+1);
	_HeaderText = NULL;
	_Status = HE_INVALID;
}

HeaderEntryX :: HeaderEntryX (const char *Key) 
{
	TX_ASSERT(TIsValidString (Key));

	_Status = HE_INVALID;

// Schlüsseleintrag kopieren
	if (Key != NULL) {
		memset (_HeaderKey, ' ', HDRKEYLENGTH+1);
		strncpy (_HeaderKey, Key, HDRKEYLENGTH);

	short iLen = min (strlen (Key), HDRKEYLENGTH);

		memset (&_HeaderKey[iLen], ' ', HDRKEYLENGTH-iLen);
		_HeaderKey[HDRKEYLENGTH] = '\0';
	}
	_HeaderText = NULL;     // falls abgebrochen werden muß

// Puffer anlegen
	_HeaderText = new char [HDRENTRYTEXTLEN+1];
	if (_HeaderText == NULL) {
	// Kein Speicherplatz mehr
		_Status = HE_INVALID;  	// profilaktisch !
		return;
	}
	*_HeaderText = '\0';

// HeaderEintrag holen
GEODBHDRENTRY HE;

	INITSTRUCT(HE, GEODBHDRENTRY);
	strncpy (HE.hdrKey, _HeaderKey, HDRKEYLENGTH);
	HE.lphdrText = _HeaderText;
	HE.hdrTextLen = HDRENTRYTEXTLEN;
	
// HeaderText einlesen
	if (DEX_ReadGeoDBHdrEntry(HE) == EC_OKAY)
		_Status = HE_UNMODIFIED;
}


HeaderEntryX :: HeaderEntryX (const char *Key, const char *Text) 
{
	TX_ASSERT(TIsValidString (Key));
	TX_ASSERT(TIsValidString (Text));

	_Status = HE_INVALID;

	if (Key != NULL) {	// Schlüsseleintrag kopieren
		memset (_HeaderKey, ' ', HDRKEYLENGTH+1);
		strncpy (_HeaderKey, Key, HDRKEYLENGTH);

	short iLen = min (strlen (Key), HDRKEYLENGTH);

		memset (&_HeaderKey[iLen], ' ', HDRKEYLENGTH-iLen);
		_HeaderKey[HDRKEYLENGTH] = '\0';
	}
	if (Text != NULL) {
	// Headertext kopieren
		_HeaderText = new char [strlen (Text)+1];
		if (_HeaderText == NULL)	// Kein Speicherplatz
			return;
		strcpy (_HeaderText, Text);
	}
	_Status = HE_UNMODIFIED;
}

HeaderEntryX :: HeaderEntryX (ResID uiRes) 
{
ResString rsKey (uiRes, 17);

	_Status = HE_INVALID;

// Schlüsseleintrag kopieren
	memset (_HeaderKey, '\0', HDRKEYLENGTH+1);
	strncpy (_HeaderKey, rsKey, HDRKEYLENGTH);

short iLen = min (strlen(rsKey.Addr()), HDRKEYLENGTH);

	memset (&_HeaderKey[iLen], ' ', HDRKEYLENGTH-iLen);
	_HeaderKey[HDRKEYLENGTH] = '\0';

	_HeaderText = NULL;     // falls abgebrochen werden muß

// Puffer anlegen
	_HeaderText = new char [HDRENTRYTEXTLEN+1];
	if (_HeaderText == NULL) {
	// Kein Speicherplatz mehr
		_Status = HE_INVALID;  	// profilaktisch !
		return;
	}
	*_HeaderText = '\0';

// HeaderEintrag holen
GEODBHDRENTRY HE;

	memset (&HE, '\0', sizeof(GEODBHDRENTRY));
	HE.dwSize = sizeof(GEODBHDRENTRY);
	strncpy (HE.hdrKey, _HeaderKey, HDRKEYLENGTH);
	HE.lphdrText = _HeaderText;
	HE.hdrTextLen = HDRENTRYTEXTLEN;
	
// HeaderText einlesen
	if (DEX_ReadGeoDBHdrEntry(HE)  == EC_OKAY)
		_Status = HE_UNMODIFIED;
}


HeaderEntryX :: HeaderEntryX (HeaderEntryX &HE) 
{
// Schlüsseleintrag kopieren
	memset (_HeaderKey, ' ', HDRKEYLENGTH+1);
	strncpy (_HeaderKey, HE._HeaderKey, HDRKEYLENGTH);

short iLen = min (strlen (HE._HeaderKey), HDRKEYLENGTH);

	memset (&_HeaderKey[iLen], ' ', HDRKEYLENGTH-iLen);
	_HeaderKey[HDRKEYLENGTH] = '\0';

// HeaderText kopieren
	if (HE._HeaderText != NULL) {
	// HeaderText vorhanden
		_HeaderText = new char [strlen (HE._HeaderText)+1];
		if (_HeaderText == NULL) {
		// Kein Speicherplatz
			_Status = HE_INVALID;
			return;
		}
		strcpy (_HeaderText, HE._HeaderText);
	}
	_Status = HE_UNMODIFIED;
}

// Zuweisungsoperator überladen -----------------------------------------------
HeaderEntryX & HeaderEntryX :: operator = (HeaderEntryX &HE) 
{
// alten HeaderEntry freigeben
	DELETE (_HeaderText);

// Schlüsseleintrag kopieren
	memset (_HeaderKey, ' ', HDRKEYLENGTH+1);
	strncpy (_HeaderKey, HE._HeaderKey, HDRKEYLENGTH);

short iLen = min (strlen (HE._HeaderKey), HDRKEYLENGTH);

	memset (&_HeaderKey[iLen], ' ', HDRKEYLENGTH-iLen);
	_HeaderKey[HDRKEYLENGTH] = '\0';

// HeaderText kopieren
	if (HE._HeaderText != NULL) {
	// HeaderText vorhanden
		_HeaderText = new char [strlen (HE._HeaderText)+1];
		if (_HeaderText == NULL) {
		// Kein Speicherplatz
			_Status = HE_INVALID;
			return *this;
		}
		strcpy (_HeaderText, HE._HeaderText);
	}
	_Status = HE._Status;           // Kennzeichnen

return *this;
}

// verpaßt diesem HeaderEntry einen neuen Text --------------------------------
void HeaderEntryX :: SetEntryText (char *pNewText)
{
	TX_ASSERT(TIsValidString (pNewText));

// HeaderText kopieren
	if (pNewText != NULL) {		// HeaderText vorhanden
		DELETE (_HeaderText);	// alten Text löschen
		_HeaderText = new char [strlen (pNewText)+1];
		if (_HeaderText == NULL) {
		// Kein Speicherplatz
			_Status = HE_INVALID;
			return;
		}
		strcpy (_HeaderText, pNewText);
		_Status = HE_MODIFIED;
	}
}

ErrCode HeaderEntryX :: WriteBack (void)
{               
ErrCode RC;
GEODBHDRENTRY HE;

	INITSTRUCT(HE, GEODBHDRENTRY);
	strncpy (HE.hdrKey, _HeaderKey, HDRKEYLENGTH);
	HE.lphdrText = _HeaderText;
	HE.hdrTextLen = strlen (_HeaderText);

	if ((RC = DEX_WriteGeoDBHdrEntry (HE)) == EC_OKAY)	
		_Status = HE_UNMODIFIED;

return RC;
}

// liefert HeaderText als DoubleWert zurück
double HeaderEntryX :: EntryDouble (double Default) 
{
	if (_Status != HE_INVALID)
		return atof(_HeaderText);       // HeaderText konvertieren
	else
		return Default;         // ansonsten Standardwert liefern
}

// liefert HeaderText als LongWert zurück
long HeaderEntryX :: EntryLong (long Default) 
{
	if (_Status != HE_INVALID)
		return atol (_HeaderText);	// HeaderText konvertieren
	else
		return Default;
}

// Destruktor
HeaderEntryX :: ~HeaderEntryX (void) 
{
	DELETE (_HeaderText);	// alten HeaderEntry freigeben
}

