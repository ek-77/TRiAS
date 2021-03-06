// Ergebnisse der Abstandsmessung
// File: ABST_AUS.CXX
// W. M�rtl


#include "abstandp.hxx"

#include <hdrentrx.hxx>	// HeaderEntryX


#if defined(_DEBUG)
#undef THIS_FILE
static char BASED_CODE THIS_FILE[] = __FILE__;
#endif



///////////////////////////////////////////////////////////////////////////////////////////////
// externe Variable
extern ResourceFile* pRF;




///////////////////////////////////////////////////////////////////////////////////////////////
// Konstruktor
#if defined (MSCC8)
#pragma warning (disable: 4355)	// Ausschalten von uninteressanten Warnungen
#endif

// --------------------------------------------------------------------------------------------
AbstandsWerte :: AbstandsWerte (pWindow pW, ResID res, int iOT, int* piAnz, char cGenau)
			   : ModeLessDialog (pW, res),
				 _Ergebnis (this, IDE_ERGEBNIS),
				 _Abstand (this, IDT_ABSTAND),
				 _Speichern (this, IDB_SPEICHERN),
				 _Vorzeichen (this, IDB_VORZEICHEN),
				 _Loeschen (this, IDB_LOESCHEN),
				 _Statistik (this, IDB_STATISTIK),
				 _Datei (this, IDB_DATEI),
				 _Schritt (this, IDE_SCHRITT),
				 _Winkel (this, IDE_WINKEL),
				 _Automatisch (this, IDB_AUTOMAT),
				 _Zuwachs (this, IDE_ZUWACHS)
{
	_ASSERTE (piAnz != 0);

// NumEditX initialiseren
	_Schritt.SetNumEditMode (NumEditX :: NEM_NoTest);
	_Winkel.SetNumEditMode (NumEditX :: NEM_NoTest);
	_Zuwachs.SetNumEditMode (NumEditX :: NEM_NoTest);
	_Schritt.SetFocus();     // 1. Eingabestelle soll bei "Schrittweite" sein

// weitere Member initialisieren
	// Return-Taste soll nur innerhalb des Edit-Feldes wirken, nicht als Ende-Taste
	// f�r das gesamte Fenster
	_Ergebnis.SetStyle (ES_WANTRETURN);
	// Speicher-Button erst nach Vorgabe einer Datei freigeben
	_Speichern.Disable();
	// L�schen-Button erst nach Abspeicherung von mindestens 1 Ergebniszeile freigeben
	_Loeschen.Disable();
	// Statistik-Button erst nach Abspeicherung von mindestens 2 Ergebniszeilen freigeben
	_Statistik.Disable();   
	// Automatik-Button erst freigeben, wenn genau 2 Kanten recherchiert wurden und mindestens
	// die Schrittweite eingegeben wurde
	_Automatisch.Disable();
	
	_Schritt.Disable();
	_Winkel.Disable();

	m_pW = pW;
	m_cGenau = cGenau;
	_iOT = iOT;
	m_piAnz = piAnz;
	_pcFileName = NULL;
	_fAbst = NULL;
	_dZIndex = 0.;		// einstellbare Zeilennumerierung
	_dZuwachs = 1.;     // einstellbarer Zuwachs bei der Zeilennumerierung
	_Zuwachs.SetText ("1.0");
	_iAnzAbst = 0;
	_dSumAbst = 0.;
	_dSumAbst2 = 0.;
	_Vorz = true;		// Vorzeichen positiv
	_bSichtb = true;	// DialogBox ist sichtbar
}
#if defined (MSCC8)
#pragma warning (default: 4355)
#endif



// --------------------------------------------------------------------------------------------
// Destruktor
AbstandsWerte :: ~AbstandsWerte (void)
{
	if (_fAbst) fclose (_fAbst);
	DELETE_VEC (_pcFileName);
}


