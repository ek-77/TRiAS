/*
Datei: GIZMOBAR.CXX

Das Modul stellt eine vereinfachte Schnittstelle zur Verwaltung einer
Toolbar bereit.

Erarbeitet: J. Benkenstein              Stand vom 26.1.1994
*/

extern "C" {
    #include <windows.h>
    #include <limits.h>         //  USHRT_MAX
    #include <memory.h>         //  memset ()
    #include <bttncur.h>        //  Standard-Resourcen-Defines
    #include <gizmobar.h>       //  API-Funktionen

    #include <protos.h>         //  DELETE ()
}

#include <commonvu.hxx>

#include "gizmobar.hxx"         // zugeh. Header

extern "C" {
inline HBITMAP LoadBitmapC (HINSTANCE hInst, uint BitmapID) {
    return LoadBitmap (hInst, MAKEINTRESOURCE (BitmapID));
}
}   // extern "C"

//  CGizmoBar ---------------------------------------------------------------
CGizmoBar :: CGizmoBar (HINSTANCE hInst) {
//  "ungef�hrliche" init.
    _hInst = hInst;
    _pTDD = NULL;
    _hWnd = NULL;
    _hBmp = NULL;
    _GizmoCnt = 0;
}

// Initialisierung:
// Erzeuge die Toolbar in der client area des Parents unterhalb der Caption
// �ber die vollst�ndige Breite des Fensters
Bool CGizmoBar :: Init (pWindow pParent,         // Elternfenster
		       uint GizmoBarID) {       // child window id
//  pr�fe Parameter
    HWND hWndp = (HWND) pParent -> Handle ();
    if (! hWndp || ! _hInst)
	return False;

//  TOOLDISPLAYDATA anlegen
    if (! (_pTDD = new TOOLDISPLAYDATA)) {
	return False;
    }
    memset (_pTDD, 0, sizeof (TOOLDISPLAYDATA));

//  get button display information
    if (! UIToolConfigureForDisplay (_pTDD)) {
	DELETE (_pTDD);
	return False;
    }

//  GizmoBar-Fenster erzeugen
    RECT rc;
    GetClientRect (hWndp, &rc);
    _hWnd = CreateWindow (CLASS_GIZMOBAR, GIZMOBAR_NAME, WS_CHILD | WS_VISIBLE,
			  0, 0, rc.right - rc.left, _pTDD -> cyBar,
			  hWndp, GizmoBarID, _hInst, NULL);
    if (! _hWnd) {
	DELETE (_pTDD);
	return False;
    }

//  verbinde GizmoBar mit parent window
    GBHwndAssociateSet (_hWnd, hWndp);

    return True;
}

//  Erzeugen eines Objektes
CGizmoBar *CGizmoBar :: CreateGizmoBar (HINSTANCE hInst,
				      pWindow pParent,    // Elternfenster
				      uint GizmoBarID) {  // child window id
     CGizmoBar *pGB = new CGizmoBar (hInst);
     if (! pGB)
	return NULL;

//  weitere init.
    if  (! pGB -> Init (pParent, GizmoBarID)) {
	DELETE (pGB);               // wenn Fehler bei Init.
	return NULL;
    }

    return pGB;
}

//  alle Objekte freigeben
CGizmoBar :: ~ CGizmoBar (void) {
    if (_hBmp)
	DeleteObject (_hBmp);
    DELETE (_pTDD);
    if (_hWnd && IsWindow (_hWnd))
	DestroyWindow (_hWnd);
}

//  Funktionen f�r den Zugriff auf die Toolbar -----------------------------
//  GizmoBar in seiner Breite ver�ndern
Bool CGizmoBar :: ReSize (uint NewWidth) {
    return _pTDD && _hWnd ? SetWindowPos (_hWnd, NULL, 0, 0, NewWidth,
			    _pTDD -> cyBar, SWP_NOMOVE | SWP_NOZORDER)
			  : False;
}

uint CGizmoBar :: Height (void) {
    return _pTDD ? _pTDD -> cyBar : 0;
}

