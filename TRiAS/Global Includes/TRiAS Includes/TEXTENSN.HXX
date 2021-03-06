// Klassendeklarationen f�r eine Erweiterung f�r TRIAS(R) ---------------------
// File: TEXTENSN.HXX

#if !defined(_TEXTENSN_HXX)
#define _TEXTENSN_HXX

extern "C" HWND __hWndM;
extern "C" HINSTANCE hInstance;

// Funktionen, die vom Nutzer bereitgestellt werden m�ssen --------------------
class TriasExtension;

// Zeiger auf diese Erweiterung -----------------------------------------------
extern TriasExtension *pTE;

TriasExtension *NewExtension (TRIAS_LOAD *);
void DeleteExtension (TriasExtension *);

// Name des Hauptmodules ------------------------------------------------------
#if !defined(WIN16)
#if defined(_DEBUG)
#define TRIAS_MODULENAME	TEXT("TRIAS32D.EXE")
#else
#define TRIAS_MODULENAME	TEXT("TRIAS32.EXE")
#endif // _DEBUG
#else // WIN16
#define TRIAS_MODULENAME	TEXT("TRIAS.EXE")
#endif // WIN16

// WindowsVersion abfragen ----------------------------------------------------
// BasisKlasse f�r nutzerdefinierte Erweiterungen -----------------------------
class TriasExtension {
private:
_XTENSN_ENTRY friend LRESULT WINAPI TriasExtensionProc (HWND, UINT, WPARAM, LPARAM);

	HDEX _hDex;		// Handle dieser Erweiterung
	class Menu *_pLoadedMenu;	// gesamtes Menu
	HMENU _hPopUpMenu;	// zugeh�riges PopupMenu
	Menu *_pLoadedORMenu;	// Menu f�r ObjektFenster
	HMENU _hPopUpORMenu;	// dto.

	DEXCALLBACK _DefProc;	// Default-CallBack zu TRIAS(R)
	UINT _MenuOffset;	// in Trias verwendeter MenuOffset
	char *_pMenuEntry;	// Text f�r HauptMenu
	char *_pORMenuEntry;	// Text f�r ObjektMenu
	bool _isValid;		// Objekt ist ok
	class ResourceFile *_pRF;	// Verweis auf aktuellen ModuleNamen