// --------------------------------------------------------------------------------------------
// �berpr�fung der Eingabe f�r Schrittweite und evtl. Winkel
void _ABSTAND_EXPORT AbstandsWerte :: EditChange (ControlEvt e)
{
	if (_iOT == OT_KANTE &&	// aktiviertes (blinkendes) Objekt ist eine Kante
	    m_piAnz[2] == 2 &&	// genau 2 Kanten selektiert (markiert)
	    m_piAnz[1] == 0 &&	// keine Fl�chen
	    m_piAnz[0] == 1 &&	// keine anderen Objekte selektiert (markiert)
	    _iSchritt > 0)		// Schrittweite eingegeben
		_Automatisch.Enable();	// Automatik-Button freigeben
	else
		_Automatisch.Disable();   
		
	switch ((uint) e.GetControlID())
	{
		case IDE_ERGEBNIS:
			ZIndexEinlesen();	// Zeilenindex aus der letzten Me�zeile bestimmen
			if (_Ergebnis.GetTextLen() > 0 && _pcFileName)
				_Speichern.Enable();
			else
				_Speichern.Disable();
			
			break;
			
		case IDE_SCHRITT:
			_iSchritt = SchrittEinlesen (&_Schritt);
			break;
			
		case IDE_WINKEL:
			if (_Winkel.GetValue (_dWinkel) == false)	// Eingabefeld f�r Winkel ist leer
				_dWinkel = -1000.;		// Merkmal f�r nicht vorhandene Winkelvorgabe
			break;
			
		case IDE_ZUWACHS:
			NumEditToDouble (&_Zuwachs, _dZuwachs);
			break;

		default:
			_ASSERTE (false);
			break;
	}			
} // EditChange


// --------------------------------------------------------------------------------------------
// Reaktion auf Button-Click
void _ABSTAND_EXPORT AbstandsWerte :: ButtonClick (ControlEvt e)
{
	switch ((uint) e.GetControlID())
	{
		// Speichern des Inhalts der _Ergebnis-Box
		case IDB_SPEICHERN:
			idb_speichern();
			break;

		// Vorzeichen f�r gemessene Abst�nde wechseln
		case IDB_VORZEICHEN:
			// Buttontext wechseln
			if (_Vorz)
				_Vorzeichen.SetText ("&Plus");
			else
				_Vorzeichen.SetText ("&Minus");
			_Vorz = !_Vorz;
			break;

		// L�schen der letzten angezeigten Me�zeile
		case IDB_LOESCHEN:
			idb_loeschen();
			break;

		// Mittelwert, Standardabweichung und Anzahl der Me�zeilen in _Ergebnis-Box ausgeben
		case IDB_STATISTIK:
			idb_statistik();
			break;

		// Dateiname f�r Speicherung einstellen
		case IDB_DATEI:
			idb_datei();
			break;
			
		// Abst�nde automatisch erzeugen
		case IDB_AUTOMAT:
			idb_automatisch();
			break;

		default:
			_ASSERTE (false);
			break;
	}
} // ButtonClick


// --------------------------------------------------------------------------------------------
// durch Bet�tigung des Systemmen�feldes wird Fenster verdeckt
BOOL _ABSTAND_EXPORT AbstandsWerte :: QueryClose (Event)
{
	_bSichtb = false;			// DialogBox ist verdeckt
	DEX_ChangeActiveTool (0);	// "Pfeil"-ToolButton aktivieren
	return true;
} // QueryClose


// --------------------------------------------------------------------------------------------
// Eingabe der Schrittweite
int AbstandsWerte :: SchrittEinlesen (NumEditX* pEingWert)
{
	_ASSERTE (NULL != pEingWert);

int iRet = -1;

	if (pEingWert -> GetTextLen() > 0)
	{
	char pcBuff [20];

		pEingWert -> GetText (pcBuff, sizeof(pcBuff));
		iRet = atoi (pcBuff);
		if (iRet == 0)
			iRet = -1;
	}
	return iRet;
} // SchrittEinlesen