//  GizmoBar "verstecken"
Bool CGizmoBar :: Hide (void) {
//  pr�fe Parameter
    if (! _hWnd)
	return False;

    ShowWindow (_hWnd, SW_HIDE);
    return True;
}

//  GizmoBar darstellen
Bool CGizmoBar :: Show (void) {
//  pr�fe Parameter
    if (! _hWnd)
	return False;

    ShowWindow (_hWnd, SW_SHOWNORMAL);
    return True;
}

//  H�he einer Bitmap
uint CGizmoBar :: BitmapHeight (void) {
    return _pTDD ? _pTDD -> cxImage : 0;
}

//  Breite einer Bitmap
uint CGizmoBar :: BitmapWidth (void) {
    return _pTDD ? _pTDD -> cyImage : 0;
}

//  Aufl�sung lesen
uint CGizmoBar :: DotsPerInch (void) {
    return _pTDD ? _pTDD -> uDPI : 0;
}

// BitmapDatei laden:
// BitmapID + 0 --> Size 720
// BitmapID + 1 --> Size 960
// BitmapID + 2 --> Size 1200
Bool CGizmoBar :: ReadBitmap (uint BitmapID) {
//  pr�fe Parameter
    if (! _hInst || !_pTDD)
	return False;

    if (_pTDD -> uDPI == 96)
	BitmapID++;
    else {
	if (_pTDD -> uDPI == 120)
	    BitmapID += 2;
    }

//  ggf. alte Bitmap freigeben
    if (_hBmp)
	DeleteObject (_hBmp);

    if (! (_hBmp = LoadBitmapC (_hInst, BitmapID)))
	return False;

    return True;
}

//  Gizmo erzeugen
Bool CGizmoBar :: _CreateGizmo (uint Ident,	    // ID f�r Anwendung
				uint Type,          // Typ
				uint BitmapIndex,   // Index der Bitmap in Datei
				pchar pText,        // Text
				uint Width,         // Breite
				uint Height,        // H�he
				uint State) {       // Init.- Zustand
//  pr�fe interne Parameter
    if ((BitmapIndex != USHRT_MAX && ! _hBmp) || ! _pTDD || ! _hWnd)
	return False;

//  Neuzeichnen unterbinden
    SendMessage (_hWnd, WM_SETREDRAW, FALSE, 0L);

    Bool Ret = GBGizmoAdd (_hWnd, Type, _GizmoCnt++, Ident,
			   Width > 0 ? Width : _pTDD -> cxButton,
			   Height > 0 ? Height : _pTDD -> cyButton, pText,
			   BitmapIndex != USHRT_MAX ? _hBmp : NULL,
			   BitmapIndex != USHRT_MAX ? BitmapIndex : 0, State);

//  Neuzeichnen
    if (Ret) SendMessage (_hWnd, WM_SETREDRAW, TRUE, 0L);

    return Ret;
}

// "Normalen" Button laden und anzeigen
Bool CGizmoBar :: CreateTextButton (uint Ident,		// f�r die Applikation
				    pchar pButtText ,	// Button-Text
				    uint Width,		// Button-Breite
				    uint Height,	// Button-H�he
				    uint State) {	// Init.- Zustand
    return _CreateGizmo (Ident, GIZMOTYPE_BUTTONNORMAL, USHRT_MAX,
			 pButtText, Width, Height, State);
}

// Command-Button laden und anzeigen
Bool CGizmoBar :: CreateCommandButton (uint Ident,	// f�r die Applikation
				       uint BitmapIndex,// Index des Buttons
				       uint Width,	// Breite
				       uint Height,	// H�he
				       uint State) {	// Init.- Zustand
    return _CreateGizmo (Ident, GIZMOTYPE_BUTTONCOMMAND, BitmapIndex,
			 NULL, Width, Height, State);
}