	short m_iMode;		// aktueller LadeMode dieser Erweiterung
	
protected:
//
// virtuelle EventHandler, die in der nutzerdefinierten Erweiterung bei
// Bedarf �berladen werden k�nnen.
// Alle diese Funktionen sollten im Fehlerfall false (0) liefern, ansonsten
// einen von Null verschiedenen Wert (im allgemeinen true (1)).
//
// InitExtension() wird (einmalig) gerufen, wenn die Erweiterung erfolgreich 
// installiert worden ist und kann f�r die interne Initialisierung der
// Erweiterung verwendet werden
//
	virtual bool InitExtension (short iMode);
//
// UnLoadExtension() wird einmalig gerufen, unmittelbar bevor die Erweiterung
// freigegeben werden soll. An dieser Stelle sollten alle angeforderten
// Ressourcen innerhalb der Erweiterung freigegeben werden.
//
	virtual bool UnLoadExtension (void);
//
// MenuInit() wird gerufen, wenn das zu dieser Erweiterung geh�rende Menu vom
// Nutzer 'aufgeklappt' werden soll. An dieser Stelle k�nnen notwendige 
// (z.B. statusabh�ngige) Modifikationen des ErweiterungsMenu's erfolgen.
// Der erste Parameter enth�lt das Handle des aufgeklappten PopupMenus, der
// zweite Parameter ist 0 f�r das HauptMenu und enth�lt das FensterHandle des
// ORFensters bei einem PopupMenu des ORMenus
//
	virtual bool MenuInit (HMENU, HWND = 0);
//
// MenuSelect() wird gerufen, wenn der Nutzer einen der MenuPunkte des
// ErweiterungsMenus ausw�hlt. 
// Der �bergebene Parameter enth�lt den MenuItemID des ausgew�hlten 
// MenuPunktes (bereits ohne MenuOffset).
//
	virtual bool MenuSelect (WPARAM, HWND = 0);
//
// MenuCommand() wird gerufen, wenn der Nutzer im ErweiterungsMenu ein Befehl
// angeklickt wurde. Hier mu� die entsprechende Befehlsbearbeitung
// erfolgen. Der �bergebene Parameter enth�lt das in der MenuRessource
// definierte MenuItemID des angeklickten MenuPunktes (bereits ohne Offset).
// Der zweite Parameter gibt an, ob es sich um einen Befehl aus dem Haupt-
// Menu handelt.
//
	virtual bool MenuCommand (WPARAM, HWND = 0);
//
// Notification() wird gerufen, wenn eine von dieser Erweiterung angeforderte 
// NotifikationsMeldung erfolgt ist. Der erste Parameter enth�lt dabei die
// konkrete Meldung (MessageID) und der zweite Parameter einen meldungs-
// abh�ngigen Wert.
// Liefert Notification() den Wert Null, dann versucht TRIAS(R) diese 
// Notifikation noch an weitere (andere) Erweiterungen zu verschicken, wenn
// das angefordert wurde. Ist der R�ckgabewert ungleich Null, dann gilt diese
// Notifikation als behandelt und die Meldung wird nicht weiter verschickt.
//
	virtual LRESULT Notification (WPARAM, LPARAM);
//
// WindowsNotification() wird gerufen, wenn eine von der Erweiterung 
// angeforderte WindowsMessage (MausEvent o.�.) erfolgt ist. Die Parameter
// entsprechen dabei den von Windows �bergebenen. 
// F�r den R�ckgabewert gelten die gleichen Konditionen, wie f�r Notifcation().
//
	virtual LRESULT WindowsNotification (UINT, WPARAM, LPARAM);
//
// Dispatcher der eingehenden Messages. Diese Funktion kann �berladen werden,
// um eigene Messages abfangen zu k�nnen. Eine eigene Dispatch-Funktion sollte
// jedoch immer f�r alle nicht bearbeiteten Messages die Dispatch - Funktion
// des �bergeordneten Objektes rufen, damit eine normale Funktion der 
// Erweiterung gew�hrleistet ist.
//
	virtual LRESULT Dispatch (HWND hWnd, UINT wMsg, WPARAM wParam, LPARAM lParam);
//
// sonstige Memberfunktionen
	bool operator ! (void) { return !_isValid; }
	operator bool () { return !*this; }

	HMENU MenuHandle (void) { return _hPopUpMenu; }	// MenuHandle f�r Hauptmenu
	HMENU ORMenuHandle (void) { return _hPopUpORMenu; }	// MenuHandle f�r ORMenu
	char *MenuEntry (void) const { return _pMenuEntry; }	// Text f�r Hauptmenu
	char *ORMenuEntry (void) const { return _pORMenuEntry; }

	Menu *pExtMenu (void) const { return _pLoadedMenu; }	// CommonVu-Menu
	Menu *pExtORMenu (void) const { return _pLoadedORMenu; }

public:
// Konstruktor/Destruktor
		TriasExtension (UINT iMenuID = 0, UINT iORMenuID = 0);
	virtual ~TriasExtension (void);

// Handle dieser Erweiterung
	HDEX hDex (void) { return _hDex; }
	HWND hWnd (void) { return __hWndM; }			// Handle des Hauptfensters

// An-/Abmelden einer Notifikation von TRIAS(R)
	LRESULT RegisterNotification (UINT wMsg, bool = true);
	LRESULT UnRegisterNotification (UINT wMsg, bool = true);

	UINT InstallMenuItem (UINT iMenuID, UINT iMenuStr, bool iORMenu, short iPopupNum, short iMenuPos = -1);
	void RemoveMenuItem (UINT iMenuID, bool iORMenu, short iPopupNum);

	short InstallTool (ResID, const char *);
	void RemoveTool (short);

	HMENU EmptyMenu (void);
	HMENU EmptyORMenu (void);
 
	pWindow MWind (void);	// Hauptfenster in TRIAS(R) (C++ - Klasse)
	pWindow ORWind (HWND);	// RechWindow zu Handle suchen
	HWND GetActiveORWindow (void);	// derzeit aktives ORFenster liefern
	HelpDisplay *MainHD (void);

	ResourceFile &RF (void) { return *_pRF; }
	UINT MenuOffset (void) { return _MenuOffset; }		// MenuOffset in TRIAS(R)
	
	short LoadState (void) { return m_iMode; }
};

#endif // _TEXTENSN_HXX