// --------------------------------------------------------------------------------------------
// Abfrage des Zeilenindex in der letzten Me�zeile, da dieser Wert evtl. vom Anwender ge�ndert
// wurde
void AbstandsWerte :: ZIndexEinlesen (void)
{
char pcBuff [MESSZEILE];     // Puffer f�r letzte Me�zeile
uint iNumLin = _Ergebnis.GetNumLines();	// Anzahl der Zeilen in _Ergebnis-Puffer

	// letzte Zeile konvertieren (genauer: nur den Zeilenindex, da nach dem Komma
	// die Konvertierung gewollt abbricht); nach Ausgabe der ersten Zeile steht der
	// Zeilenz�hler iNumLin auf 2 (vermutlich wegen des noch ausgegebenen \r\n),
	// deshalb Subtraktion von 2 
	_Ergebnis.GetLine (iNumLin-2, pcBuff, sizeof(pcBuff));
	_dZIndex = atof (pcBuff);
} // ZIndexEinlesen

/*
// --------------------------------------------------------------------------------------------
// Eingabe eines double-Parameters
double AbstandsWerte :: DblParamEinlesen (DoubleNumEditX* pEingWert)
{
	_ASSERTE (pEingWert != NULL);

double dRet = -1.;

	if (pEingWert -> GetTextLen() > 0)
	{
	char pcBuff [20];

		pEingWert -> GetText (pcBuff, sizeof(pcBuff));
		dRet = atof (pcBuff);
	}
	return dRet;

} // DblParamEinlesen
*/

// --------------------------------------------------------------------------------------------
// Abstand in DialogBox eintragen
void AbstandsWerte :: AbstandEintragen (double dAbst)
{
char pcBuff [40];				// Konvertierungspuffer
char pcFormat [10] = "%8.0f";	// Format f�r Anzeige

	pcFormat [3] = m_cGenau;
	DtoA (pcBuff, pcFormat, dAbst);
	strcat (pcBuff, " m");			// "Meter" anf�gen
	_Abstand.SetText (pcBuff);
	_dAbst = dAbst;

} // AbstandEintragen