// Status-Button erzeugen
Bool CGizmoBar :: CreateStateButton (uint Ident,	// f�r die Applikation
				     uint BitmapIndex,	// Index des Buttons
				     uint Width,	// Breite
				     uint Height,	// H�he
				     uint State) {	// Init.- Zustand
    return _CreateGizmo (Ident, GIZMOTYPE_BUTTONATTRIBUTEIN, BitmapIndex,
			 NULL, Width, Height, State);
}

// Gruppen-Button erzeugen
Bool CGizmoBar :: CreateGroupButton (uint Ident,	// f�r die Applikation
				     uint BitmapIndex,	// Index des Buttons
				     uint Width,	// Breite
				     uint Height,	// H�he
				     uint State) {	// Init.- Zustand
    return _CreateGizmo (Ident, GIZMOTYPE_BUTTONATTRIBUTEEX, BitmapIndex,
			 NULL, Width, Height, State);
}

Bool CGizmoBar :: CreateSeparator (uint Ident, uint Width) {
    return _CreateGizmo (Ident, GIZMOTYPE_SEPARATOR, USHRT_MAX, NULL,
			 Width, 0, GIZMO_NORMAL);
}

// Textfeld erzeugen
Bool CGizmoBar :: CreateTextField (uint Ident,	// Ident f�r die Anwendung
				   pchar pText, // notwendiger Textwert
				   uint Width,	// Breite/H�he des
				   uint Height,	// Feldes
				   uint State) {// Init.- Zustand
    return pText && *pText ? _CreateGizmo (Ident, GIZMOTYPE_TEXT, USHRT_MAX, pText,
			    Width, Height, State)
			   : False;
}

//  Edit-Feld erzeugen
Bool CGizmoBar :: CreateEditField (uint Ident,	// Ident f�r die Anwendung
				   pchar pText, // voreingestellter Textwert
				   uint Width,	// Breite/H�he des
				   uint Height,	// Feldes
				   uint State) {// Init.- Zustand
    return _CreateGizmo (Ident, GIZMOTYPE_EDIT, USHRT_MAX, pText, Width,
			 Height, State);
}

// ListBox erzeugen
Bool CGizmoBar :: CreateListBox (uint Ident,	// Ident f�r die Anwendung
				 uint Width,	// Breite/H�he
				 uint Height,	// der ListBox
				 uint State) {	// Init.- Zustand
    return _CreateGizmo (Ident, GIZMOTYPE_LISTBOX, USHRT_MAX, NULL,
			 Width, Height, State);
}

// ComboBox erzeugen
Bool CGizmoBar :: CreateComboBox (uint Ident,	// Ident f�r die Anwendung
				  uint Width,	// Breite/H�he
				  uint Height,	// der ListBox
				  uint State) { // Init.- Zustand
    return _CreateGizmo (Ident, GIZMOTYPE_COMBOBOX, USHRT_MAX, NULL,
			 Width, Height, State);
}

//  Funktionen f�r die Manipulation einer ListBox/ComboBox ------------------
//  Return: Index von pText in ListBox
short CGizmoBar :: ComboBoxAddString (uint Ident, pchar pText) {
    return _hWnd && pText ? GBGizmoSendMessage (_hWnd, Ident,
			    CB_ADDSTRING, 0, (LPARAM) pText)
			  : -1;
}

// bei Fehler -1
short CGizmoBar :: ComboBoxDelString (uint Ident, uint Index) {
    return _hWnd ? GBGizmoSendMessage (_hWnd, Ident, CB_DELETESTRING,
		   (WPARAM) Index, 0L)
		 : -1;
}

short CGizmoBar :: ComboBoxGetCurrentIndex (uint Ident) {
    return _hWnd ? GBGizmoSendMessage (_hWnd, Ident, CB_GETCURSEL,
				       0, 0L)
		 : -1;
}

// Return: neuer Index, bei Fehler -1
short CGizmoBar :: ComboBoxChangeCurrentIndex (uint Ident, uint NewIndex) {
    return _hWnd ? GBGizmoSendMessage (_hWnd, Ident, CB_SETCURSEL,
				       NewIndex, 0L)
		 : -1;
}