// --------------------------------------------------------------------------------------------
// Ergebnisse (Koordinaten des Anfangs- und Endpunktes sowie deren Abstand) in DialogBox
// eintragen
void AbstandsWerte :: ErgebnisEintragen (DoublePair AP, DoublePair EP, CoordTransX* pCT)
{
	_ASSERTE (NULL != pCT);

	if (! pCT) return;

char pcBuffer [MESSZEILE] = { '\0' };	// Konvertierungspuffer
char pcBuff [40] = { '\0' };			// Konvertierungspuffer

	pCT -> Transform (&AP.X(), &AP.Y());	// Umwandlung der Koordinaten aus ASC-Format
	pCT -> Transform (&EP.X(), &EP.Y());	//  in Real-Koordinaten

	_dZIndex += _dZuwachs;
	DtoA (pcBuff, "-%7.1f", _dZIndex);		// Zeilenindex
	strcat (pcBuffer, pcBuff);				// laufende Nummer
	strcat (pcBuffer, ",");					// Trennzeichen anf�gen
	pCT -> CoordTransToStringEx (AP.X(), AP.Y(), true, pcBuff, sizeof(pcBuff));
	strcat (pcBuffer, pcBuff);				// x-Koordinate des Anfangspunktes
	strcat (pcBuffer, ",");					// "Komma" als Trennzeichen anf�gen
	pCT -> CoordTransToStringEx (AP.X(), AP.Y(), false, pcBuff, sizeof(pcBuff));
	strcat (pcBuffer, pcBuff);				// y-Koordinate des Anfangspunktes
	strcat (pcBuffer, ",");
	pCT -> CoordTransToStringEx (EP.X(), EP.Y(), true, pcBuff, sizeof(pcBuff));
	strcat (pcBuffer, pcBuff);				// x-Koordinate des Endpunktes
	strcat (pcBuffer, ",");
	pCT -> CoordTransToStringEx (EP.X(), EP.Y(), false, pcBuff, sizeof(pcBuff));
	strcat (pcBuffer, pcBuff);				// y-Koordinate des Endpunktes
	strcat (pcBuffer, ",");

char pcFormat [10] = "-%8.0f";	// Format f�r Anzeige

	pcFormat [4] = m_cGenau;
//	DtoA (pcBuff, "-%8.0f", _dAbst);
	DtoA (pcBuff, pcFormat, _dAbst);
	if (_Vorz == false)
		strcat (pcBuffer, "-");				// negatives Vorzeichen
	strcat (pcBuffer, pcBuff);				// Abstand
	strcat (pcBuffer, "\r\n");				// abschlie�endes Zeilenende

int iTexLen = _Ergebnis.GetTextLen();

	// aus der Textl�nge die aktuelle Cursorposition (d.h. beide Parameter des
	// Selection-Objektes sind gleich) durch ChangeSelection aufbauen, um dort den neuen Text
	// mit ReplaceSelected anzuf�gen
	_Ergebnis.ChangeSelection (Selection (iTexLen, iTexLen));
                                 
    // Wenn Speichergr��e nicht mehr ausreicht, um den neuen Ergebnisse abzuspeichern,
    // wird etwa die H�lfte des Speichers automatisch ausgelagert
	if (iTexLen + strlen (pcBuffer) > lSpGr)
	{
		AutomatischSpeichern();
		iTexLen = _Ergebnis.GetTextLen();	// neue Textl�nge ermitteln
	}
	_Ergebnis.ChangeSelection (Selection (iTexLen, iTexLen));
	_Ergebnis.ReplaceSelected (pcBuffer);

	_iAnzAbst++;					// Anzahl der Abst�nde
	if (_Vorz)
		_dSumAbst += _dAbst;		// Summe der Abst�nde
	else
		_dSumAbst -= _dAbst;		// Summe der Abst�nde
	_dSumAbst2 += _dAbst * _dAbst;  // Summe der Abstandsquadrate

	if (_pcFileName) _Speichern.Enable();
	_Loeschen.Enable();
	if (_iAnzAbst >= 2)
		_Statistik.Enable();
} // ErgebnisEintragen


// --------------------------------------------------------------------------------------------
// Reaktion bei Bet�tigung des Speicher-Button
void AbstandsWerte :: idb_speichern (void)
{
int iTexLen = _Ergebnis.GetTextLen() + 1;
char* pcBuff = new char [iTexLen];

	if (! pcBuff)
	{
		DEX_Error (RC_abst_aus, EC_NOMEMORY);
		return;
	}

	_Ergebnis.GetText (pcBuff, iTexLen);
	if (_bSpForm)
	{
		remove (_pcFileName);    // evtl. alte Datei l�schen
		if (_fAbst) fclose (_fAbst);
		_fAbst = fopen (_pcFileName, "ab");
		_bSpForm = false;		// die weiteren Ergebnis-Ausgaben anh�ngen	
	}
	fprintf (_fAbst, "%s", pcBuff);
	_Ergebnis.SetText (NULL);
	_Ergebnis.Show();
	_Speichern.Disable();
	_Loeschen.Disable();
	_Abstand.SetText ("");	// Anzeige des Abstands l�schen
	DELETE_VEC (pcBuff);
} // idb_speichern


// --------------------------------------------------------------------------------------------
// Reaktion bei Bet�tigung des L�sch-Button
void AbstandsWerte :: idb_loeschen (void)
{
int iTexLen = _Ergebnis.GetTextLen();

	// Cursor auf das Ende der letzten Me�zeile setzen
	_Ergebnis.ChangeSelection (Selection(iTexLen-1, iTexLen-1));

// L�nge der Zeile, in der der Cursor steht (in diesem Fall der letzten Me�zeile) bestimmen und
// Anfangs- bzw. Endposition dieser Zeile f�r Selection s verwenden; GetLineLength() liefert
// eine um 2 zu kleine Zeilenl�nge; offenbar wird das Zeilenende \r\n nicht mitgez�hlt
uint uiLinLen = _Ergebnis.GetLineLength() + 2;
Selection s (iTexLen-uiLinLen, iTexLen);

	_Ergebnis.ChangeSelection (s);  // letzte Me�zeile selektieren
	if (_iAnzAbst > 0)
	{
	const int iPL = 40;
	char pcBuffer [MESSZEILE];	// Puffer f�r letzte Me�zeile
	char pcBuff [iPL];			// Puffer f�r Teil-Strings
	char* p;					// Hilfszeiger f�r Zerlegung der Me�zeile
	char trennz [] = ",";		// Trennzeichen f�r Zerlegung

		_Ergebnis.GetLine (-1, pcBuffer, uiLinLen);
		p = strtok (pcBuffer, trennz);    // 1. Teil-String gefunden
		while (p)
		{
			if ((p = strtok (NULL, trennz)) == NULL)	// n�chster Teil-String
				break;									// keinen weiteren Teil-String mehr gefunden
			_ASSERTE (strlen(p) < iPL);
			strcpy (pcBuff, p);
		}

	double dAbst = atof (pcBuff);

		_iAnzAbst--;
		// dAbst wird vorzeichenbehaftet aus _Ergebnis-Box zur�ckgeholt, deshalb ist bei der
		// Korrektur von _dSumAbst keine Fallunterscheidung bzgl. _Vorz notwendig
		_dSumAbst -= dAbst;
		_dSumAbst2 -= dAbst * dAbst;
	}
	_Ergebnis.DeleteSelected();    // selektierte Zeile l�schen
	_Ergebnis.LineUp();
	_dZIndex -= _dZuwachs;
	if (_Ergebnis.GetTextLen() == 0) _Speichern.Disable();
	if (_iAnzAbst == 0) _Loeschen.Disable();
	if (_iAnzAbst < 2) _Statistik.Disable();
} // idb_loeschen


// --------------------------------------------------------------------------------------------
// Reaktion bei Bet�tigung des Datei-Button
void AbstandsWerte :: idb_datei (void)
{
// Name der bisherigen Datei evtl. retten, um bei Auswahl einer neuen Datei diese noch
// zu schlie�en bzw. wenn "Abbrechen" gedr�ckt wurde, den Dateinamen zu rekonstruieren
char* pcFileNameOld = _pcFileName;

	// R�ckgabe von NULL, wenn bei Auswahl des Dateinamens "Abbrechen" gew�hlt wurde
	_pcFileName = DateiAuswaehlen (m_pW);
	if (_pcFileName)	// nicht "Abbrechen" gedr�ckt
	{
		// vor �ffnen einer neuen Datei eine evtl. schon ge�ffnete schlie�en
		if (pcFileNameOld)
		{
			fclose (_fAbst);
			_fAbst = NULL;
			pcFileNameOld = NULL;
		}
	
	char FName [_MAX_FNAME] = "";
	char Ext [_MAX_EXT] = "";
	char* pcBuffer = new char [MESSZEILE];

		if (! pcBuffer)
		{
			DEX_Error (RC_abst_aus, EC_NOMEMORY);
			return;
		}
		_fAbst = fopen (_pcFileName, "ab");

		// �berschrift der DialogBox durch Dateiname erg�nzen
		_splitpath (_pcFileName, NULL, NULL, FName, Ext);
		GetCaption (pcBuffer, MESSZEILE);

	// Trennzeichen ": " f�r Abtrennung eines evtl. schon eingetragenen Dateinamens suchen
	size_t len = strcspn (pcBuffer, ": ");

		pcBuffer[len] = '\0';
		strcat (pcBuffer, ": ");
		strcat (pcBuffer, strlwr (FName));
		strcat (pcBuffer, strlwr (Ext));
		SetCaption (pcBuffer);
		DELETE_VEC (pcBuffer);

		if (_Ergebnis.GetTextLen() > 0) // Speicher-Button freigeben, wenn
			_Speichern.Enable();		//  wenigstens 1 Me�zeile abgelegt ist
	}
	
	else			// "Abbrechen" wurde gedr�ckt, Dateinamen rekonstruieren
		_pcFileName = pcFileNameOld;
} // idb_datei