short CGizmoBar :: ComboBoxGetStringLen (uint Ident, uint Index) {
    return _hWnd ? GBGizmoSendMessage (_hWnd, Ident, CB_GETLBTEXTLEN, Index,
				       0L)
		 : -1;
}

//  Return: Anzahl gelesener Zeichen, bei Fehler -1
short CGizmoBar :: ComboBoxGetString (uint Ident, uint Index, pchar pBuff) {
    return _hWnd && pBuff ? GBGizmoSendMessage (_hWnd, Ident, CB_GETLBTEXT,
						Index, (LPARAM) pBuff)
			  : -1;
}

//  alle S�tze in ComboBox l�schen, bei Fehler -1
short CGizmoBar :: ComboBoxClear (uint Ident) {
    return _hWnd ? GBGizmoSendMessage (_hWnd, Ident, CB_RESETCONTENT, 0, 0L)
		 : -1;
}

short CGizmoBar :: ComboBoxGetCount (uint Ident) {
    return _hWnd ? GBGizmoSendMessage (_hWnd, Ident, CB_GETCOUNT, 0, 0L)
		 : -1;
}

//  Funktionen f�r die Manipulation eines Edit-Feldes -----------------------
short CGizmoBar :: EditFieldSetText (uint Ident, pchar pText) {
    return _hWnd && pText ? GBGizmoSendMessage (_hWnd, Ident, WM_SETTEXT,
						0, (LPARAM) pText)
			  : -1;
}

//  BuffLen: max. L�nge (einschl. \'0') der zu kopierenden Zeichen
short CGizmoBar :: EditFieldGetText (uint Ident, pchar pBuff, uint BuffLen) {
    return _hWnd && pBuff && BuffLen ? GBGizmoSendMessage  (_hWnd, Ident,
				       WM_GETTEXT, (WPARAM) BuffLen, (LPARAM) pBuff)
				     : -1;
}

short CGizmoBar :: EditFieldGetTextLen (uint Ident) {
    return _hWnd ? GBGizmoSendMessage (_hWnd, Ident, EM_LINELENGTH,
				       0, 0L)
		 : -1;
}

short CGizmoBar :: EditFieldSetTextLimit (uint Ident, uint MaxLen) {
    return _hWnd ? GBGizmoSendMessage (_hWnd, Ident, EM_LIMITTEXT,
		   (WPARAM) MaxLen, 0L)
		 : -1;
}

short CGizmoBar :: EditFieldisModified (uint Ident) {
    return _hWnd ? GBGizmoSendMessage (_hWnd, Ident, EM_GETMODIFY, 0, 0L)
		 : -1;
}

//  Funktionen f�r den Zugriff auf ein einzelnes "Gizmo" --------------------
uint CGizmoBar :: ButtonHeight (void) {
    return _pTDD ? _pTDD -> cyButton : 0;
}

uint CGizmoBar :: ButtonWidth (void) {
    return _pTDD ? _pTDD -> cxButton : 0;
}

//  Gizmo "verstecken"
Bool CGizmoBar :: HideGizmo (uint Ident) {
    return _hWnd ? GBGizmoShow (_hWnd, Ident, False) : False;
}

//  Gizmo wieder suchtbar machen
Bool CGizmoBar :: ShowGizmo (uint Ident) {
    return _hWnd ? GBGizmoShow (_hWnd, Ident, True) : False;
}

// Gizmo entfernen
Bool CGizmoBar :: RemoveGizmo (uint Ident) {
    return _hWnd ? GBGizmoRemove (_hWnd, Ident) : False;
}

//  Gizmo erlauben
void CGizmoBar :: EnableGizmo (uint Ident) {
   if (_hWnd)
	GBGizmoEnable (_hWnd, Ident, True);
}

// Gizmo disabeln
void CGizmoBar :: DisableGizmo (uint Ident) {
   if (_hWnd)
	GBGizmoEnable (_hWnd, Ident, False);
}