// --------------------------------------------------------------------------------------------
// Reaktion bei Bet�tigung des Statistik-Button
void AbstandsWerte :: idb_statistik (void)
{
char pcBuffer [MESSZEILE];	// Konvertierungspuffer
char pcBuff [40];			// Konvertierungspuffer
double dMW;					// Mittelwert
double dStAbw;				// Standardabweichung
char pcFormat [10] = "-%10.0f";	// Format f�r Anzeige

	pcFormat [5] = m_cGenau;
	strcpy (pcBuffer, "sum=");		
	DtoA (pcBuff, pcFormat, _dSumAbst);
	strcat (pcBuffer, pcBuff);        // Summe der Abst�nde
	if (_iAnzAbst > 0)
		dMW = _dSumAbst / _iAnzAbst;
	else
		dMW = 0.;
	if (_iAnzAbst > 1)
		dStAbw = sqrt ((_dSumAbst2 - _dSumAbst*_dSumAbst/_iAnzAbst) / (_iAnzAbst-1));
	else
		dStAbw = 0.;
	strcat (pcBuffer, ",m=");

	strcpy (pcFormat, "-%8.0f");	// Format f�r Anzeige
	pcFormat [4] = m_cGenau;
	DtoA (pcBuff, pcFormat, dMW);
	strcat (pcBuffer, pcBuff);		// Mittelwert
	strcat (pcBuffer, ",s=");
	DtoA (pcBuff, pcFormat, dStAbw);
	strcat (pcBuffer, pcBuff);		// Standardabweichung
	strcat (pcBuffer, ",n=");
	itoa (_iAnzAbst, pcBuff, 10);
	strcat (pcBuffer, pcBuff);		// Anzahl der Messungen
	strcat (pcBuffer, "\r\n");		// abschlie�endes Zeilenende

int iTexLen = _Ergebnis.GetTextLen();

	// aus der Textl�nge die aktuelle Cursorposition (d.h. beide Parameter des
	// Selection-Objektes sind gleich) durch ChangeSelection aufbauen, um dort den neuen Text
	// mit ReplaceSelected anzuf�gen
	_Ergebnis.ChangeSelection (Selection (iTexLen, iTexLen));
	if (iTexLen + strlen (pcBuffer) > lSpGr)
	{
		AutomatischSpeichern();
		iTexLen = _Ergebnis.GetTextLen();	// neue Textl�nge ermitteln
	}
	_Ergebnis.ChangeSelection (Selection (iTexLen, iTexLen));
	_Ergebnis.ReplaceSelected (pcBuffer);
	_iAnzAbst = 0;
	_dSumAbst = 0.;
	_dSumAbst2 = 0.;
	_Statistik.Disable();
	_Loeschen.Disable();
	if (_pcFileName) _Speichern.Enable();
} // idb_statistik


// --------------------------------------------------------------------------------------------
// Reaktion bei Bet�tigung des Automatik-Button
// Die Abst�nde zwischen 2 recherchierten Kanten werden automatisch erzeugt, gezeichnet und in
// die _Ergebnis-Box eingetragen. Ist nur die Schrittweite _Schritt gegeben, wird der k�rzeste
// Abstand von der aktivierten (blinkenden) zur selektierten (markierten) Kante gezogen. Ist
// neben der Schrittweit auch ein Winkel _Winkel vorgegeben, werden parallele Strecken mit dem
// Anstieg _Winkel (bezogen auf die Bildschirmunterkante) erzeugt.
bool AbstandsWerte :: idb_automatisch (void)
{
/*
ObjektGeometrie* pOG1 = ObjektGeometrie :: CreateInstance (lONr1);
ObjektGeometrie* pOG2 = ObjektGeometrie :: CreateInstance (lONr2);

	if (pOG1 == NULL || pOG2 == NULL) return false;

int iOT1 = pOG1 -> iObjTyp;	// Parameter der aktivierten (blinkenden) Kante
long lSPAnz1 = pOG1 -> lCnt;
KoOrd* pXK1 = (KoOrd*) pOG1 -> pdblX;
KoOrd* pYK1 = (KoOrd*) pOG1 -> pdblY;
long* plCnt1 = pOG1 -> plCnt;
int iOT2 = pOG2 -> iObjTyp;	// Parameter der 2. selektierten (markierten) Kante
long lSPAnz2 = pOG2 -> lCnt;
KoOrd* pXK2 = (KoOrd*) pOG2 -> pdblX;
KoOrd* pYK2 = (KoOrd*) pOG2 -> pdblY;
long* plCnt2 = pOG2 -> plCnt;

Kante Kt1 (pXK1, pYK1, lSPAnz1);
Kante Kt2 (pXK2, pYK2, lSPAnz2);

*/
	return true;
} // idb_automatisch


// --------------------------------------------------------------------------------------------
// obere H�lfte des Textes in der _Ergebnis-Box automatisch abspeichern, wenn
// neues Me�ergebnis wegen Speicher�berlauf nicht mehr abgespeichert werden kann
void AbstandsWerte :: AutomatischSpeichern (void)
{
ResString Capt (ResID (IDS_BOXCAPTION2, pRF), 30);
ResString Inhalt (ResID (IDS_BOXTEXT3, pRF), 80);
MessBox mb (Capt.Addr(), Inhalt.Addr(), this);

	mb.SetType (ExclamationIcon);
	mb.Show();
	while (_pcFileName == NULL) // noch keine Datei ausgew�hlt
		idb_datei();   // Datei ausw�hlen

int iTexLen = _Ergebnis.GetTextLen() + 1;

// L�nge des Textes, der automatisch in der Datei _pcFileName abgespeichert wird; zuerst wird
// von der H�lfte von iTexLen ausgegangen; um aber keine unvollst�ndigen Zeilen abzuspeichern,
// wird das letzte \n gesucht und die Textl�nge f�r die wirkliche Abspeicherung entsprechend
// verkleinert
int iNewTexLen = iTexLen/2;
char* pcBuffer = new char [iNewTexLen];

	if (! pcBuffer)
	{
		DEX_Error (RC_abst_aus, EC_NOMEMORY);
		return;
	}
	_Ergebnis.GetText (pcBuffer, iNewTexLen);
	while (pcBuffer [iNewTexLen] != '\n' && iNewTexLen > 0)
		iNewTexLen--;

	pcBuffer [iNewTexLen+1] = '\0';		// Abspeicherung der oberen H�lfte des bisherigen Textes
	if (_bSpForm)
	{
		remove (_pcFileName);    // evtl. alte Datei l�schen
		_fAbst = fopen (_pcFileName, "ab");
		_bSpForm = false;		// die weiteren Ergebnis-Ausgaben anh�ngen	
	}
	fprintf (_fAbst, "%s", pcBuffer);
	DELETE_VEC (pcBuffer);
	_Ergebnis.ChangeSelection (Selection (0, iNewTexLen+1));
	_Ergebnis.DeleteSelected();	// den soeben in Datei gespeicherten Text in der _Ergebnis-Box l�schen
} // AutomatischSpeichern