// "checks" ein Attribute-Button
Bool CGizmoBar :: CheckAttributeButton (uint Ident) {
    return _hWnd ? GBGizmoCheck (_hWnd, Ident, True) : False;
}

// "unchecks" ein Attribute-Button
Bool CGizmoBar :: UnCheckAttributeButton (uint Ident) {
    return _hWnd ? GBGizmoCheck (_hWnd, Ident, False) : False;
}

// Focus setzen,
// Attribute- und Command-Buttons k�nnen Focus nicht erhalten
Bool CGizmoBar :: GizmoSetFocus (uint Ident) {
    return _hWnd ? GBGizmoFocusSet (_hWnd, Ident) : False;
}

// True, wenn Gizmo vorhanden
Bool CGizmoBar :: GizmoExist (uint Ident) {
    return _hWnd ? GBGizmoExist (_hWnd, Ident) : False;
}

// GIZMOTYPE_* wenn gef., sonst -1
int CGizmoBar :: GizmoGetType (uint Ident) {
    return _hWnd ? GBGizmoTypeGet (_hWnd, Ident) : -1;
}

// an ein Gizmo ein DWORD anh�ngen, return: der vorige Wert
DWORD CGizmoBar :: GizmoSetData (uint Ident, DWORD dwGizmoInfo) {
    return _hWnd ? GBGizmoDataSet (_hWnd, Ident, dwGizmoInfo) : 0;
}

DWORD CGizmoBar :: GizmoGetData (uint Ident) {
    return _hWnd ? GBGizmoDataGet (_hWnd, Ident) : 0;
}

//  Benachrichtigung setzen/r�cksetzen
Bool CGizmoBar :: GizmoSetNotify (uint Ident, Bool Notify) {
    return _hWnd ? GBGizmoNotifySet (_hWnd, Ident, Notify) : False;
}

//  Benachrichtigung lesen
Bool CGizmoBar :: GizmoGetNotify (uint Ident) {
    return _hWnd ? GBGizmoNotifyGet (_hWnd, Ident) : False;
}

// folgende 4 Funktionen sind auf Command/Attribute-Button nicht anwendbar
// Text setzen
Bool CGizmoBar :: GizmoSetText (uint Ident, pchar pText) {
    if (! _hWnd || ! pText || ! *pText)
	return False;

    GBGizmoTextSet (_hWnd, Ident, pText);
    return True;
}

// Text eines Gizmos in Puffer lesen, return: Anzahl gelesener Zeichen
int CGizmoBar :: GizmoGetText (uint Ident, pchar pBuffer, uint BufferSize) {
    return ! _hWnd || ! pBuffer || ! BufferSize ? False :
			GBGizmoTextGet (_hWnd, Ident, pBuffer, BufferSize);
}

//  Ziffer in einem Gizmo setzen,
//  Signed = True --> Vorzeichen ist negativ
Bool CGizmoBar :: GizmoSetInt (uint Ident, uint Value, Bool Signed) {
    if (! _hWnd)
	return False;

    GBGizmoIntSet (_hWnd, Ident, Value, Signed);
    return True;
}

// Ziffer von einem Gizmo lesen, pRetFlag --> Ergebnis der Konvertierung,
// Signed --> Vorzeichen, Return bei Fehler 0
uint CGizmoBar :: GizmoGetInt (uint Ident, Bool *pRetFlag, Bool Signed) {
    if (! _hWnd) {
	*pRetFlag = False;
	return 0;
    }

    return GBGizmoIntGet (_hWnd, Ident, pRetFlag, Signed);
}

//  Nachricht an Gizmo senden, bei Fehler -1
//  Separatoren, Command/Attribute-Buttons akzeptieren keine Message
LRESULT CGizmoBar :: GizmoSendMessage (UINT Ident, UINT iMsg,
					  WPARAM wParam, LPARAM lParam) {
    return _hWnd ? GBGizmoSendMessage (_hWnd, Ident, iMsg, wParam, lParam)
		 : -1;
}
