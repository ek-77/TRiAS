// Typ- und Konstantendefinitionen f�r die ErweiterungsSchnittstelle von TRIAS
// File: XTENSION.H
// @doc
// @module XTENSION.H | Enth�lt die Definitionen aller Messages von und an <tr>
// die die eigentliche Programmierschnittstelle ausmachen.<nl>Ferner sind alle
// 'C'-Strukturen und Konstanten definiert, die f�r die Messages ben�tigt werden.
// @topic Die Programmierschnittstelle von TRiAS(R) | Die Programmier-Schnittstelle 
// von <tr> besteht im wesentlichen aus 
// zwei Typen von Messages. Zum einen welchen, die von Erweiterungen an das 
// Hauptfenster von <tr> geschickt werden um bestimmte Aktionen auszul�sen. 
// Die Struktur aller dieser Messages ist identisch. Als wParam wird eine Konstante 
// �bergeben, die festlegt, welche Aktion durch <tr> ausgef�hrt werden soll. 
// Der Inhalt von lParam ist spezifisch f�r die konkrete Message und ist zumeist ein 
// Pointer auf eine Datenstruktur, welche ihrerseits alle notwendigen Informationen 
// enth�lt.<nl>Zum anderen sind es Messages von <tr> an eine Erweiterung, die zur 
// richtigen Einbindung der Erweiterung in die Nutzeroberfl�che dient <tpc Notifikationen>.

#if !defined(_XTENSION_H)
#define _XTENSION_H

#if defined(__cplusplus)
extern "C" {
#endif

#include <pshpack1.h>

// Name des Hauptmodules ------------------------------------------------------
#undef TRIASMODULE
#if defined(WIN32)
#if defined(_DEBUG)
#define TRIAS_MODULENAME	TEXT("TRIAS32D.EXE")
#else
#define TRIAS_MODULENAME	TEXT("TRIAS32.EXE")
#endif // _DEBUG
#else // WIN32
#define TRIAS_MODULENAME	TEXT("TRIAS.EXE")
#endif // WIN32

// MenuPositionen im HauptMenu
#define PROJECT_MENU_POS	0	// Projekt
#define EDIT_MENU_POS		1	// Bearbeiten
#define THEMA_MENU_POS		2	// Thematik
#define OBJCLASS_MENU_POS	3	// Objektklassen
#define VIEW_MENU_POS		4	// Anzeige
#define EXTRA_MENU_POS		5	// Extras

// MenuPositionen in RechereFenstern
#define OR_EDIT_MENU_POS	0	// Bearbeiten
#define OR_OBJECT_MENU_POS	1	// Aktionen
#define OR_EXTRA_MENU_POS	2	// Extras

// ProjectHandle -------------------------------------------------------------
#if defined(MSWIND) || defined(_WINDOWS)
#if !defined(_DEFINED_HPROJECT)
#define _DEFINED_HPROJECT
DECLARE_HANDLE(HPROJECT);
#define HACTPROJECT		((HPROJECT)(-1))		// bezieht sich auf Projekt
#define HACTCONNECTION	((HPROJECT)(NULL))		// bezieht sich auf aktuelle Datenquelle
#endif
#else
#define HPROJECT int
#endif

// Strukturen, die bei der Kommunikation mit der Nutzer-DLL verwendet werden --
#if defined(__cplusplus)
const short DEX_MENUNAMELEN 		= 40;
const short DEX_FIRSTMENUOFFSET 	= 10000;
const short DEX_MENUOFFSETDELTA 	= 110;
#else
#define DEX_MENUNAMELEN		40
#define DEX_FIRSTMENUOFFSET	10000
#define DEX_MENUOFFSETDELTA	110
#endif

// Messages -------------------------------------------------------------------

// @msg DEX_LOADEXTENSION | Diese Message wird von <tr> einmalig an eine 
// Erweiterung geschickt, wenn diese geladen wird. 
// @comm Diese Message mu� von einer Erweiterung behandelt werden.
// Die Erweiterung mu� an dieser Stelle initialisiert werden. Au�erdem kann
// ein Handle auf die Menu's der Erweiterung, sowie im Hauptmenu und im Menu der
// Objektrecherchefenster anzuzeigende Menutexte zur�ck �bergeben werden. An dieser
// Stelle ist es noch nicht m�glich die programmierschnittstelle von <tr> zu 
// nutzen, da die Erweiterung noch nicht vollst�ndig im System installiert ist. 
// Diese Message wird gefolgt von <m DEX_INITEXTENSION>, welche f�r die vollst�ndige
// Initialisierung der Erweiterung genutzt werden kann.
// <nl>Die Implementation der Standard-Basisklasse <c CTriasExtension> behandelt 
// diese Message.
//
// @parm TRIASLOADEX *	| pTL | lParam enth�lt einen Pointer auf eine Struktur vom
// Typ <t TRIASLOADEX>, welche weitere Parameter und Felder f�r R�ckkehrwerte enth�lt.
// @rdesc Liefert einen <t ErrCode> der folgenden Werte:
// @flag EC_OKAY	| Erweiterung wurde erfolgreich geladen
// @flag EC_NOMEMORY	| Hauptspeicher nicht ausreichend
// @flag EC_ILLPARS	| Parameterfehler (�bergebener Parameter ist NULL)
// @xref <c CTriasExtension>, <m DEX_INITEXTENSION>, <t TRIASLOADEX>, <t ErrCode>
const short DEX_LOADEXTENSION 		= 100;

// @msg DEX_UNLOADEXTENSION | Diese Message wird von <tr> einmalig an eine 
// Erweiterung geschickt, wenn diese freigegeben werden soll. 
// @comm Diese Message mu� von einer Erweiterung behandelt werden.
// An dieser Stelle mu� der gesamte von der Erweiterung angeforderte
// Speicher freigegeben, sowie sonstige Aufr�umarbeiten durchgef�hrt werden.<nl>Die 
// Implementation der Standard-Basisklasse <c CTriasExtension> behandelt diese
// Message.
//
// @rdesc Liefert einen <t BOOL>- Wert:
// @flag true	| Erweiterung wurde erfolgreich entladen
// @flag false	| Es ist ein fehler bei der Freigabe der Erweiterung aufgetreten
// @xref <c CTriasExtension>
const short DEX_UNLOADEXTENSION 	= 101;

// @msg DEX_MENUINIT | Diese Message wird von <tr> an eine Erweiterung verschickt, 
// wenn f�r einen Menupunkt dieser Erweiterung die Windows-Message <m WM_INITMENUPOPUP>
// empfangen wurde.
// @comm An dieser Stelle k�nnen Befehle zur Menuinitialisierung des Menus der
// Erweiterung durchgef�hrt werden (ENABLE/DISABLE/GRAY etc.).
// <nl>Die Implementation der Standard-Basisklasse <c CTriasExtension> leitet diese
// Message an die Funktion <mf CTriasExtension::MenuInit> weiter.
//
// @rdesc Eine Erweiterung sollte <t true> liefern, wenn diese Message
// bearbeitet wird, ansonsten <t false>.
// @parm HMENU	| hMenu | wParam enth�lt das Handle des zu behandelnden Popupmenus.
// @parm HWND	| hWnd	| HIWORD(lParam) enth�lt das Handle des Recherche-Fensters
// in dem das Popupmenu initialisiert werden soll. Ist ein Popupmenu des Hauptfensters
// zu initialisieren, dann ist dieser Parameter NULL.
// @xref <c CTriasExtension>, <mf CTriasExtension::MenuInit>
const short DEX_MENUINIT 		= 102;

// @msg DEX_INITEXTENSION | Diese Message ist die eigentliche Fertigmeldung von 
// <tr> an eine Erweiterung, die ausgel�st wird, wenn die 
// Erweiterung erfolgreich im System installiert ist. 
// @comm An dieser Stelle sollte die gesamte Initialisierung der Erweiterung 
// erfolgen. So k�nnen beispielsweise Speicherressourcen angefordert werden oder
// Notifikationsanforderungen an <tr> abgesetzt werden. Alle an 
// dieser Stelle angeforderten Ressourcen bzw. Notifikationen sollten
// sp�testens w�hrend der Bearbeitung der Meldung <m DEX_UNLOADEXTENSION>
// wieder freigegeben werden.
// <nl>Die Implementation der Standard-Basisklasse <c CTriasExtension> leitet diese
// Message an die Funktion <mf CTriasExtension::InitExtension> weiter.
//
// @parm short | iInitMode | wParam enth�lt den Mode in dem die Erweiterung
// geladen wird. Er kann folgende Werte annehmen:
// @flag LENoLoad	| Die Erweiterung soll nicht geladen werden
// @flag LEInitOnly	| Die Erweiterung soll lediglich initialisiert werden. Es
// darf kein Nutzerinterface installiert werden (z.B. zus�tzliche Menupunkte).
// @flag LEFullLoad	| Die Erweiterung soll vollst�ndig initialisiert werden. 
// Das Nutzerinterface darf installiert werden.
// @xref <c CTriasExtension>, <mf CTriasExtension::InitExtension>, <m DEX_UNLOADEXTENSION>
const short DEX_INITEXTENSION		= 103;

// @msg DEX_ENUMEXTENSIONPROP | Diese Message wird von <tr> an eine Erweiterung 
// geschickt, um Informationen �ber die von dieser Erweiterung installierten 
// Objekteigenschaften zu erhalten.
// <nl>Die Implementation der Standard-Basisklasse <c CObjectpropertyExtension> 
// bearbeitet diese Message vollst�ndig.
// @parm ENUMOBJPROPDATA * | pEnumObjPropData | lParam enth�lt einen Pointer auf
// eine Struktur vom Typ <t ENUMOBJPROPDATA>.
// @rdesc Eine Erweiterung sollte <t true> liefern, wenn diese Message
// bearbeitet wird, ansonsten <t false>.
// @xref <c CObjectpropertyExtension>, <t ENUMOBJPROPDATA>
const short DEX_ENUMEXTENSIONPROP	= 104;	// ObjPropMessages

// @msg DEX_INVOKEOBJPROPFUNC | Diese Message wird von <tr> an eine Erweiterung 
// geschickt, um eine von dieser Erweiterung installierte Objekteigenschaft
// f�r ein vorgegebenes Objekt zu berechnen.
// <nl>Die Implementation der Standard-Basisklasse <c CObjectpropertyExtension> 
// leitet diese Message an die durch die Erweiterung f�r diese Objekteigenschaft
// installierte Funktion <mf ObjProp::InvokeFunc> weiter, die ihrerseits die 
// geforderte Funktion ausf�hren mu�.
// @parm INVOKEOBJPROPDATA * | pInvokeObjPropData | lParam enth�lt einen Pointer auf
// eine Struktur vom Typ <t INVOKEOBJPROPDATA>.
// @rdesc Eine Erweiterung sollte <t true> liefern, wenn diese Message
// bearbeitet wird, ansonsten <t false>.
// @xref <c CObjectpropertyExtension>, <t INVOKEOBJPROPDATA>, <c ObjProp>, 
// <mf ObjProp::InvokeFunc> 
const short DEX_INVOKEOBJPROPFUNC	= 105;

const short DEX_MENUITEMINSTALL		= 106;	// MenuItem einh�ngen
const short DEX_MENUITEMREMOVE		= 107;
const short DEX_TOOLINSTALL		= 108;	// Werkzeug einh�ngen
const short DEX_TOOLREMOVE		= 109;

const short DEX_SHOWMAINWINDOW		= 110;	// Fenster anzeigen/nicht anzeigen
const short DEX_HIDEMAINWINDOW		= 111;

const short DEX_SERVERISCLOSING		= 112;	// TRIAS wird geschlossen
const short DEX_SERVERCLOSED		= 113;	// TRIAS wurde geschlossen
 
const short DEX_CAPABILITIES 		= 150;
const short DEXCAP_OBJPROPFUNCS		= 1;	// kann ObjPropFuncs
const short DEXCAP_NOTLOADED 		= 2;	// noch nicht geladen
const short DEXCAP_CLASSPROPFUNCS	= 3;	// kann ClassPropFuncs

const short DEX_OBJPROPGETHELPTEXT	= 113;

const short DEX_QUERYMAINWINDOWVISIBLE	= 114;	// Fenster angezeigt
const short DEX_QUITAPP			= 115;	// Trias schlie�en
const short DEX_QUERYDEFAULTDATAPATH	= 116;	// Setzen/Abfragen des aktuellen StandardProjektPfades
const short DEX_MODDEFAULTDATAPATH	= 117;

const short DEX_GETLASTIDENT		= 118;	// letzter verwendeter Ident bei neuen Objekten
const short DEX_SETLASTIDENT		= 119;

const short DEX_CHANGINGOBJECT		= 120;	// Notifikationen
const short DEX_OBJECTCHANGED		= 121;
const short DEX_QUERYINTERACTIVE	= 122;	// Interactive-Flag abfragen

// Messages der Extension an Diris --------------------------------------------
// allgemeine Anfragen (common Queries) ---------------------------------------
/* ok */const short DEX_QUERYACTIVEPROJECT	= 200;	// aktuelles Projekt
/* ok */const short DEX_QUERYMAINININAME	= 201;	// zentrale INI-Datei 
// 202 belegt
/* ok */const short DEX_QUERYACTIVESIGHT	= 203;	// aktuelle Sicht
/* ok */const short DEX_QUERYACTIVEDQLNAME	= 204;	// aktuellen DQL-ScriptFileNamen

// obsolete - nicht mehr verwenden
/* ok */const short DEX_QUERYACTIVEOBJECT	= 205;	// das selektierte Objekt
/* ok */const short DEX_QUERYCNTACTIVEOBJECTS	= 206;	// Anzahl der selektierten Objekte
/* ok */const short DEX_QUERYALLACTIVEOBJECTS	= 207;	// Alle Selektierten Objekte liefern
/* ok */const short DEX_QUERYCNTRECHERCHEDOBJECTS = 208;	// Anzahl der Recherchierten Objekte
/* ok */const short DEX_QUERYGEODBVERSION	= 209;	// GeoDBVersion anfordern

// Objektbezogene Anfragen (object oriented queries) --------------------------
/* ok */const short DEX_QUERYOBJIDENT		= 210;	// Identifikator eines Objektes
/* ok */const short DEX_QUERYOBJMERKMAL		= 211;	// ein bestimmtes Objektmerkmal
/* ok */const short DEX_QUERYOBJGEOMETRIE	= 212;	// ObjektGeometrie/ObjektListe bei KomplexObjekten
/* ok */const short DEX_QUERYIDENTVISINFO	= 213;	// VisualisierungsInfo 
/* ok */const short DEX_QUERYOBJTYPE		= 214;	// ObjektTyp
/* ok */const short DEX_QUERYOBJCONTAINER	= 215;	// ObjektContainer
/* ok */const short DEX_QUERYKOBJECTRCODE	= 216;	// RelationsCode in KObjekt
/* ok */const short DEX_QUERYOBJCOLOR		= 217;	// ObjektFarbe
/* ok */const short DEX_QUERYOBJSTATISTIK	= 218;	// diverse ObjektEigenschaften
/* intern */const short DEX_QUERYTEXTMERKMAL	= 219;

// Notifications an Diris -----------------------------------------------------
const short DEX_NOTIFYPROJINICHANGED	= 220;	// Projekt-INIDatei ge�ndert
const short DEX_NOTIFYMAININICHANGED	= 221;	// zentrale INI-Datei ge�ndert

// Modifikationsanforderungen an Diris ----------------------------------------
/* ok */const short DEX_MODOBJIDENT		= 230;	// Ident eines Objektes �ndern
/* ok */const short DEX_MODIFYMERKMAL		= 231;	// Merkmal an Objekt/Ident/Sicht modifizieren
/* ok */const short DEX_MODIFYOBJGEOMETRIE	= 232;	// Objektgeometrie modifizieren
/* ok */const short DEX_MODIFYIDENTVISINFO	= 233;	// ObjektVisInfo moddifizieren
/* ok */const short DEX_MERGEKOBJECTS		= 234;	// KomplexObjekte zusammenfassen
/* ok */const short DEX_ADDNEWIDENT		= 235;	// Neuen Ident aufnehmen
/* ok */const short DEX_USEDIDENT		= 236;	// testen, ob Ident benutzt ist
/* ok */const short DEX_DELOBJECT		= 237;	// Objekt l�schen
const short DEX_USEDIDENTSIGHT		= 238;	// Ident geh�rt zur Sicht
/* ok */const short DEX_DELETEOBJFROMKOBJECT	= 239;	// Objekt aus KO herausl�sen

// Sonstige Befehle an Diris --------------------------------------------------
/* ok */const short DEX_REPAINTALL		= 240;	// gesamten Bildschirm neu zeichnen
/* ok */const short DEX_REPAINTRECT		= 241;	// Rechteck neu zeichnen
/* ok */const short DEX_REBUILDVIEW		= 248;	// Sicht neu generieren

/* ok */const short DEX_DQLQUERYFILE		= 242;	// DQLRecherche aus Datei ausf�hren
/* ok */const short DEX_DQLQUERYBUFFER		= 243;	// DQLRecherche aus Buffer ausf�hren
/* ok */const short DEX_DQLQUERYCLIPBOARD	= 244;	// DQLRecherche aus ClipBoard ausf�hren

/* ok */const short DEX_SELNEWSIGHT		= 245;	// Sicht wechseln
/* ok */const short DEX_SIGHTTOSELECT		= 246;	// Sicht soll gewechselt werden

/* ok */const short DEX_MODIFYVISINFODIALOG	= 247;	// VI �ber Dialog Einstellen

/* 248 belegt */
/* ok */const short DEX_CREATEOBJEKTINFO	= 249;	// ObjRechFenster aufmachen

// Enumeration-Anforderungen an Diris -----------------------------------------
/* ok */const short DEX_ENUMALLSIGHTS	= 250;	// alle Sichten liefern
/* ok */const short DEX_ENUMSIGHTOBJECTS = 251;	// alle (Einzel-)Objekte einer Sicht
/* ok */const short DEX_ENUMVIEWIDENTS	= 252;	// alle Identifikatoren einer Sicht
/* ok */const short DEX_ENUMMERKMALE	= 253;	// alle Merkmale eines Objektes
/* ok */const short DEX_ENUMSELECTEDOBJECTS = 254; // alle recherchierten Objekte
/* ok */const short DEX_ENUMKOMPLOBJECTS = 255;	// alle Teilobjekte eines Komplexobjektes
/* ok */const short DEX_ENUMIDENTOBJS	= 256;	// alle Objekte mit einem Identifikator
/* ok */const short DEX_RECHERCHEDOBJECTS 	= 257;	// alle Objekte in Recherchefenstern
/* ok */const short DEX_ENUMALLIDENTS	= 258;	// Enumeration aller Identifikatoren der DB
/* ok */const short DEX_ENUMALLMCODES	= 259;	// alle MCodes einer GeoDB

// Rechercheanforderungen/Enumeration -----------------------------------------
/* ok */const short DEX_ENUMTEXTMERKMALRECH	= 290;	// Objekte �ber TextMerkmal suchen
const short DEX_ENUMRECHGEOMETRIE	= 291;	// Objekte �ber Geometrie suchen

// Projektbezogenen Befehle ---------------------------------------------------
/* ok */const short DEX_PROJECTOPEN	= 260;	// Projekt er�ffnen
const short DEX_OPENPROJECTRO		= 261;	// Projekt $RO er�ffnen
/* ok */const short DEX_PROJECTCLOSE	= 262;	// Projekt schlie�en
/* ok */const short DEX_FLUSHALLMODIFICATIONS = 263;	// aktuellen Zustand speichern
const short DEX_ENUMOBJRECHWNDS		= 264;	// ORFenster enumerieren

// Befehle an den ObjektBaum --------------------------------------------------
/* intern */const short DEX_SETATTRIBUTES	= 270;	// Zeichenattribute setzen
/* intern */const short DEX_RESETATTRIBUTES	= 271;	// Zeichenattribute r�cksetzen

/* ok */const short DEX_OBJECTTODELETE		= 272;	// Objekt soll gel�scht werden
/* ok */const short DEX_ENUMIDENTSSELECTED	= 273;	// Enumeration aller Identifikatoren der DB

// PBDVerwaltung --------------------------------------------------------------
/* ok */const short DEX_QUERYACTIVEPBD	= 202;	// aktuellen PBD-Namen liefern
/* ok */const short DEX_QUERYPBDDATA	= 280;	// PBDDaten abfragen
/* ok */const short DEX_MODPBDDATA	= 281;	// PBDDaten modifizieren
/* ok */const short DEX_DELPBDDATA	= 282;	// PBDSatz l�schen
/* ok */const short DEX_MODIFYPBDNAME	= 283;	// neuen PBD-Namen setzen
/* ok */const short DEX_QUERYPBDVERSION	= 284;	// VersionsNummer der IDTDB.DBS

/* intern */const short DEX_BEGINPBDTRANSACTION	= 285;	// interne Transaktionsverwaltung
/* intern */const short DEX_BREAKPBDTRANSACTION	= 286;
/* intern */const short DEX_ENDPBDTRANSACTION	= 287;

/* ok */const short DEX_ENUMPBDDATA	= 288;

// SystemMeldungen ------------------------------------------------------------
/* ok */const short DEX_SETERROR		= 300;	// Fehler aufgetreten
/* ok */const short DEX_ERRORMESSAGE		= 301;	// Fehlermeldungen zuleiten/verschicken
/* ok */const short DEX_ERRINSTALL		= 302;	// FehlerBehandlung setzen
/* ok */const short DEX_EXTERRINSTALL		= 303;	// Erweiterte FehlerBehandlung setzen

const short DEX_OBJECTSELECTED		= 310;	// Objekt wurde selektiert
const short DEX_OBJECTUNSELECTED	= 311;	// Objekt wurde deselektiert

const short DEX_SIGHTSELECTED		= 312;	// Sicht wurde aktiviert

// @nfy DEX_DRAWIDENT | Wird verschickt, um zu erfragen, ob in der aktuellen Sicht
// Objekte des gegebenen Identifikators von einer Erweiterung in besonderer Form
// behandelt werden. 
// @parm long | lIdent | lParam enth�lt den zu behandelnden Identifikator.
// @rdesc Eine Erweiterung kann mit folgenden Werten antworten:
// @flag DT_Normal | Objekte dieses Identifikators sollen normal (von <tr>) gezeichnet
// werden. Die Erweiterung wird diese Objekte nicht beeinflussen.
// @flag DT_HasNewVI | Die Erweiterung wird einzelne oder alle Objekte dieses 
// Identifikators durch die Vorgabe einer neuen Visualisierungsinformation (Farbe, 
// Zeichentyp, Gr��e etc.) beeinflussen. Die eigentliche Darstellung wird auch f�r
// die beeinflu�ten Objekte durch <tr> vorgenommen.
// @flag DT_WillDrawComplete | Die Erweiterung �bernimmt vollst�ndig die Darstellung
// einzelner oder aller Objekte dieses Identifikators.
// @comm Diese Notifikation wird f�r jede Sicht genau einmal f�r jeden in dieser Sicht
// darzustellenden Identifikator gerufen. Die dabei gesammelte Information wird f�r
// alle nachfolgenden Darstellungsoperationen in dieser Sicht verwendet.
const short DEX_DRAWIDENT		= 313;		// Identifikator wird gezeichnet
const short DEX_DRAWIDENTEX		= 446;		// Identifikator wird gezeichnet (neu)

#if defined(WIN32)
const short DEX_GOTOBJWNDFOCUS		= 314;	// ORFenster-Fokus erhalten
const short DEX_LOSTOBJWNDFOCUS		= 337;	// ORFenster-Fokus verloren
#else
const short DEX_OBJWNDFOCUSCHANGED	= 314;	// ORFenster-FokusWechsel
#endif
const short DEX_OBJWNDCLOSED		= 315;	// Objektfenster geschlossen

// Typen beim Objektzeichnen
const short DT_Normal 		= 0x00;
const short DT_HasNewVI 	= 0x01;
const short DT_WillDrawComplete = 0x02;
const short DT_NoDrawing	= 0x04;
const short DT_DrawingMask 	= 0x07;

const short DT_CustomVisualisation	= 0x10;	// Objektbezogene Visualisierung

// Reaktion einer Erweiterung auf DEX_DRAWOBJECT
const short DO_UnChanged	= 0x0000;		// nichts ver�ndert
const short DO_StyleChanged	= 0x0100;
const short DO_PrimColorChanged = 0x0200;
const short DO_SecColorChanged	= 0x0400;
const short DO_ColorChanged	= 0x0600;
const short DO_SizeChanged	= 0x0800;
const short DO_NameChanged	= 0x1000;
const short DO_PriorityChanged	= 0x2000;
const short DO_OthersChanged	= 0x4000;		// sonstiges 
const short DO_VisInfoChanged	= 0x7F00;
const short DO_Tagged		= short(0x8000);	// Kennzeichen gesetzt

const short DF_Normal		= 0x00;
const short DF_Blinking		= 0x01;		// es wird geblinkt
const short DF_Analyze		= 0x02;
const short DF_Export		= 0x04;		// es wird exportiert
const short DF_ShowHidden	= 0x08;		// ausgeblendete Objekte anzeigen

const short DF_ForceImport	= 0x40;		// auf jeden Fall importieren
const short DF_HSBModel		= 0x80;		// HSB verwenden

// @nfy DEX_DRAWOBJECT | Wird f�r jedes Objekt verschickt, f�r dessen Identifikator
// eine Erweiterung einen anderen Wert als <t DT_Normal> geliefert hat. Die 
// betreffende Erweiterung kann w�hrend der Bearbeitung dieser Notifikation die 
// f�r dieses Objekt notwendigen Darstellungsoperationen durchf�hren (<n DEX_DRAWIDENT> 
// wurde mit <t DT_WillDrawComplete> beantwortet) bzw. die notwendigen Ver�nderungen
// der Darstellungsattribute vornehmen (<n DEX_DRAWIDENT> wurde mit <t DT_HasNewVI> 
// beantwortet).
// @parm DRAWOBJECT | pDrawObject | lParam enth�lt einen Pointer auf eine Struktur
// vom Typ <t DRAWOBJECT>.
// @rdesc Eine Erweiterung kann mit folgenden Werten bzw. deren Kombination antworten:
// @flag DO_UnChanged | Die Darstellungattribute f�r dieses Objekt wurden nicht modifiziert.
// @flag DO_StyleChanged | Der Darstellungstyp dieses Objektes wurde modifiziert.
// @flag DO_PrimColorChanged | Der prim�re Farbwert dieses Objektes wurde modifiziert.
// @flag DO_SecColorChanged | Der sekund�re Farbwert dieses Objektes wurde modifiziert.
// @flag DO_SizeChanged | Die Darstellunggr��e dieses Objektes wurde modifiziert.
// @flag DO_NameChanged | Der Darstellungsname dieses Objektes wurde modifiziert.
// @flag DO_OthersChanged | Es wurden andere Darstellungsattribute dieses Objektes modifiziert
// (z.B. Schriftattribute wie kursiv, Rahmen etc.).
// @flag DT_NoDrawing | Die Darstellung des Objektes wurde vollst�ndig durch die 
// Erweiterung erledigt. Dieses Flag kann verwendet werden, wenn ein Objekt nicht
// dargestellt werden soll. Ist dieses Flag gesetzt, wird das betreffende Objekt von <tr> 
// nicht dargestellt.
// @comm Die Darstellungs-Priorit�t eines Objektes l��t sich nicht ver�ndern.
// @xref <n DEX_DRAWIDENT>, <t DRAWOBJECT>, <t DT_Normal>, <t DT_HasNewVI>, <t DT_WillDrawComplete>
const short DEX_DRAWOBJECT		= 316;	// Objekt wird gezeichnet
const short DEX_OBJECTACTIVATED		= 317;	// Objekt aktivieren

const short DEX_PAINTTOPLAYER		= 318;	// TopLayer zeichnen

const short DEX_PROJECTCLOSEEX		= 319;	// bestimmte GeoDB schlie�en
const short DEX_QUERYOPENPROJECTS	= 320;	// Anzahl der ge�ffneten Projekte liefern

const short DEX_QUERYVIEWDESCRIPTION	= 321;	// SichtBeschreibung abfragen
const short DEX_MODVIEWDESCRIPTION	= 322;	// SichtBeschreibung setzen

const short DEX_OBJECTDEACTIVATED	= 323;	// Objekt wurde deaktiviert
const short DEX_CANCELMODE		= 324;	// Blinken abschalten/erlauben

const short DEX_QUERYPROJECTCONT	= 325;	// GeoDBContainer liefern
const short DEX_QUERYOBJECTNAME		= 326;	// Objektnamen abfragen
const short DEX_SETOBJECTNAME		= 327;	// ObjektNamen setzen/l�schen

const short DEX_DIAGNOSTICSENABLE	= 328;	// Diagnostics ein-/ausschalten

const short DEX_ENUMMERKMALEEX		= 329;	// Merkmale enumerieren mit zus�tzlichen Optionen
const short DEX_ENUMMERKMALEIDENTEX	= 330;
const short DEX_ENUMMERKMALESICHTEX	= 331;

const short DEX_ENUMIDENTOBJSEX		= 332;	// Objekte nach Ident/OTyp enumerieren

const short DEX_QUERYUNKNOWNIDENT	= 333;	// Identifikator f�r unbekannte ObjektKlasse besorgen
const short DEX_FINDOBJFROMNAME		= 334;	// Objektnummer �ber Objektnamen finden
const short DEX_QUERYOBJNAMEMCODE	= 335;	// Liefert Merkmalscode des Objektnamens f�r Ident.
const short DEX_QUERYUNIQUEIDENTMCODE	= 336;	// Liefert MCode f�r UniqueIdents.
//337 belegt

const short DEX_HEADERREREAD		= 338;	// Header neu einlesen

const short DEX_FINDIDENTFROMNAME	= 339;	// Ident �ber KlassenNamen suchen
const short DEX_DELETEIDENT		= 340;	// Alle Objekte eines Idents l�schen
const short DEX_VIEWCREATE		= 341;	// Leere Sicht erzeugen
const short DEX_DELETEIDENTFROMVIEW	= 342;	// Ident/ObjektTyp aus Sicht l�schen
const short DEX_VIEWRENAME		= 343;	// Sicht umbenennen
const short DEX_HASVIEWIDENT		= 344;	// geh�rt Ident/ObjektTyp zur Sicht ?
const short DEX_HASVIEWOBJECT		= 345;	// geh�rt Objekt zur Sicht ?
const short DEX_IDENTADDTOVIEW		= 346;	// Ident zu Sicht hinzuf�gen (mit defaultfarben)
const short DEX_VIEWCREATEOPT		= 347;	// Leere Sicht erzeugen, wenn noch nicht da
const short DEX_HASPROJECTVIEW		= 348;	// Testet, ob Sicht existiert

const short DEX_IDENTTODELETE		= 349;	// Ident soll gel�scht werden
const short DEX_VIEWCREATED		= 350;	// Sicht wurde erzeugt

const short DEX_QUERYADMINMODE		= 351;	// AdminModeFlag abfragen
const short DEX_SETADMINMODE		= 352;	// AdminModeFlag setzen

#if defined(WIN32)
const short DEX_ADDUNDOREDOITEM		= 353;	// LPUNDOREDO registrieren
const short DEX_UNDOLEVELBEGIN		= 354;	// komplexes Undo starten
const short DEX_UNDOLEVELEND		= 355;	// komplexes Undo beenden
const short DEX_UNDOLEVELCANCEL		= 356;	// komplexes Undo abbrechen
#endif // WIN32

const short DEX_INITIALIZEDSERVER	= 357;	// Server fertig initialisiert
const short DEX_HANDLEEMBEDDING		= 358;	// /Embedding behandeln ?
const short DEX_HANDLEAUTOMATION	= 359;	// /Automation behandeln ?

const short DEX_RECHOBJECTSTATUS	= 360;	// liefert ObjektStatus in ORFenster
const short DEX_DELOBJECTEX		= 361;	// Objekt l�schen mit Undo
const short DEX_GETSELECTEDTYPES	= 362;	// liefert selektierte Objekttypen aus ORFenster

const short DEX_RCTOOC			= 363;	// RealKoordinaten zu DBKoords
const short DEX_OCTORC			= 364;	// DBKoords zu RealKoordinaten

const short DEX_ISOBJWINDOW		= 365;	// Test ob ORFenster
const short DEX_OBJECTREPAINT		= 366;	// Objekt draufmalen

const short DEX_ENUMIDENTVIEWSEX	= 367;	// alle Sichten, in denen Ident vertreten ist

const short DEX_MODIFYINGIDENT		= 368;	// Notification: Ident soll modifiziert werden
const short DEX_IDENTWASMODIFIED	= 369;	// Notification: Ident wurde modifiziert

const short DEX_ACTIVATEALLORWNDS	= 370;	// alle selektierten Objekte neu selektieren
const short DEX_ENUMALLMCODESEX		= 371;	// alle MCodes einer GeoDB mit Optionen
const short DEX_FINDFEATUREFROMNAME	= 372;	// MCode �ber MerkmalsKurztext suchen

const short DEX_COORDFORMATWASCHANGED	= 373;	// Coord-Format wurde ge�ndert

const short DEX_SETGEODBDIRTY		= 374;	// GeoDB wurd emodifiziert

const short DEX_BEGINDIALOG		= 375;	// modaler Dialog wurde erzeugt
const short DEX_ENDDIALOG		= 376;	// modaler Dialog wurde zerlegt

const short DEX_ENUMALLPROJECTS		= 377;	// alle ge�ffneten Projekte enumerieren
const short DEX_PROJECTHANDLEFROMNAME	= 378;	// liefert f�r Project das HPROJECT-Handle
const short DEX_PROJECTMAKEACTIVE	= 379;	// macht das gegebene projekt zum aktiven

const short DEX_ENUMSELECTEDOBJECTSEX	= 380;	// alle recherchierten Objekte mit Objekttyp
const short DEX_QUERYIDENTOBJTYPESACTVIEW = 381;	// ObjektTypen f�r Ident in dieser Sicht liefern

const short DEX_N_SCROLLING_HORZ		= 382;	// es soll horizontal gescrollt werden
const short DEX_N_SCROLLING_VERT		= 383;	// es soll vertikal gescrollt werden

const short DEX_ATTACHPRETRANSLATEMSGPROC = 384;
const short DEX_ATTACHIDLEPROC			= 385;

const short DEX_CAPTIONREREAD			= 386;	// Caption neu generieren
const short DEX_QUERYACTIVEVIEWWINDOW	= 387;	// Liefert HWND des aktuellen Projektes

const short DEX_N_VIEWCREATED			= 388;	// View ist jetzt sichtbar
const short DEX_MODOBJIDENTEX			= 389;	// Ident eines Objektes �ndern (mit Undo)
const short DEX_QUERYOBJECTPROPS		= 390;	// Liefert Interface der OPropListe

const short DEX_GETGEODBDIRTY			= 391;	// Abfrage, ob GeoDB gespeichert werden mu�
const short DEX_QUERYCANUNDO			= 392;	// Undo ist m�glich
const short DEX_QUERYCANREDO			= 393;	// Redo ist m�glicn

const short DEX_MODACTVIEWCONTAINER		= 394;	// SichtContainer setzen
const short DEX_QUERYACTVIEWCONTAINER	= 395;	// SichtCOntainer abfragen

const short DEX_N_EXTENSIONSLOADED		= 396;	// Alle Erweiterungen fertig geladen
const short DEX_FINDIDENTFROMNAMECI		= 397;	// Ident �ber KlassenNamen suchen (case insensitive)
const short DEX_FINDFEATUREFROMNAMECI	= 398;	// MCode �ber MerkmalsKurztext suchen (case insensitive)
const short DEX_SETSTRINGMESSAGE		= 399;	// Text in Statusbar setzen

// Messages zur OLE-Unterst�tzung ---------------------------------------------
/* ok */const short DEX_QUERYPROJECTSTORAGE	= 400;
/* ok */const short DEX_QUERYACTIVEPALETTE	= 401;
const short DEX_N_SAVESAMESTORAGE		= 402;		// f�r IPersistStorage
const short DEX_N_SAVEOTHERSTORAGE		= 403;
const short DEX_N_SAVECOMPLETED			= 404;
const short DEX_N_HANDSOFFSTORAGE		= 405;
const short DEX_N_TIPOFTHEDAY			= 406;

const short DEX_N_PRINTINGPROJECT		= 407;
const short DEX_N_PROJECTPRINTED		= 408;
const short DEX_N_SCALINGCHANGED		= 409;
const short DEX_SETACTSCALING			= 410;
const short DEX_N_PROJECTTOCLOSE		= 411;
const short DEX_N_SHOWTOOLTIPS			= 412;
const short DEX_CANCTFCONFIG			= 413;
const short DEX_KICKIDLELOOP			= 414;		// IdleLoop rufen
const short DEX_ACTIVEPROJECTTEST		= 415;		// DEX_QUERYACTIVEPROJECT, aber nur testen
const short DEX_ERASEVIEWCANVAS			= 416;		// View l�schen

const short DEX_QUERYOBJECTCOUNT		= 417;		// Statistikwerte abfragen
const short DEX_QUERYCLASSCOUNT			= 418;
const short DEX_QUERYVIEWCOUNT			= 419;
const short DEX_HOLDZOOMSET				= 420;		// HoldZoomStatus
const short DEX_QUERYHOLDZOOM			= 421;
const short DEX_QUERYCLIPOBJECT			= 422;
const short DEX_CLIPOBJECTSET			= 423;
const short DEX_QUERYACTIVEPROJECTHANDLE	= 424;
const short DEX_PROJECTNAMEFROMHANDLE	= 425;
const short DEX_SHOWOBJPROP				= 426;
const short DEX_PROJECTOPENEX			= 427;
const short DEX_PUTTEXTOBJECTTEXT		= 428;
const short DEX_N_RENAMINGFILE			= 429;
const short DEX_N_FILERENAMED			= 430;
const short DEX_IDENTFROMCLASS			= 431;
const short DEX_CLASSFROMIDENT			= 432;
const short DEX_MODOBJCLASSCODE			= 433;
const short DEX_GETSHOWOBJPROP			= 434;
const short DEX_REPLACEOBJECTINLIST		= 435;
const short DEX_SETTEXT					= 436;
const short DEX_N_ADDEDOBJECTPROPERTY	= 437;
const short DEX_N_ADDEDCLASSPROPERTY	= 438;
const short DEX_N_REMOVEDOBJECTPROPERTY	= 439;
const short DEX_N_REMOVEDCLASSPROPERTY	= 440;
const short DEX_QUERYTRIASVERSION		= 441;
const short DEX_QUERYTRIASCAPTION		= 442;
const short DEX_MODIFYTRIASCAPTION		= 443;
const short DEX_SETSTRINGMESSAGENOKICKIDLE		= 444;	// Text in Statusbar setzen
const short DEX_N_SHOWPROJECTWIZARD		= 445;
// 446 belegt (DEX_DRAWIDENTEX)
const short DEX_N_SCRIPTINGENGINEACTIVE	= 447;
const short DEX_N_UIREADY				= 448;
const short DEX_N_VIEWDELETED			= 449;
const short DEX_QUERYIDENTPRIORITY		= 450;
const short DEX_MODIFYIDENTPRIORITY		= 451;
const short DEX_QUERYACTOBJPROP			= 452;
const short DEX_QUERYOVERVIEWACTIVE		= 453;
const short DEX_QUERYCOMPATIBILITYMODE	= 454;
const short DEX_N_ENABLECOOLLOOK		= 455;
const short DEX_N_OBJECTSPLITTED		= 456;		// #WM970814
const short DEX_N_TODELETEOBJECT		= 457;		// Objekt wird jetzt (wirklich) gel�scht
const short DEX_N_OBJECTCREATED			= 458;		// #WM970822
const short DEX_OVERVIEWSAVE			= 459;
const short DEX_QUERYIDENTOBJECTCOUNT	= 460;
const short DEX_QUERYOBJECTGUID			= 461;
const short DEX_FINDOBJECTGUID			= 462;
const short DEX_SETOBJECTGUID			= 463;
const short DEX_SETACTIVEORWINDOW		= 464;

const short DEX_QUERYSTARTVIEW			= 465;		// AnfangsAnsicht setzen/abfragen
const short DEX_MODIFYSTARTVIEW			= 466;

const short DEX_ADDOBJECTTOLISTEX		= 467;
const short DEX_REMOVEOBJECTFROMLISTEX	= 468;
const short DEX_REPLACEOBJECTINLISTEX	= 469;
const short DEX_QUERYPROJECTDESC		= 470;

const short DEX_N_REREADOBJPROPS		= 471;
const short DEX_QUERYMRUITEM			= 472;
const short DEX_DELETEMRUITEM			= 473;
const short DEX_ADDMRUITEM				= 474;

const short DEX_QUERYACTIVEPROJECTPTR	= 475;

const short DEX_ENUMEXTENSIONS			= 476;
const short DEX_QUERYEXTENSIONINFO		= 477;
const short DEX_QUERYEXTENSIONPTR		= 478;

const short DEX_N_MODIFYMERKMAL			= 479;	// Merkmal an Objekt modifiziert
const short DEX_QUERYPREVENTREPAINT		= 480;
const short DEX_PREVENTREPAINT			= 481;

const short DEX_QUERYACTASPECTRATIO		= 482;	// Isotropiekoeffizient

const short DEX_QUERYIDENTSCALEDATA		= 483;
const short DEX_MODIFYIDENTSCALEDATA	= 484;
const short DEX_TESTIDENTSCALETOPAINT	= 485;

const short DEX_QUERYOLDUNIQUEIDENTMCODE	= 486;	// Liefert MCode f�r urspr�ngliche UniqueIdents.

const short DEX_SETHAVETOINITOPFS		= 487;
const short DEX_QUERYMUSTINITOPFS		= 488;

const short DEX_QUERYTRIASVERSIONLONG	= 489;

// other stuff
/* ok */const short DEX_MODIFYHEADER		= 500;	// GeoDBHeader modifizieren
/* ok */const short DEX_READHEADER 		= 501;	// GeoDBHeader lesen
/* ok */const short DEX_DELETEHEADER		= 502;	// Eintrag in GeoDBHeader l�schen
/* ok */const short DEX_GETUNIQUEICODE		= 503;	// UniqueICode liefern
/* ok */const short DEX_GETUNIQUEMCODE		= 504;	// UniqueMCode liefern
/* ok */const short DEX_GETUNIQUERCODE		= 505;	// UniqueRCode liefern

/* ok */const short DEX_QUERYACTSCALING		= 506;	// aktuellen Darstellungskoeffizienten liefern
/* ok */const short DEX_GETUNIQUETEMPON		= 507;	// UniqueTempObjNr liefern

/* ok */const short DEX_QUERYACTIVEORWINDOW	= 508;	// aktives ORFensterHandle liefern
/* ok */const short DEX_CHANGEACTIVECOLOR	= 509;	// SelektionsFarbe eines Objektes �ndern

const short DEX_USEDMCODE		= 510;	// MCode verwendet
const short DEX_USEDRCODE		= 511;	// RCode verwendet

const short DEX_QUERYOBJSTATUS		= 512;	// ObjektStatus liefern
// gelieferter ObjektStatus
#define OSUnknown	-1
#define OSNormal	 0
#define OSTemp		 1
#define OSInvalid	 2
#define OSModified	 4

/* ok */const short DEX_QUERYACTSIGHTCONTAINER 	= 513;	// aktuellen Ausschnitt abfragen
/* ok */const short DEX_SETACTSIGHTCONTAINER	= 514;	// Ausschnitt einstellen

/* ok */const short DEX_TXICHANGED		= 515;	// PBD wurde modifiziert
/* ok */const short DEX_TXMCHANGED		= 516;	// PBD wurde modifiziert
/* ok */const short DEX_TXRCHANGED		= 517;	// PBD wurde modifiziert

/* ok */const short DEX_QUERYACTMASSTAB		= 518;	// Bezugs-/Darstellungma�stab
/* ok */const short DEX_QUERYDRAWINGSTATUS	= 519;	// Abfrage, ob derzeit gezeichnet wird
/* ok */const short DEX_SETNEWPALETTE		= 520;	// Palette zur Erweiterung rumreichen
/* ok */const short DEX_ERASEBKGND		= 521;	// Hintergrund zeichnen

/* ok */const short DEX_DCTOOC			= 522;	// DCtoOC
/* ok */const short DEX_OCTODC			= 523;	// OCtoDC

/* ok */const short DEX_QUERYACTIVETOOL		= 524;
/* ok */const short DEX_SETACTIVETOOL		= 525;

/* ok */const short DEX_FINDOBJECT		= 526;	// --> struct FINDOBJECT

/* ok */const short DEX_QUERYRECHOBJECT		= 527;	// --> struct RECHOBJECT
/* ok */const short DEX_ISCLOSEDPROJECT		= 528;	// Notifikation

/* ok */const short DEX_QUERYACTIVEUSER		= 529;	// aktuellen NutzerNamen holen
/* ok */const short DEX_QUERYACTIVESELECTION	= 530;	// evtl. SelktionsBereich liefern

/* ok */const short DEX_ENUMMERKMALEIDENT	= 531;	// alle Merkmale eines Idents enumerieren
/* ok */const short DEX_ENUMMERKMALESICHT	= 532;	// alle Merkmale einer Sicht enumerieren

// Relationen, Relationen, Relationen -----------------------------------------
/* ok */const short DEX_ENUMRELATIONS		= 533;	// alle RelationsCodes einer GeoDB
/* ok */const short DEX_ENUMRELATIONOBJS	= 534;	// alle ONrs, mit einer Relation zu einem Obj
/* ok */const short DEX_MODRELATION		= 535;	// Relation aufbauen/modifizieren
/* ok */const short DEX_DELRELATION		= 536;	// Relation l�schen

/* ok */const short DEX_QUERYIDENTBASE		= 537;	// Zahlenbasis der Idents holen
/* ok */const short DEX_QUERYIDENTOBJTYPES	= 538;	// Objekttypen eines Idents feststellen
/* ok */const short DEX_LOADEXTENSIONEX 	= 539;
/* ok */const short DEX_UNLOADEXTENSIONEX 	= 540;

/* ok */const short DEX_QUERYROMODE		= 541;	// ROMode holen
/* ok */const short DEX_REMOVEORWND		= 542;	// Alle ORWnds l�schen

// Verwalten der Objektliste in ORFenstern
/* ok */const short DEX_ADDOBJECTTOLIST		= 543;
/* ok */const short DEX_REMOVEOBJECTFROMLIST 	= 544;

// Anlegen einer neuen GeoDB/IdentsDB
/* ok */const short DEX_CREATENEWGEODB		= 545;
/* ok */const short DEX_CREATENEWIDENTSDB	= 546;

const short DEX_QUERYISPRINTING			= 547;

/* ok */const short DEX_ENUMHEADER		= 548;

/* ok */const short DEX_RESCALE			= 549;	// Notification: Scaling changed
/* ok */const short DEX_REREADIDENTS		= 550;
/* ok */const short DEX_REREADCONTAINER		= 551;

/* ok */const short DEX_REREADSIGHTS		= 552;	// Sichten neu lesen
/* ok */const short DEX_DELETEVIEW		= 553;	// Sicht l�schen

/* ok */const short DEX_DCTOOCEX		= 554;	// DCtoOC ohne kippen
/* ok */const short DEX_OCTODCEX		= 555;	// OCtoDC ohne kippen

/* ok */const short DEX_RENDERGEODB		= 556;	// in hDC ausgeben
/* ok */const short DEX_QUERYEXPOSEDOC		= 557;	// zu zeichnender Bereich (GeoDB)
/* ok */const short DEX_QUERYEXPOSEDAREA	= 558;	// zu zeichnender Bereich (hDC)

/* ok */const short DEX_SIGHTDELETED		= 559;	// Sicht ist gel�scht

/* ok */const short DEX_ENUMVIEWIDENTSEX	= 560;	// Idents mit OTyp enumerieren
/* ok */const short DEX_ENUMALLIDENTSEX		= 561;

/* ok */const short DEX_QUERYMCODEBASE		= 562;	// Zahlenbasis der Idents holen

// LegendenVerwaltung ---------------------------------------------------------
/* ok */const short DEX_SAVELEGEND		= 563;	// Legende speichern
/* ok */const short DEX_RESETLEGEND		= 564;	// Legende r�cksetzen
/* ok */const short DEX_REFRESHLEGEND		= 565;	// Legende neu generieren
/* ok */const short DEX_ADDOBJECTTOLEGEND	= 566;	// Objekt zu Legende hinzuf�gen
/* ok */const short DEX_REPAINTLEGEND 		= 567;	// Legende neu zeichnen
const short DEX_QUERYLEGENDACTIVE		= 572;	// Ist Legende angezeigt ?

/* ok */const short DEX_GETTEXTOBJECTTEXT	= 568;	// Text von Textobjekt holen
/* ok */const short DEX_OBJECTISVISIBLE		= 569;	// Objekt beim letzten mal gezeichnet ?

/* ok */const short DEX_ENUMIDENTSSELECTEDEX	= 570;	// Enumeration aller Identifikatoren des ORFensters
/* ok */const short DEX_ENUMTOPRELATIONS	= 571;	// Enumeration topologischer Relationen
// 572 belegt

// VisualisierungsTypen eines Identifikators/Objektes -------------------------
#define VTPunkt		0
#define VTLinie		1
#define VTFlaeche	2
#define VTText		4
#define VTDefault	3	// keine VisInfo gegeben

// ----------------------------------------------------------------------------
// DatenStrukturen, die bei der Kommunikation mit der Extension verwendet werden
DECLARE_HANDLE (HDEX);			// Handle der Extension

typedef DWORD (FAR PASCAL *DEXENTRY)(HWND, UINT, WPARAM, LPARAM);
typedef DWORD (FAR PASCAL *DEXCALLBACK)(HDEX, UINT, WPARAM, LPARAM);

#if defined(__XT) && defined(__DEXPROCS)
typedef LRESULT (CALLBACK * DEXEXTENSIONPROC)(WPARAM, LPARAM);
typedef LRESULT (CALLBACK * DEXEXTENSIONPROC2)(HPROJECT, WPARAM, LPARAM);
typedef LRESULT (CALLBACK * DEXNOTIFICATIONPROC)(WPARAM, LPARAM, BOOL);
typedef LRESULT (CALLBACK * DEXDISPATCHPROC)(HWND, UINT, WPARAM, LPARAM);
#endif // __XT && __DEXPROCS

// Struktur, die beim Laden einer Erweiterung ben�tigt wird -------------------
typedef struct tagTRIAS_LOAD {
	DWORD dwSize;				// Gr��e dieserStruktur
	char szMenuName[DEX_MENUNAMELEN];	// Text im HauptMenu
	HMENU hMenu;				// PopUpMenuHandle
	UINT wMenuDelta;			// MenuOffset
	DEXCALLBACK fcDef;			// DefaultCallBack in TRIAS(R)
	char szORMenuName[DEX_MENUNAMELEN];	// Text f�r ObjRechMenu
	HMENU hORMenu;				// Menu f�r Objektrecherche
} TRIAS_LOAD;

// @struct TRIASLOADEX | Diese Struktur wird verwendet, um eine Erweiterung 
// zu laden.
// @field DWORD	| m_dwSize | Gr��e dieser Struktur
// @field char | m_szMenuName[DEX_MENUNAMELEN] | Menutext, der im Menu des Hauptfensters
// angezeigt werden soll.
// @field HMENU	| m_hMenu | Menu f�r Hauptfenster. Wenn dieser Wert ungleich NULL ist,
// dann wird dieses Menu als Popupmenu im Hauptfenster eingeh�ngt. Dieses Menu mu�
// jedoch durch die Erweiterung w�hrend der Bearbeitung der Message <m DEX_UNLOADEXTENSION>
// freigegeben werden.
// @field UINT	| m_wMenuDelta | Offset, der durch <tr> zu jedem Menu-ID hinzuaddiert
// wird, um Konflikte mit Menupunkten anderer Erweiterungen zu verhindern. Dieser Offset 
// mu� durch die Erweiterung ber�cksichtigt werden, wenn direkt auf einzelne Menupunkte
// zugegriffen werden soll. Dieser Wert ist f�r eine Erweiterung nicht konstant und
// kann sich von Start zu Start ver�ndern.
// @field DEXCALLBACK | m_fcDef | DefaultCallBack in <tr>, derzeit nicht verwendet
// @field char | m_szORMenuName[DEX_MENUNAMELEN] | Menutext, der im Menu jedes 
// Objekt-Recherchefensters angezeigt werden soll.
// @field HMENU	| m_hORMenu | Menu f�r Objektrecherche-Fenster. Wenn dieser Wert ungleich NULL ist,
// dann wird dieses Menu als Popupmenu in jedem Objektrecherche-Fenster eingeh�ngt. Dieses Menu mu�
// jedoch durch die Erweiterung w�hrend der Bearbeitung der Message <m DEX_UNLOADEXTENSION>
// freigegeben werden.
// @field short | m_iMode | Aktivierungs-Mode der Erweiterung. Dieses Feld kann folgende
// Werte enthalten:
// @flag LENoLoad	| Die Erweiterung soll nicht geladen werden.
// @flag LEInitOnly	| Die Erweiterung soll lediglich initialisiert werden. Es
// darf kein Nutzerinterface installiert werden (z.B. zus�tzliche Menupunkte).
// @flag LEFullLoad	| Die Erweiterung soll vollst�ndig initialisiert werden. 
// Das Nutzerinterface darf installiert werden.
// @comm Durch <tr> werden vor �bergabe dieser Struktur die Felder 
// <e TRIASLOADEX.m_dwSize>, <e TRIASLOADEX.m_wMenuDelta> und <e TRIASLOADEX.m_iMode> ausgef�llt. 
// Die restlichen Datenfelder k�nnen durch die Erweiterung gef�llt werden.
typedef struct tagTRIASLOADEX {
	DWORD m_dwSize;				// Gr��e dieser Struktur
	char m_szMenuName[DEX_MENUNAMELEN];	// Menutext im Menu des Hauptfensters 
	HMENU m_hMenu;				// MenuHandle
	UINT m_wMenuDelta;			// MenuOffset
	DEXCALLBACK m_fcDef;			// DefaultCallBack in <tr>
	char m_szORMenuName[DEX_MENUNAMELEN];	// Menutext f�r Objekt-Recherchefenster
	HMENU m_hORMenu;			// Menu f�r Objektrecherche
	short m_iMode;				// AktivierungsMode
} TRIASLOADEX;

#define LENoLoad	0x00
#define LEInitOnly	0x01
#define LEFullLoad	0x02

// Struktur f�r das Er�ffnen eines Projektes ----------------------------------
// @struct TRIAS_OPEN | Diese Struktur wird im Zusammenhang mit der Message 
// <m DEX_PROJECTOPEN> verwendet, um ein <tr>-Projekt zu er�ffnen.
// @xref <m DEX_PROJECTOPEN>, <t TRIAS_OPENEX>
typedef struct tagTRIAS_OPEN {
	DWORD dwSize;	// @field Die Gr��e dieser Struktur.
	char *lpProject;// @field Der Name des zu er�ffnenden Projektes.
		// Entweder wird der volle Dateiname der Steuerblockdatei (*.ris) 
		// angegeben, oder lediglich der Dateiname. Die Dateierweiterung wird 
		// als '.ris' erg�nzt und das Projekt im aktuellen Standard-Datenpfad 
		// gesucht.
	char *lpUser;	// @field Der Name des Nutzers, f�r den das Projekt ge�ffnet 
		// werden soll. Damit werden die Zugriffsrechte festgelegt.
	char *lpPassWord;	// @field Dieses Feld mu� genau dann belegt sein 
		// (<p lpPassWord> != NULL), wenn f�r den gew�nschten Nutzernamen ein
		// Pa�wort vorgegeben worden ist. Ansonsten wird dieser Wert ignoriert.
	short iMode;	// @field Dieser Wert enth�lt den Mode, in dem das Projekt
		// ge�ffnet werden soll. Er kann folgende Werte bzw. eine 
		// Kombination dieser Werte annehmen:
} TRIAS_OPEN;

// Werte f�r iMode ------------------------------------------------------------
#define OM_Normal	0x08	// @flag OM_Normal | Er�ffnen im Normalmodus, d.h. 
				// mit Schreibzugriff und Aktivierung der Standardansicht,
				// vormerken als aktuelles Projekt und ein evtl. ge�ffnetes 
				// Projekt schlie�en.
#define OM_NormalNoActivate	0x00	// @flag OM_NormalNoActivate | Er�ffnen im Normalmodus, d.h. 
				// mit Schreibzugriff und Aktivierung der Standardansicht,
				// NICHT vormerken als aktuelles Projekt und ein evtl. ge�ffnetes 
				// Projekt schlie�en.
#define OM_RO		0x01	// @flag OM_RO | Er�ffnen mit Schreibschutz (readonly).
#define OM_NoStandard	0x02	// @flag OM_NoStandard | Nach Er�ffnen Standardansicht nicht anzeigen.
#define OM_HideWindow	0x04	// @flag OM_HideWindow | Nach Er�ffnen Projektfenster nicht anzeigen.
#define OM_ActivateDBO	0x08	// @flag OM_ActivateDBO | Nach Er�ffnen, dieses Projekt als derzeit 
				// aktuelles Projekt vormerken.
#define OM_NotCloseOpen	0x10	// @flag OM_NotCloseOpen | Vor Er�ffnen dieses Projektes ein evtl. 
				// ge�ffnetes Projekt nicht schlie�en.
#define OM_DeleteOnClose	0x20	// @flag OM_DeleteOnClose | Das Projekt wird beim schlie�en
				// automatisch gel�scht, wenn es eine Datei ist.
#define OM_16BitCompatible	0x40	// @flag OM_16BitCompatible | Das Projekt wird im 16Bit Kompatibilit�tsmodus
				// erzeugt.

// @struct TRIAS_OPENEX | Diese Struktur wird im Zusammenhang mit der Message 
// <m DEX_PROJECTOPENEX> verwendet, um ein <tr>-Projekt zu er�ffnen.
// @xref <m DEX_PROJECTOPENEX>, <t TRIAS_OPEN>
typedef struct tagTRIAS_OPENEX {
	DWORD dwSize;		// @field Die Gr��e dieser Struktur.
	LPCSTR pcProject;	// @field Der Name des zu er�ffnenden Projektes.
		// Entweder wird der volle Dateiname der Steuerblockdatei (*.ris) 
		// angegeben, oder lediglich der Dateiname. Die Dateierweiterung wird 
		// als '.ris' erg�nzt und das Projekt im aktuellen Standard-Datenpfad 
		// gesucht.
	LPCSTR pcUser;		// @field Der Name des Nutzers, f�r den das Projekt ge�ffnet 
		// werden soll. Damit werden die Zugriffsrechte festgelegt. (hier zumeist NULL)
	LPCSTR pcPassWord;	// @field Dieses Feld mu� genau dann belegt sein 
		// (<e TRIAS_OPENEX.lpPassWord> != NULL), wenn f�r den gew�nschten Nutzernamen ein
		// Pa�wort vorgegeben worden ist. Ansonsten wird dieser Wert ignoriert.
	short iMode;	// @field Dieser Wert enth�lt den Mode, in dem das Projekt
		// ge�ffnet werden soll (s. iMode von <t TRIAS_OPEN>)
	DWORD dwMode;	// @field Dieser Wert enth�lt den Mode, in dem das Projekt
		// ge�ffnet werden soll. Er kann beliebige Werte aus STGM_... enthalten
} TRIAS_OPENEX;

// Struktur f�r EnumRechObjMerkmale -------------------------------------------
// @func BOOL | RECHTEXTMERKMALCALLBACK | R�ckruf-Funktion, die durch eine Erweiterung
// installiert werden mu�, wenn eine Enumeration aller Objekte, die ein gegebenes Merkmal
// besitzen, durchgef�hrt werden soll.
// @rdesc Eine Erweiterung sollte <t true> liefern, wenn die Enumeration fortgesetzt
// werden soll. Im Fehlerfall oder wenn die Enumeration abgebrochen werden soll, 
// mu� diese Funktion <t false> liefern.
// @parm long | lValue | Die Objektnummer eines Objektes, welches den Suchkriterien entspricht.
// @parm BOOL | fNotLast | Dieser Wert gibt an, ob der aktuelle Aufruf der Funktion 
// nicht der letzte in dieser Enumeration ist.
// @parm void * | pData | Durchzureichende Daten.
// @xref <m DEX_ENUMTEXTMERKMALRECH>
typedef BOOL (CALLBACK *RECHTEXTMERKMALCALLBACK)(long ONr, BOOL iNotLast, void *pData);
// typedef RECHTEXTMERKMALCALLBACK RECHTEXTMERKMALPROC;
typedef BOOL (*RECHTEXTMERKMALPROC)(long ONr, BOOL iNotLast, void *pData);

// @struct ENUMRECHTEXTMERKMAL | Diese Datenstruktur wird verwendet, um eine Enumeration 
// aller Objekte mit einem gegebenen Merkmal durchzuf�hren.
// @comm Die im Feld <e ENUMRECHTEXTMERKMAL.pData> vorgegebenen Daten werden ohne Ver�nderung als 
// 3. Parameter (<p pData>) an die zu rufende Funktion <e ENUMRECHTEXTMERKMAL.eFcn> �bergeben 
// und k�nnen durch die Erweiterung frei belegt werden.
// @xref <m DEX_ENUMTEXTMERKMALRECH>
typedef struct tagENUMRECHTEXTMERKMAL {
	DWORD dwSize;	// @field Die Gr��e dieser Struktur.
	char *pView;	// @field Wenn ungleich NULL, dann wird die Recherche auf 
		// die Sicht beschr�nkt, deren Namen durch <e ENUMRECHTEXTMERKMAL.pView> gegeben ist.
	long lMCode;	// @field Gibt den zu untersuchenden Merkmalscode vor.
	char *pMWert;	// @field Gesuchtes Textmerkmal.
	short iMode;	// @field SuchMode, hier k�nnen folgende Werte gegeben sein:
		// @flag SMExactMatch | Es werden alle Objekte geliefert, die exakt das gesuchte
		// Textmerkmal besitzen.
		// @flag SMInexactMatch | Es werden alle Objekte geliefert, die ein 
		// �hnliches Textmerkmal besitzen. Dieser Mode ist verwendbar, um evtl. 
		// Tippfehler zu ber�cksichtigen.
		// @flag SMSubstringMatch | Es werden alle Objekte geliefert, deren Merkmal
		// den Suchstring enthalten.
		// @flag SMSubstringStartMatch | Es werden alle Objekte geliefert, deren Merkmal
		// mit dem gegebenen Suchstring beginnt.
		// @flag SMExistanceOnly | Es werden alle Objekte geliefert, die dieses Merkmal 
		// besitzen (entspricht pMText == NULL)
		// @flag SMActViewOnly | Diese Flag kann mit den anderen kombiniert werden
		// und beschr�nkt die Suche auf die aktuelle Sicht. <e ENUMRECHTEXTMERKMAL.pView>
		// wird in diesem Fall ignoriert.
	RECHTEXTMERKMALCALLBACK eFcn;	// @field Durch die Enumeration zu rufende Funktion <f RECHTEXTMERKMALCALLBACK>.
	void *pData;	// @field An die gerufene Funktion durchgereichte Daten.
} ENUMRECHTEXTMERKMAL;

#define SMExactMatch			1		// zul�ssige Werte f�r iMode, default: 1
#define SMInexactMatch			2
#define SMSubstringMatch		3
#define SMSubStringStartMatch	4
#define SMRegularExpression		5
#define SMExistanceOnly			6		// �quivalent zu pMText == NULL
#define SMActViewOnly		 0x80		// nur in aktueller Sicht

// Struktur f�r EnumRechGeometrie ---------------------------------------------
typedef BOOL (CALLBACK *RECHGEOMETRIECALLBACK)(long ONr, BOOL iNotLast, void *pData);
// typedef RECHGEOMETRIECALLBACK RECHGEOMETRIEPROC;
typedef BOOL (*RECHGEOMETRIEPROC)(long ONr, BOOL iNotLast, void *pData);

typedef struct tagENUMRECHGEOMETRIE {
	DWORD dwSize;
	void *lCont;			// SuchBereich (ObjContainer !!/double *)
	short iMode;			// SuchMode
	RECHGEOMETRIEPROC eFcn;		// gerufene Funktion
	void *pData;			// an Funktion �bergebener DatenBereich
} ENUMRECHGEOMETRIE;

#define ERGExact		0x01	// Geometrie exakt pr�fen
#define ERGActSight		0x02	// nur aktuelle Sicht auswerten
#define ERGConverted	0x04	// Suchbereich enth�lt double Koordinaten

typedef struct tagENUMRECHGEOMETRIEEX {
	DWORD dwSize;
	void *lCont;			// SuchBereich (ObjContainer !!/double *)
	short iMode;			// SuchMode
	RECHGEOMETRIEPROC eFcn;		// gerufene Funktion
	void *pData;			// an Funktion �bergebener DatenBereich
	const char *m_pView;	// zu untersuchende Ansicht (NULL: aktuelle Ansicht)
} ENUMRECHGEOMETRIEEX;

// Struktur f�r Enumeration mit einem long-Key --------------------------------
// @func BOOL | ENUMLONGKEYCALLBACK | R�ckruf-Funktion, die durch eine Erweiterung
// installiert werden mu�, wenn eine Enumeration �ber einen long -Schl�ssel
// durchgef�hrt werden soll.
// @rdesc Eine Erweiterung sollte <t true> liefern, wenn die Enumertaion fortgesetzt
// werden soll. Im Fehlerfall oder wenn die Enumeration abgebrochen werden soll, 
// mu� diese Funktion <t false> liefern.
// @parm long | lValue | Der aktuelle Wert der zu enumerierenden Eigenschaft 
// (Objektnummer, Merkmalscode o.�.).
// @parm BOOL | fNotLast | Dieser Wert gibt an, ob der aktuelle Aufruf der Funktion 
// nicht der letzte in dieser Enumeration ist.
// @parm void * | pData | Durchzureichende Daten.
// @xref <m DEX_ENUMMERKMALE>, <m DEX_ENUMMERKMALEIDENT>, <m DEX_ENUMVIEWIDENTS>
// <m DEX_ENUMIDENTOBJS>
typedef BOOL (CALLBACK *ENUMLONGKEYCALLBACK)(long Key, BOOL iNotLast, void *pData);
// typedef ENUMLONGKEYCALLBACK ENUMLONGKEYPROC;
typedef BOOL (*ENUMLONGKEYPROC)(long Key, BOOL iNotLast, void *pData);

// @struct ENUMLONGKEY | Diese Datenstruktur wird verwendet, um eine Enumeration �ber 
// einen long -Schl�ssel durchzuf�hren.
// @comm Die im Feld <e ENUMLONGKEY.ePtr> vorgegebenen Daten werden ohne Ver�nderung als 
// 3. Parameter (<p pData>) an die zu rufende Funktion <e ENUMLONGKEY.eFcn> �bergeben 
// und k�nnen durch die Erweiterung frei belegt werden.
// @xref <m DEX_ENUMMERKMALE>, <m DEX_ENUMMERKMALEIDENT>, <m DEX_ENUMVIEWIDENTS>
// <f ENUMLONGKEYCALLBACK>
typedef struct tagENUMLONGKEY {
	long eKey;		// @field Suchschl�ssel, �ber den zu enumerieren ist.
	ENUMLONGKEYPROC eFcn;	// @field Durch die Enumeration zu rufende Funktion <f ENUMLONGKEYCALLBACK>.
	void *ePtr;		// @field An die gerufene Funktion durchgereichte Daten.
} ENUMLONGKEY;

// @func BOOL | ENUMLONGKEYEXCALLBACK | R�ckruf-Funktion, die durch eine Erweiterung
// installiert werden mu�, wenn eine Enumeration �ber einen long -Schl�ssel mit 
// erweiterter Parametervorgabe durchgef�hrt werden soll (<m DEX_ENUMMERKMALEEX>, 
// <m DEX_ENUMMERKMALEIDENTEX>).
// @rdesc Eine Erweiterung sollte <t true> liefern, wenn die Enumertaion fortgesetzt
// werden soll. Im Fehlerfall oder wenn die Enumeration abgebrochen werden soll, 
// mu� diese Funktion <t false> liefern.
// @parm long | lValue | Der aktuelle Wert der zu enumerierenden Eigenschaft 
// (Objektnummer, Merkmalscode o.�.).
// @parm DWORD | dwData | Die an dieser Stelle �bergebenen Daten sind spezifisch f�r 
// jede konkrete Message und jeweils dort beschrieben.
// @parm void * | pData | Durchzureichende Daten.
// @xref <m DEX_ENUMMERKMALEEX>, <m DEX_ENUMMERKMALEIDENTEX>, <m DEX_ENUMIDENTOBJSEX>
typedef BOOL (CALLBACK *ENUMLONGKEYEXCALLBACK)(long Key, DWORD dwData, void *pData);
// typedef ENUMLONGKEYEXCALLBACK ENUMLONGKEYEXPROC;
typedef BOOL (*ENUMLONGKEYEXPROC)(long Key, DWORD dwData, void *pData);

// @struct ENUMLONGKEYEX | Diese Datenstruktur wird verwendet, um eine Enumeration �ber 
// einen long -Schl�ssel durchzuf�hren (Message <m DEX_ENUMMERKMALEEX>, 
// <m DEX_ENUMMERKMALEIDENTEX>).
// @comm Die im Feld <e ENUMLONGKEYEX.ePtr> vorgegebenen Daten werden ohne Ver�nderung als 
// 3. Parameter (<p pData>) an die zu rufende Funktion <e ENUMLONGKEYEX.eFcn> �bergeben 
// und k�nnen durch die Erweiterung frei belegt werden.
// @xref <m DEX_ENUMMERKMALEEX>, <m DEX_ENUMMERKMALEIDENTEX>, <f ENUMLONGKEYCALLBACK>
typedef struct tagENUMLONGKEYEX {
	long eKey;		// @field Suchschl�ssel, �ber den zu enumerieren ist.
	ENUMLONGKEYEXPROC eFcn;	// @field Durch die Enumeration zu rufende Funktion <f ENUMLONGKEYCALLBACK>.
	void *ePtr;		// @field An die gerufene Funktion durchgereichte Daten.
	DWORD eData;		// @field Zus�tzliche Parameter f�r die Enumeration. 
		// Die Bedeutung dieser Parameter ist abh�ngig von der konkreten
		// Enumeration und jeweils dort beschrieben.
} ENUMLONGKEYEX;

#define MPObjectFeature		'a'
#define MPViewFeature		'b'
#define MPIdentFeature		'c'
#define MPDoubleFeature		'f'
#define MPIntegerFeature	'i'
#define MPUnknownFeature	'u'
#define MPSystemFeatures	0x0100
#define MPAllFeatures		0x0200
#define MPReadOnlyFeatures	0x0400

// Struktur f�r Enumeration mit TextSchl�ssel ---------------------------------
// @func BOOL | ENUMTEXTKEYCALLBACK | R�ckruf-Funktion, die durch eine Erweiterung
// installiert werden mu�, wenn eine Enumeration �ber einen Text-Schl�ssel
// durchgef�hrt werden soll (<m DEX_ENUMMERKMALESICHT>).
// @rdesc Eine Erweiterung sollte <t true> liefern, wenn die Enumertaion fortgesetzt
// werden soll. Im Fehlerfall oder wenn die Enumeration abgebrochen werden soll, 
// mu� diese Funktion <t false> liefern.
// @parm long | lValue | Der aktuelle Wert der zu enumerierenden Eigenschaft 
// (Objektnummer, Merkmalscode o.�.).
// @parm BOOL | fNotLast | Dieser Wert gibt an, ob der aktuelle Aufruf der Funktion 
// nicht der letzte in dieser Enumeration ist.
// @parm void * | pData | Durchzureichende Daten.
// @xref <m DEX_ENUMMERKMALESICHT>
typedef BOOL (CALLBACK *ENUMTEXTKEYCALLBACK)(long Key, BOOL iNotLast, void *pData);
// typedef ENUMTEXTKEYCALLBACK ENUMTEXTKEYPROC;
typedef BOOL (*ENUMTEXTKEYPROC)(long Key, BOOL iNotLast, void *pData);

// @struct ENUMTEXTKEY | Diese Datenstruktur wird verwendet, um eine Enumeration �ber 
// einen Text-Schl�ssel durchzuf�hren (Message <m DEX_ENUMMERKMALESICHT>).
// @comm Die im Feld <e ENUMTEXTKEY.ePtr> vorgegebenen Daten werden ohne Ver�nderung 
// als 3. Parameter (<p pData>) an die zu rufende Funktion <e ENUMTEXTKEY.eFcn> �bergeben 
// und k�nnen durch die Erweiterung frei belegt werden.
// @xref <m DEX_ENUMMERKMALESICHT>, <f ENUMTEXTKEYCALLBACK>
typedef struct tagENUMTEXTKEY {
	char *eKey;		// @field Suchschl�ssel, �ber den zu enumerieren ist.
	ENUMLONGKEYPROC eFcn;	// @field Durch die Enumeration zu rufende Funktion <f ENUMLONGKEYCALLBACK>.
	void *ePtr;		// @field An die gerufene Funktion durchgereichte Daten.
} ENUMTEXTKEY;

// @func BOOL | ENUMTEXTKEYEXCALLBACK | R�ckruf-Funktion, die durch eine Erweiterung
// installiert werden mu�, wenn eine Enumeration �ber einen Text-Schl�ssel
// durchgef�hrt werden soll (<m DEX_ENUMMERKMALESICHTEX>).
// @rdesc Eine Erweiterung sollte <t true> liefern, wenn die Enumertaion fortgesetzt
// werden soll. Im Fehlerfall oder wenn die Enumeration abgebrochen werden soll, 
// mu� diese Funktion <t false> liefern.
// @parm long | lValue | Der aktuelle Wert der zu enumerierenden Eigenschaft 
// (Objektnummer, Merkmalscode o.�.).
// @parm DWORD | dwData | Die an dieser Stelle �bergebenen Daten sind spezifisch f�r 
// jede konkrete Message und jeweils dort beschrieben.
// @parm void * | pData | Durchzureichende Daten.
// @xref <m DEX_ENUMMERKMALESICHTEX>
typedef BOOL (CALLBACK *ENUMTEXTKEYEXCALLBACK)(long Key, DWORD dwData, void *pData);
// typedef ENUMTEXTKEYEXCALLBACK ENUMTEXTKEYEXPROC;
typedef BOOL (*ENUMTEXTKEYEXPROC)(long Key, DWORD dwData, void *pData);

// @struct ENUMTEXTKEYEX | Diese Datenstruktur wird verwendet, um eine Enumeration �ber 
// einen Text-Schl�ssel durchzuf�hren (Message <m DEX_ENUMMERKMALESICHTEX>).
// @comm Die im Feld <e ENUMTEXTKEYEX.ePtr> vorgegebenen Daten werden ohne Ver�nderung als 
// 3. Parameter (<p pData>) an die zu rufende Funktion <e ENUMTEXTKEYEX.eFcn> �bergeben 
// und k�nnen durch die Erweiterung frei belegt werden.
// @xref <m DEX_ENUMMERKMALESICHTEX>, <f ENUMTEXTKEYEXCALLBACK>
typedef struct tagENUMTEXTKEYEX {
	char *eKey;		// @field Suchschl�ssel, �ber den zu enumerieren ist.
	ENUMLONGKEYEXPROC eFcn;	// @field Durch die Enumeration zu rufende Funktion <f ENUMLONGKEYCALLBACK>.
	void *ePtr;		// @field An die gerufene Funktion durchgereichte Daten.
	DWORD eData;		// @field Zus�tzliche Parameter f�r die Enumeration. 
		// Die Bedeutung dieser Parameter ist abh�ngig von der konkreten
		// Enumeration und jeweils dort beschrieben.
} ENUMTEXTKEYEX;

// Struktur f�r Enumeration ohne Schl�ssel ------------------------------------
// @func BOOL | ENUMNOKEYCALLBACK | R�ckruf-Funktion, die durch eine Erweiterung
// installiert werden mu�, wenn eine Enumeration �ber das gesamte Projekt 
// durchgef�hrt werden soll (<m DEX_ENUMALLSIGHTS>).
// @rdesc Eine Erweiterung sollte <t true> liefern, wenn die Enumertaion fortgesetzt
// werden soll. Im Fehlerfall oder wenn die Enumeration abgebrochen werden soll, 
// mu� diese Funktion <t false> liefern.
// @parm char * | pValue | Der aktuelle Wert der zu enumerierenden Eigenschaft 
// (Sichtname).
// @parm BOOL | fNotLast | Dieser Wert gibt an, ob der aktuelle Aufruf der Funktion 
// nicht der letzte in dieser Enumeration ist.
// @parm void * | pData | Durchzureichende Daten.
// @xref <m DEX_ENUMALLSIGHTS>
typedef BOOL (CALLBACK *ENUMNOKEYCALLBACK)(char *pPtr, BOOL fNotLast, void *pData);
typedef BOOL (*ENUMNOKEYPROC)(char *pPtr, BOOL fNotLast, void *pData);

// @struct ENUMNOKEY | Diese Datenstruktur wird verwendet, um eine Enumeration ohne 
// Schl�ssel (�ber das gesamte aktuelle Projekt) durchzuf�hren (Message <m DEX_ENUMALLSIGHTS>).
// @comm Die im Feld <e ENUMNOKEY.ePtr> vorgegebenen Daten werden ohne Ver�nderung 
// als 3. Parameter (<p pData>) an die zu rufende Funktion <e ENUMNOKEY.eFcn> �bergeben und k�nnen
// durch die Erweiterung frei belegt werden.<par>Diese Datenstruktur unterscheidet 
// sich von der Struktur <t ENUMNOKEYLONG> lediglich
// durch den Typ der vorzugebenden R�ckruffunktion. <t ENUMNOKEY> wird verwendet,
// wenn der Typ der zu enumerierenden Eigenschaft 'char *' ist.
// @xref <m DEX_ENUMALLSIGHTS>, <f ENUMNOKEYCALLBACK>, <t ENUMNOKEYLONG>
typedef struct tagENUMNOKEY {
	ENUMNOKEYPROC eFcn;	// @field Zu registrierende R�ckruffunktion.
	void *ePtr;		// @field An die R�ckruffunktion als 3. Parameter
		// durchzureichende Daten.
} ENUMNOKEY;

// @func BOOL | ENUMNOKEYLONGCALLBACK | R�ckruf-Funktion, die durch eine Erweiterung
// installiert werden mu�, wenn eine Enumeration �ber das gesamte Projekt 
// durchgef�hrt werden soll (<m DEX_ENUMALLIDENTS>).
// @rdesc Eine Erweiterung sollte <t true> liefern, wenn die Enumertaion fortgesetzt
// werden soll. Im Fehlerfall oder wenn die Enumeration abgebrochen werden soll, 
// mu� diese Funktion <t false> liefern.
// @parm long | lValue | Der aktuelle Wert der zu enumerierenden Eigenschaft 
// (Identifikator).
// @parm void * | pData | Durchzureichende Daten.
// @xref <m DEX_ENUMALLIDENTS>
typedef BOOL (CALLBACK *ENUMNOKEYLONGCALLBACK)(long Key, BOOL iNotLast, void *pData);
typedef BOOL (*ENUMNOKEYLONGPROC)(long Key, BOOL iNotLast, void *pData);

// @struct ENUMNOKEYLONG | Diese Datenstruktur wird verwendet, um eine Enumeration ohne 
// Schl�ssel (�ber das gesamte aktuelle Projekt) durchzuf�hren (Message <m DEX_ENUMALLIDENTS>).
// @comm Die im Feld <e ENUMNOKEYLONG.ePtr> vorgegebenen Daten werden ohne Ver�nderung 
// als 3. Parameter (<p pData>) an die zu rufende Funktion <e ENUMNOKEYLONG.eFcn> �bergeben und k�nnen 
// durch die Erweiterung frei belegt werden.<par>Diese Datenstruktur unterscheidet 
// sich von der Struktur <t ENUMNOKEY> lediglich
// durch den Typ der vorzugebenden R�ckruffunktion. <t ENUMNOKEYLONG> wird verwendet,
// wenn der Typ der zu enumerierenden Eigenschaft 'long' ist.
// @xref <m DEX_ENUMALLIDENTS>, <f ENUMNOKEYLONGCALLBACK>, <t ENUMNOKEY>
typedef struct tagENUMNOKEYLONG {
	ENUMNOKEYLONGPROC eFcn;	// @field Zu registrierende R�ckruffunktion.
	void *ePtr;		// @field An die R�ckruffunktion als 3. Parameter
		// durchzureichende Daten.
} ENUMNOKEYLONG;

typedef BOOL (CALLBACK *ENUMNOKEYEXCALLBACK)(char *pPtr, DWORD dwData, void *pData);
typedef BOOL (*ENUMNOKEYEXPROC)(char *pPtr, DWORD dwData, void *pData);
typedef BOOL (CALLBACK *ENUMNOKEYLONGEXCALLBACK)(long, DWORD dwData, void *pData);
typedef BOOL (*ENUMNOKEYLONGEXPROC)(long, DWORD dwData, void *pData);

typedef struct tagENUMNOKEYEX {
	ENUMNOKEYEXPROC eFcn;	// zu rufende Funktion
	void *ePtr;		// durchzureichende Daten
	DWORD eData;		// zus�tzliche Parameter
} ENUMNOKEYEX;

typedef struct tagENUMNOKEYLONGEX {
	ENUMNOKEYLONGEXPROC eFcn;	// zu rufende Funktion
	void *ePtr;		// durchzureichende Daten
	DWORD eData;		// zus�tzliche Parameter
} ENUMNOKEYLONGEX;

// Zusammenfassen zweier Objekte zu einem Komplexobjekt -----------------------
typedef struct tagMERGEKOBJECT {
	long mObj1;		// BezugsObjekt
	long mObj2;		// hinzuzuf�gendes Objekt
	long mIdent;		// neuer Identifikator
	long mRCode;		// zu verwendender RelationsCode
	BOOL mMerge;		// Objekte vereinigen oder neues KObjekt bilden
} MERGEKOBJECT;

// Herausl�schen eines Objektes aus einem Komplexobjekt -----------------------
typedef struct tagDELETEKOBJECT {
	long doKObj;		// KomplexObjekt, aus dem herausgel�st werden soll
	long doObj;		// herauszul�sendes Objekt
} DELETEKOBJECT;

// Einf�gen eines neuen Identifikators in die SpeicherListe -------------------
typedef struct tagADDNEWIDENT {	
	long newIdent;		// neuer Identifikator
	short iFlags;		// Identifikator ist tempor�r
	short iTyp;		// ObjTyp f�r diesen Ident
} ADDNEWIDENT;

#define ANI_Temp	0x01
#define ANI_AddToView	0x02

// Fehlermeldungen systemweit verteilen ---------------------------------------
typedef struct tagERRORMESSAGE {
	short emiErrCode;	// FehlerCode
	short emiRoutine;	// RoutinenCode
	void *empData;		// zus�tzliche Daten
} ERRORMESSAGE;

typedef int (*ERRHANDLER)(int,int,...);
typedef struct tagERRINSTALL {
	short eiRC;		// FehlerCode
	ERRHANDLER eiEH;	// neue Fehlerbehandlungsart
	ERRHANDLER *eioEH;	// alte Fehlerbehandlungsart
} ERRINSTALL;

typedef struct tagEXTERRINSTALL {
	short eiRC;		// FehlerCode
	ERRHANDLER eiEH;	// neue Fehlerbehandlungsart
	ERRHANDLER *eioEH;	// alte Fehlerbehandlungsart
	DWORD dwData;		// durchzureichende Daten
} EXTERRINSTALL;

// Struktur f�r das Liefern eines MerkmalsWertes ------------------------------
#define	TT_Objekt		6
#define TT_Identifikator 	8
#define	TT_Sicht		25

// @struct TARGETMERKMAL | Diese Struktur wird im Zusammenhang mit den Messages
// <m DEX_QUERYTEXTMERKMAL> und <m DEX_MODIFYMERKMAL> verwendet, um ein Merkmal eines
// Objektes, eines Identifikators oder einer Ansicht zu lesen, zu schreiben oder zu 
// l�schen.
// @comm Ein Merkmal wird dann gel�scht, wenn beim Schreiben die Felder
// <mf TARGETMERKMAL.pMText> und <mf TARGETMERKMAL.imaxLen> ausgenullt sind.
// @xref <m DEX_QUERYTEXTMERKMAL>, <m DEX_MODIFYMERKMAL>, <t TARGETMERKMALEX>
typedef struct tagTARGETMERKMAL {
	DWORD dwSize;	// @field Die Gr��e dieser Struktur.
	LPARAM lTarget;	// @field Dieses Feld mu� die Objektnummer, den
		// Identifikator oder einen Zeiger auf den Ansichtnamen enthalten,
		// f�r den/die das Merkmal behandelt werden soll. Dieses Feld wird in 
		// Abh�ngigkeit vom Feld <mf TARGETMERKMAL.iTTyp> interpretiert.
	long lMCode;	// @field Enth�lt den Merkmalscode des zu behandelnden Merkmales.
	short imaxLen;	// @field Enth�lt beim Lesen eines Merkmales (Message <m DEX_QUERYTEXTMERKMAL>)
		// die Gr��e des Textpuffers sowie nach dem Aufruf die L�nge des
		// gelesenen Textes. Beim Schreiben (Message <m DEX_MODIFYMERKMAL>) enth�lt 
		// dieses Feld die L�nge der zu schreibenden Zeichenkette.
	char *pMText;	// @field Enth�lt beim Lesen einen Zeiger auf den Pufferbereich,
		// in dem das gelesene Merkmal abgelegt werden soll, beim Schreiben den
		// neuen Merkmalstext.
	short iTTyp;	// @field Enth�lt die Information, ob 
		// es sich um ein Merkmal eines Objektes, eines Identifikators oder
		// einer Ansicht handelt. Es kann folgende Werte enthalten
		// @flag TT_Objekt | Es handelt sich um ein Objektmerkmal.
		// @flag TT_Identifikator | Es handelt sich um ein identifikatormerkmal.
		// @flag TT_Sicht | Es handelt sich um ein Ansichtmerkmal.
} TARGETMERKMAL;

// @struct TARGETMERKMALEX | Diese Struktur wird im Zusammenhang mit den Messages
// <m DEX_QUERYTEXTMERKMAL> und <m DEX_MODIFYMERKMAL> verwendet, um ein Merkmal eines
// Objektes, eines Identifikators oder einer Ansicht zu lesen, zu schreiben oder zu 
// l�schen.
// @comm Das Verhalten der Messages mit dieser Struktur ist im wesentlichen identisch
// mit dem Verhalten bei der Verwendung der Struktur <m TARGETMERKMAL>. Lediglich 
// Feinheiten k�nnen mit Hilfe der Flags im Feld <mf TARGETMERKMALEX.iFlags> beeinflu�t
// werden.
// @xref <m DEX_QUERYTEXTMERKMAL>, <m DEX_MODIFYMERKMAL>, <t TARGETMERKMAL>
typedef struct tagTARGETMERKMALEX {
	DWORD dwSize;	// @field Die Gr��e dieser Struktur.
	LPARAM lTarget;	// @field Dieses Feld mu� die Objektnummer, den
		// Identifikator oder einen Zeiger auf den Ansichtnamen enthalten,
		// f�r den/die das Merkmal behandelt werden soll. Dieses Feld wird in 
		// Abh�ngigkeit vom Feld <mf TARGETMERKMAL.iTTyp> interpretiert.
	long lMCode;	// @field Enth�lt den Merkmalscode des zu behandelnden Merkmales.
	short imaxLen;	// @field Enth�lt beim Lesen eines Merkmales (Message <m DEX_QUERYTEXTMERKMAL>)
		// die Gr��e des Textpuffers sowie nach dem Aufruf die L�nge des
		// gelesenen Textes. Beim Schreiben (Message <m DEX_MODIFYMERKMAL>) enth�lt 
		// dieses Feld die L�nge der zu schreibenden Zeichenkette.
	char *pMText;	// @field Enth�lt beim Lesen einen Zeiger auf den Pufferbereich,
		// in dem das gelesene Merkmal abgelegt werden soll, beim Schreiben den
		// neuen Merkmalstext.
	short iTTyp;	// @field Enth�lt die Information, ob 
		// es sich um ein Merkmal eines Objektes, eines Identifikators oder
		// einer Ansicht handelt. Es kann folgende Werte enthalten
		// @flag TT_Objekt | Es handelt sich um ein Objektmerkmal.
		// @flag TT_Identifikator | Es handelt sich um ein identifikatormerkmal.
		// @flag TT_Sicht | Es handelt sich um ein Ansichtmerkmal.
	short iFlags;	// @field Enth�lt zus�tzliche Informationen �ber spezielle
		// Modi der Funktion. Es kann eine Kombination der folgenden Werte enthalten:
		// @flag TMNoCaching | Nur beim Schreiben: Verhindert, da� der neue 
		// @flag TMCreateNewTarget | Nur beim Schreiben und 'TT_Identifikator':
		// Identifikatorsatz anlegen, wenn nicht existent.
		// Merkmalswert im Merkmals-Cache von <tr> abgelegt wird.
} TARGETMERKMALEX;

#define TMNoCaching	0x01
#define TMCreateNewTarget 0x02

// @struct OBJECTFEATURE | Diese Struktur dient zum Lesen, Schreiben und L�schen
// von speziellen Objektmerkmalen, wie z.B. Objektname oder Unique Ident. Sie ist 
// zur Vereinfachung der Merkmals-Schnittstelle vorgesehen. 
// @xref <m DEX_QUERYOBJECTNAME>, <m DEX_SETOBJECTNAME>
typedef struct tagOBJECTFEATURE {	
	DWORD m_dwSize;	// @field Die Gr��e dieser Struktur.
	long m_lONr;	// @field Objektnummer des zu behandelnden Objektes.
	char *m_pMText;	// @field Der Zeichenkettenpuffer, der zur �bertragung
		// des Merkmalstextes dient. Beim Schreiben (Message <m DEX_SETOBJECTNAME>)
		// mu� hier der neue Text vorgegeben werden.<nl>Beim Lesen (Message 
		// <m DEX_QUERYOBJECTNAME>) wird hier der Text geliefert.<nl>Um ein spezielles
		// Merkmal zu l�schen, mu� <p m_pMText> gleich NULL sein.
	short m_iLen;	// @field Beim Lesen (Message <m DEX_QUERYOBJECTNAME>) wird hier die Gr��e des 
		// Zeichenkettenpuffers vorgegeben. Nach Aufruf enth�lt dieser Wert die
		// Anzahl der real eingelesenen Zeichen. Beim Schreiben (Message 
		// <m DEX_SETOBJECTNAME>) mu� dieser Wert auf die L�nge der zu 
		// schreibenden Zeichenkette gesetzt sein.
} OBJECTFEATURE;

// Struktur f�r PBD_Data Abfrage und Modifikation -----------------------------
typedef struct tagPBDDATA {
	DWORD dwSize;		// Gr��e dieser Struktur
	short pbdTyp;		// Typ: 'i' - Identifikator, 'm' - Merkmal, 'r' - Relation
	long pbdCode;		// interner Code
	char *pbdKText;		// KurzText
	char *pbdLText;		// LangText
	short pbdTemp;		// Flag, ob tempor�r oder permanent (nur 'i')
	short pbdKTextLen;	// max. L�nge der Texte
	short pbdLTextLen;
} PBDDATA;

// Struktur f�r PBD_Merkmal (erweiterte PBDDATA)
typedef struct tagPBDMERKMAL {
	DWORD dwSize;		// Gr��e dieser Struktur
	short pbdTyp;		// 'm' - Merkmal
	long pbdCode;		// interner Code
	char *pbdKText;		// KurzText
	char *pbdLText;		// LangText
	short pbdReserved;	// unused
	short pbdKTextLen;	// max. L�nge der Texte
	short pbdLTextLen;
	short ipbdMTyp;		// MerkmalsTyp
	short ipbdMLen;		// max. L�nge des Merkmales
} PBDMERKMAL;


// Struktur f�r PBD_Relation (erweiterte PBDDATA)
typedef struct tagPBDRELATION {
	DWORD dwSize;		// Gr��e dieser Struktur
	short pbdTyp;		// Typ: 'r' - Relation
	long pbdCode;		// interner Code
	char *pbdKText;		// KurzText
	char *pbdLText;		// LangText
	short pbdReserved;	// unused
	short pbdKTextLen;	// max. L�nge der Texte
	short pbdLTextLen;
	short ipbdRTyp;		// RelationsTyp
} PBDRELATION;

#if !defined(PBDMERKMAL_SYSTEMFLAG)
#define PBDMERKMAL_SYSTEMFLAG		0x80
#define PBDMERKMAL_READONLY		0x100
#endif

// Strutur f�r die Verwaltung der GeoDBHeaderEntries --------------------------
typedef struct tagGEODBHDRENTRY {
	DWORD dwSize;
	char hdrKey[16];	// Schl�ssel (mit ' ' auff�llen !)
	char *lphdrText;	// gesuchter/gefundener Text
	short hdrTextLen;	// BufferGr��e
} GEODBHDRENTRY;

typedef struct tagGEODBHDRENTRYEX {
	DWORD dwSize;
	char hdrKey[16];	// Schl�ssel (mit ' ' auff�llen !)
	char *lphdrText;	// gesuchter/gefundener Text
	short hdrTextLen;	// BufferGr��e
	DWORD dwFlags;		// Flags s.u.
} GEODBHDRENTRYEX;

// Flags f�r GEODBHDRENTRYEX.dwFlags 
#define HEADER_NORMAL	0x00
#define HEADER_SYSTEM	0x01
#define HEADER_READONLY	0x02
#define HEADER_SYSTEMRO	0x03
#define HEADER_DYNAMIC	0x04

// Struktur, welche f�r DEX_QUERYOBJSTATISTIK verwendet wird ------------------
typedef struct tagOBJSTATISTIK {
	DWORD dwSize;		// Gr��e dieser Struktur
	long lONr;		// ObjektNummer
	long lIdent;		// Identifikator
	short iObjTyp;		// ObjektTyp
	short iFlags;		// Modi von QueryObjStatistik (unused)
	long lCnt;		// Anzahl der St�tzpunkte
	short iKCnt;		// Fl�chen: Anzahl der Konturen
} OBJSTATISTIK;

// Struktur f�r das Anlegen eines ObjektTemplates -----------------------------
// @struct OBJCREATE | Diese Struktur wird im Zusammenhang mit der Message
// <m DEX_MODIFYOBJGEOMETRIE> verwendet, um ein Objekt neu zu erzeugen.
// @comm Diese Struktur ist identisch mit dem Kopf aller verwandten Strukturen,
// mit deren Hilfe Objektgeometrien modifiziert (<t OBJCREATE>, <t COPYGEOMETRIE>
// oder <t TEXTGEOMETRIE>), bzw. Informationen �ber ein Objekt (<t OBJSTATISTIK>)
// abgefragt werden k�nnen.
// @xref <m DEX_MODIFYOBJGEOMETRIE>, <f DEX_QueryUnknownIdent>
typedef struct tagOBJCREATE {
	DWORD dwSize;	// @field Die Gr��e dieser Struktur.
	long lONr;	// @field Enth�lt nach erfolgreichem Ausf�hren der Funktion
		// die Objektnummer des neu erzeugten Objektes. Enth�lt dieses Feld 
		// bei Funktionsaufruf eine g�ltige Objektnummer, so wird dieses Objekt 
		// zuerst gel�scht und an seiner Stelle ein neues Objekt erzeugt.
	long lIdent;	// @field Enth�lt den Identifikator des neu zu erzeugenden 
		// Objektes. Ist dieses Feld Null, so erh�lt das neue Objekt den
		// projektspezifischen Identifikator 'Unbekannte Objektklasse' 
		// (Funktion <f DEX_QueryUnknownIdent>).
	short iObjTyp;	// @field (unused)
	short iFlags;	// @field Enth�lt Modi von ObjCreate. Es kann folgende Werte
		// enthalten:
		// @flag OGNewObject | Es wird ein neues Objekt erzeugt (default).
		// @flag OGTempObject | Es wird ein tempor�res Objekt erzeugt.
} OBJCREATE;

// Strukturen f�r die Abfrage/Modifikation der Objektgeometrie ----------------
typedef struct tagOBJGEOMETRIE {
	DWORD dwSize;
	long lONr;		// ObjektNummer
	long lIdent;		// Identifikator
	short iObjTyp;		// ObjektTyp (Punkt, Kante, Fl�che, ...)
	short iFlags;		// Modi von ModGI
//
// dieser Teil ist spezifisch f�r den Fall einer neuen Geometrie
	long lCnt;		// Gesamtanzahl der St�tzpunkte (Gr��e der KoordFelder)
	short iKCnt;		// Gr��e des KonturFeldes
	void *pdblX;		// KoordinatenFelder (double */long *)
	void *pdblY;
	long *plCnt;		// Anzahl der St�tzpunkte in Konturen
} OBJGEOMETRIE;

typedef struct tagCOPYGEOMETRIE {
	DWORD dwSize;
	long lONr;		// ObjektNummer
	long lIdent;		// Identifikator
	short iObjTyp;		// ObjektTyp (Punkt, Kante, Fl�che, ...)
	short iFlags;		// Modi von ModGI
//
// dieser Teil ist spezifisch f�r den Fall GeometrieOverlay
	long lTargetONr;	// ObjektNummer der BezugsGeometrie
} COPYGEOMETRIE;

typedef struct tagTEXTGEOMETRIE {
	DWORD dwSize;
	long lONr;		// ObjektNummer
	long lIdent;		// Identifikator
	short iObjTyp;		// ObjektTyp (Punkt, Kante, Fl�che, ...)
	short iFlags;		// Modi von ModGI
//
// dieser Teil ist spezifisch f�r den Fall Textobjekt
	long lCnt;		// Gesamtanzahl der St�tzpunkte (Gr��e der KoordFelder)
	short iKCnt;		// hier: (max.) Textl�nge
	void *pdblX;		// KoordinatenFelder (double */long *)
	void *pdblY;
	char *pText;		// Text des Textobjektes
} TEXTGEOMETRIE;

typedef struct tagTEXTGEOMETRIEEX {
	DWORD dwSize;
	long lONr;		// ObjektNummer
	long lIdent;		// Identifikator
	short iObjTyp;		// ObjektTyp (Punkt, Kante, Fl�che, ...)
	short iFlags;		// Modi von ModGI
//
// dieser Teil ist spezifisch f�r den Fall Textobjekt
	long lCnt;		// Gesamtanzahl der St�tzpunkte (Gr��e der KoordFelder)
	short iKCnt;		// hier: (max.) Textl�nge
	void *pdblX;		// KoordinatenFelder (double */long *)
	void *pdblY;
	char *pText;		// Text des Textobjektes
	BOOL fIndObjProp;	// Text ist evtl. IndirektLabel
} TEXTGEOMETRIEEX;

// Werte, die in iFlags die Modi von Query/ModObjGeometrie bestimmen
#define OGConverted		0x01	// Koordinaten konvertiert/!konvertiert

#define OGNewObject		0x02	// neues Objekt generieren
#define OGModObject		0x04	// Geometrie des Objektes ersetzen
#define OGTempObject		0x08	// tempor�res Objekt generieren
#define OGOverlay		0x10	// Geometrie �berlagern

#define OGForceGeometry		0x20	// auch au�erhalb des aktuellen DBConts importieren
#define OGAddToView		0x40	// zur aktuellen Sicht hinzuf�gen
#define OGForceGeoError		0x80	// Objekt wird bei Geometriefehler von GEOREIN abgewiesen

#define OGIgnoreGeometry	0x0100	// Geometrie ignorieren (nicht ver�ndern)
#define OGIgnoreIdent		0x0200	// Identifikator ignorieren

#define OGObjectHasGeometryErrors	0x1000		// Objekt hat Geometriefehler, wurde jedoch importiert
#define OGAskWhenError		0x2000	// GeoRein soll bei fehlerhafter Geometrie nochmal nachfragen
#define OGGeometryIsChecked	0x4000	// Geometrie ist bereits getestet
#define OGNoMemoryObject	0x8000	// debugging purposes

#define OGPunkt		0
#define OGLinie		1
#define OGFlaeche	2
#define OGKreis		3
#define OGKO		4
#define OGText		5
#define OGUnknown	6
#define OGLabel		7
#define OGSachObjekt	0x80	// zus�tzliches Flag (BLOB - Flag)

#define OTPunkt		0x01
#define OTLinie		0x02
#define OTFlaeche	0x04
#define OTText		0x08
#define OTKO		0x10
#define OTSachObjekt	0x20	// zus�tzliches Flag (BLOB - Flag)

///////////////////////////////////////////////////////////////////////////////
// Virtuelle Objekte/Objektklassen in Enumeration einschlie�en
#define EnumVirtualData		0x80000000L

// ----------------------------------------------------------------------------
typedef struct tagRESETATTRDATA {
	long lONr;
	void *pVI;
} RESETATTRDATA;

// Struktur, die beim Generieren eines ObjRechercheFensters ben�tigt wird -----
typedef struct tagCREATEOBJEKTINFO {
	DWORD dwSize;
	char *lpCaption;	// FensterCaption
	long *plObjs;		// ObjektNummern, die angezeigt werden sollen
	short iNumObjs;		// Anzahl der ObjektNummern
	COLORREF cMColor;	// Markierungsfarbe
	POINT pntPos;		// AnfangsPosition im Hauptfenster
} CREATEOBJEKTINFO;

typedef short (CALLBACK *CMPONRPROC)(long lONr1, long lONr2, DWORD dwData);

typedef struct tagCREATEOBJEKTINFOEX {
	DWORD dwSize;
	char *lpCaption;	// FensterCaption
	long *plObjs;		// ObjektNummern, die angezeigt werden sollen
	short iNumObjs;		// Anzahl der ObjektNummern
	COLORREF cMColor;	// Markierungsfarbe
	POINT pntPos;		// AnfangsPosition im Hauptfenster
// zus�tzliche Member #HK940920
	short m_iFlags;		// Bitmuster f�r die Abfrage
	HWND m_hWnd;		// evtl. FensterHandle f�r Target-ORFenster
	CMPONRPROC m_pCmpProc;	// evtl. Vergleichsfunktion f�r Reihenfolge
	DWORD m_dwData;		// evtl. Daten f�r SortierFunktion
} CREATEOBJEKTINFOEX;

#if defined(WIN32)

typedef struct tagCREATEOBJEKTINFOEX2 {
	DWORD dwSize;
	char *lpCaption;	// FensterCaption
	long *plObjs;		// ObjektNummern, die angezeigt werden sollen
	short iNumObjs;		// Anzahl der ObjektNummern
	COLORREF cMColor;	// Markierungsfarbe
	POINT pntPos;		// AnfangsPosition im Hauptfenster
// zus�tzliche Member #HK940920
	short m_iFlags;		// Bitmuster f�r die Abfrage
	HWND m_hWnd;		// evtl. FensterHandle f�r Target-ORFenster
	CMPONRPROC m_pCmpProc;	// evtl. Vergleichsfunktion f�r Reihenfolge
	DWORD m_dwData;		// evtl. Daten f�r SortierFunktion
// #HK951116
	LPUNKNOWN m_pIObjProp;	// anzuzeigende Objekteigenschaft
} CREATEOBJEKTINFOEX2;

#endif // WIN32

// Datenstrukturen f�r ObjPropFunc's ------------------------------------------
// @func BOOL | ENUMOBJPROPCALLBACK | R�ckruf-Funktion, die durch <tr> installiert ist,
// um von einer Erweiterung f�r jede installierte Objekteigenschaft gerufen zu werden.
// Auf diesem Wege kann eine Erweiterung ihre derzeit aktiven Objekteigenschaften
// registrieren.<nl>Diese Funktion wird bei der Message <m DEX_ENUMEXTENSIONPROP> 
// verwendet.
// @rdesc Eine Erweiterung sollte <t true> liefern, wenn diese Message bearbeitet
// wurde, ansonsten <t false>
// @parm const char * | pFName | Der Name der zu installierenden Objekteigenschaft.
// @parm short | iFuncID | Der ID der Funktion, �ber den diese angesprochen werden kann.
// @parm BOOL | iNotLast | Dieser Wert gibt an, ob der aktuelle Aufruf der Funktion
// @parm void * | pData | An <tr> durchzureichende Daten.
// @xref <t ENUMOBJPROPDATA>, <m DEX_ENUMEXTENSIONPROP>
typedef BOOL (CALLBACK *ENUMOBJPROPCALLBACK)(const char *pFName, short iFuncID, BOOL iNotLast, void *pData);
typedef ENUMOBJPROPCALLBACK ENUMOBJPROPPROC;
//typedef BOOL (*ENUMOBJPROPPROC)(const char *pFName, short iFuncID, BOOL iNotLast, void *pData); // obsolete

// @struct ENUMOBJPROPDATA | Diese Datenstruktur wird verwendet, um eine Erweiterung
// aufzufordern, ihre Objekteigenschaften zu installieren (Message <m DEX_ENUMEXTENSIONPROP>).
// <nl>Die Implementation der Standard-Basisklasse <c CObjectpropertyExtension> 
// bearbeitet diese Message vollst�ndig.
// @comm Der Wert im Feld <p pPtr> mu� unver�ndert beim Aufruf der Enumerationsfunktion 
// (<p pFunc>) als 4. Parameter an <tr> �bergeben werden.
// @xref <c CObjectpropertyExtension>, <m DEX_ENUMEXTENSIONPROP>, <f ENUMOBJPROPCALLBACK>
typedef struct tagENUMOBJPROPDATA {
	ENUMOBJPROPCALLBACK pFunc;	// @field Funktion, die durch die Erweiterung f�r jede 
	// zu installierende Objekteigenschaft gerufen werden soll.
	void *pPtr;			// @field An <tr> durchzureichende Daten.
} ENUMOBJPROPDATA;

typedef char * (CALLBACK *INTOBJPROPCALLBACK)(long lONr, char *pBuffer, short iLen);
typedef INTOBJPROPCALLBACK INTOBJPROPPROC;
//typedef char * (*INTOBJPROPPROC)(long lONr, char *pBuffer, short iLen);	// obsolete

// @struct INVOKEOBJPROPDATA | Diese Datenstruktur wird verwendet, um eine Erweiterung
// aufzufordern, f�r ein vorgegebenes Objekt eine Objekteigenschaft zu berechnen
// (Message <m DEX_INVOKEOBJPROPFUNC>).
// @xref <m DEX_INVOKEOBJPROPFUNC>
typedef struct tagINVOKEOBJPROPDATA {
	DWORD dwSize;	// @field Die Gr��e dieser Struktur.
	short iFuncID;	// @field ID der zu berechnenden Objekteigenschaft. 
		// Dieser ID wurde bei der Installation der Objekteigenschaft durch 
		// die Erweiterung vorgegeben.
	long lONr;	// @field Objektnummer des Objektes, f�r welches die 
		// Objekteigenschaft berechnet werden soll.
	short iBuffLen;	// @field Maximal m�gliche Anzahl der in den 
		// Ergebnispuffer <p pBuff> kopierbaren Zeichen.
	char *pBuff;	// @field Ergebnispuffer, wo die Erweiterung die 
		// berechnete Objekteigenschaft ablegen mu�.
} INVOKEOBJPROPDATA;

typedef struct tagINVOKEOBJPROPDATAEX {
	DWORD dwSize;
	short iFuncID;
	long lONr;
	short iBuffLen;
	char *pBuff;
	char *pFName;
} INVOKEOBJPROPDATAEX;

typedef struct tagGETHELPTEXTDATA {
	DWORD dwSize;
	short iFuncID;		// zu rufende Funktion
	short iBuffLen;
	char *pBuff;
} GETHELPTEXTDATA;

typedef struct tagGETHELPTEXTDATAEX {
	DWORD dwSize;
	short iFuncID;		// zu rufende Funktion
	short iBuffLen;
	char *pBuff;
	char *pFName;		// FunktionsName
	char *pHelpFile;	// evtl. HelpFile
	ULONG ulHelpCtx;	// mit HelpContext
} GETHELPTEXTDATAEX;

// m�gliche Sonderwerte des FunktionsParameters (sonst ObjektNummer > 0) ------
#if defined(__cplusplus)
typedef enum tagOBJPROPTYPE {
	OBJPROP_EVAL		= 1,
	OBJPROP_RESET		= 0,
	OBJPROP_CUMULATION	= -1,
	OBJPROP_COUNT		= -2,
	OBJPROP_GETHELPTEXT	= -3,
} OBJPROPTYPE;
#else
#define OBJPROP_RESET		 0L
#define OBJPROP_CUMULATION	-1L
#define OBJPROP_COUNT		-2L
#define OBJPROP_GETHELPTEXT	-3L
#endif // __cplusplus

// ----------------------------------------------------------------------------
// @struct INSTALLMENUITEM | Diese Struktur wird verwendet, um einen zus�tzlichen
// Menupunkt in <tr> zu installieren.
// @xref <m DEX_MENUITEMINSTALL>, <f DEX_InstallMenuItem>
typedef struct tagINSTALLMENUITEM {
	DWORD dwSize;	// @field Gr��e dieser Struktur
	HDEX hDex;	// @field Erweiterung, die Behandlung vornimmt
	short iFlag;	// @field Enth�lt Modi von f�rs Menueinh�ngen, 
					// kann folgende Flags enthalten:
		// @flag IMIObjWnd | Der Menupunkt wird in allen Objektrecherchefenstern
		// erzeugt. Die anderen Parameter in dieser Struktur beziehen
		// sich daher auf dieses Menu.
		// @flag IMIStartUpMenu | Der Menupunkt wird im Startmenu von <tr>
		// erzeugt.
		// @flag IMINormalMenu | Der Menupunkt wird im Projektmenu von <tr>
		// erzeugt.
	short iMenuNum;	// @field Nummer des PopupMenus, wo's hinsoll (0 ..)
	short iMenuID;	// @field MenuID dieses Punktes, 
			// <tr> addiert selbst den Menuoffset
	char *pMenuText;// @field Einzuh�ngender MenuText
	short iMenuPos;	// @field Stelle an der es eingeh�ngt werden soll 
			// (-1: ans Ende des Popupmenus)
} INSTALLMENUITEM;

#define IMINormalMenu	0x00
#define IMIObjWnd		0x01
#define IMIStartUpMenu	0x02
#define IMIOrigMenuItem	0x80

// @struct REMOVEMENUITEM | Diese Struktur wird verwendet, um einen zus�tzlich
// installierten Menupunkt wieder in <tr> zu entfernen.
// @xref <m DEX_REMOVEMENUITEM>
typedef struct tagREMOVEMENUITEM {
	DWORD dwSize;	// @field Gr��e dieser Struktur
	HDEX hDex;	// @field Erweiterung, die Eigner dieses Menupunktes ist
	short iFlag;	// @field false: HauptMenu, 
			// true: Objektrecherche-Menu's
	short iMenuNum;	// @field Nummer des PopupMenus, in dem sich der
			// Menupunkt befindet (0 ..)
	short iMenuID;	// @field MenuID des herauszul�sende Menuitems ohne 
			// Ber�cksichtigung des Menuoffsets
} REMOVEMENUITEM;

// Strukturen zum Einh�ngen/Rausnehmen eines Werkzeuges -----------------------
// @struct INSTALLTOOL | Diese Struktur wird verwendet, um ein zus�tzliches 
// Werkzeug in <tr> zu installieren (mit der Message <m DEX_TOOLINSTALL>).
// @xref <m DEX_TOOLINSTALL>, <m DEX_TOOLREMOVE>
typedef struct tagINSTALLTOOL {
	DWORD dwSize;	// @field Die Gr��e dieser Struktur.
	char *pDesc;	// @field Zeichenkette, die im Werkzeug-Menu von <tr>
			// eingeh�ngt wird, um ein Tastatur-Interface f�r die
			// Werkzeugauswahl zu gew�hrleisten
	HBITMAP hBmp;	// @field Handle der Bitmap, welche in der Werkzeugleiste
			// angezeigt wird. Diese Bitmap wird durch <tr> freigegeben.
} INSTALLTOOL;

// SelektionsFarbe eines Objektes in einem ORFenster �ndern -------------------
typedef struct tagCHANGEACTIVECOLOR {
	DWORD dwSize;
	HWND hWnd;		// FensterHandle des ORFensters
	long lONr;		// ObjektNummer des betreffenden Objektes
	COLORREF newC;		// neue/alte Farbe
} CHANGEACTIVECOLOR;	

// Identifikator modifizieren ------------------------------------------------
typedef struct tagMODOBJIDENT {
	DWORD dwSize;
	long lONr;
	long lNewIdent;
	short iMode;
} MODOBJIDENT;                                                                

// Werte von iMode 
#define MODIDENT_PUNKT		0x01	// GeoTyp umklassifizieren
#define MODIDENT_LINIE 		0x02
#define MODIDENT_FLAECHE	0x04
#define MODIDENT_TEXT		0x08
#define MODIDENT_KOMPLEX	0x10
#define MODODENT_SACH		0x20

#define MODIDENT_TYP		0x3f

#define MODIDENT_TEMP		0x100	// tempor�r umklassifizieren
#define MODIDENT_ADDTOVIEW	0x200	// zur Sicht hinzuf�gen


// KoordinatenTransformation (DCtoOC und OCtoDC) ------------------------------
typedef struct tagCOORDCONVERT {
	POINT *lpPt;	// POINT
	long *lpPkt;	// Punkt !!
} COORDCONVERT;

// KoordinatentransformationsStruktur -----------------------------------------
typedef struct tagCOORDTRANSFORM {	// RCtoOC oder OCtoRC
	DWORD dwSize;
	long *m_Pts;		// DatenbasisKoordinaten (Punkt!)
	double *m_rcPts;	// RealKoordinaten
} COORDTRANSFORM;

// Enumeration aller Objekte der aktuellen Sicht, die einen BildSchirmPunkt
// �berdecken
typedef BOOL (*FINDOBJECTPROC)(long Key, RECT Rc, void *pData);
typedef BOOL (CALLBACK *FINDOBJECTCALLBACK)(long Key, RECT Rc, void *pData);

typedef struct tagFINDOBJECT {
	DWORD dwSize;
	POINT Pt;		// gegebener BildschirmPunkt
	short iFOMode;		// gesuchte Objekttypen
	FINDOBJECTPROC eFcn;	// zu rufende Funktion
	void *pData;		// durchgereichte Daten
} FINDOBJECT;

// gesuchte Objekttypen (in iFOMode)
#define FOPunkt		0x01
#define FOKante		0x02
#define FOFlaeche	0x04
#define FOText		0x08

// Nachfrage bzw. Beeinflussen der Anzeige recherierter Objekte in einem
// Objektrecherchefenster
typedef struct tagRECHOBJECT {
	DWORD dwSize;
	long lONr;		// ObjektNummer
	long lIdent;		// Identifikator
	char *lpText;		// anzuzeigender Text
	short iTextLen;		// Gr��e des TextBuffers
	short iOTyp;		// ObjektTyp
	short iFlags;		// anzuzeigende Informationen
} RECHOBJECT;

//////////////////////////////////////////////////////////////////////////////
// Ersetzen eines Eintrages in einem ObjRechWnd durch ein anderes Objekt
typedef struct tagREPLACEOBJECT {
	DWORD dwSize;
	long lONr;
	long lNewONr;
} REPLACEOBJECT;

// Flags, die in iFlags gesetzt werden k�nnen --------------------------------
#define ROHideObjNr	0x0001	// ObjektNummer nicht anzeigen
#define ROHideIdent	0x0002	// Identifikator nicht anzeigen
#define ROHideObjTyp	0x0004	// ObjTyp nicht anzeigen
#define ROHideText	0x0008	// Text nicht anzeigen
#define ROHideFlags 	0x000f

#define ROSortObjNr	0x0010	// sortieren nach Objektnummer
#define ROSortIdent	0x0020	// Identifikator
#define ROSortObjTyp	0x0040	// ObjektTyp
#define ROSortText	0x0080	// angezeigtem Text
#define ROSortFlags	0x00f0

#define ROShowHidden	0x0100	// ausgeblendete Objekte mit anzeigen
#define ROCreateHidden	0x0200	// Fenster erzeugen aber nicht anzeigen

// Flags f�r DEX_RECHOBJECTSTATUS --------------------------------------------
#define RSNothing 	0x0000	// nicht in ORFenster enthalten
#define RSListed	0x0100	// in ORFenster enthalten
#define RSSelected	0x0200	// in ORFenster selektiert
#define RSActivated	0x0400	// in ORFenster aktiviert

#define RSFillIdent	0x1000	// Identifikator liefern
#define RSFillText	0x2000	// Text liefern
#define RSFillOTyp	0x4000	// OTyp liefern

// Relationen ----------------------------------------------------------------
// DEX_MODRELATION
typedef struct tagMODRELATION {
	DWORD dwSize;
	long lPONr;		// Prim�rObjekt
	long lSONr;		// Sekund�rObjekt
	long lRCode;		// RelationsCode
	short iRTyp;		// RelationsTyp
} MODRELATION;

// DEX_DELRELATION
typedef struct tagDELRELATION {
	DWORD dwSize;
	long lPONr;		// Prim�rObjekt
	long lSONr;		// Sekund�rObjekt
	long lRCode;		// RelationsCode
	short iRTyp;		// RelationsTyp
} DELRELATION;

// Enumeration aller Relationen eines Objektes --------------------------------
// DEX_ENUMRELATIONOBJS -------------------------------------------------------
typedef BOOL (*ENUMRELOBJPROC)(long lONr, long lRCode, short iRTyp, void *pData);
typedef BOOL (CALLBACK *ENUMRELOBJCALLBACK)(long lONr, long lRCode, short iRTyp, void *pData);

typedef struct tagENUMRELATIONOBJS {
	DWORD dwSize;
	long lONr;		// Bezugsobjekt, f�r das Relationen geliefert werden
	long lRCode;		// zu untersuchende Relation (-1: alle)
	short iRTyp;		// zu untersuchende RelationsTypen
	ENUMRELOBJPROC eFcn;	// zu rufende Funktion
	void *pData;		// durchgereichte Daten
} ENUMRELATIONOBJS;

// RelationsTypen ------------------------------------------------------------
#define RTKomplexO	0x01	// Komplexrelation lPONr -> lSONr
#define RTKomplexU	0x02	// inv. Komplexrelation lPONr <- lSONr
#define RTGleich	0x04	// Gleichrangige Relation
#define RTBegleitO	0x08	// BegleitRelation (hat BegleitObjekt)
#define RTBegleitU	0x10	// BegleitRelation (ist Begleitobjekt)


// Strukturen f�r das Modifizieren/Abfragen von VisInfo's --------------------
#if !defined(VISNAMESIZE)
#define VISNAMESIZE	32
#endif

typedef struct tagVISINFO {
	short m_Priority;	// Priorit�t
	short m_Style;		// DarstellungsStyle
	char m_VisName[VISNAMESIZE];		// evtl. Typname (ohne '\0')
	COLORREF m_C;		// Prim�rfarbe
} VISINFO;

typedef struct tagDVISINFO {
	VISINFO m_VI;		// allgemeine VisInfo
	short m_iDefTypes;	// sonstige IdentGeoTypen
} DVISINFO;

typedef struct tagPVISINFO {
	VISINFO m_VI;		// allgemeine VisInfo
	SIZE m_Size;		// Punktgr��e
	short m_iRot;		// Drehwinkel (#HK951015)
	COLORREF m_SecC;	// zweite Farbe (#HK951102)
} PVISINFO;

typedef struct tagLVISINFO {
	VISINFO m_VI;		// allgemeine VisInfo
	short m_Width;		// LinienBreite
} LVISINFO;

typedef struct tagFVISINFO {
	VISINFO m_VI;		// allgemeine VisInfo
	COLORREF m_FC;		// F�llfarbe
#if !defined(OLDVISINFO)
	short m_iWidth;		// Konturdicke (#HK931218)
	short m_iAttrEx;	// (zus�tzliche) Attribute
#endif // OLDVISINFO
} FVISINFO;

typedef struct tagTVISINFO {
	VISINFO m_VI;		// allgemeine VisInfo
	SIZE m_Size;		// TextGr��e
	short m_Type;		// FontArt
	short m_Rot;		// Drehwinkel
	short m_Orient;		// BuchstabenNeigung
} TVISINFO;


// DatenStruktur, die zum Datentransfer bez�glich einer VisInfo verwendet wird 
typedef struct tagHANDLEVISINFO {	// Abfrage/Modifikation 
	DWORD dwSize;
	long m_lONr;		// Target (ObjektNummer)
	long m_lIdent;		// Identifikator
	short m_iVTyp;		// VisInfoTyp
	short m_fFlags;		// zu �ndern bzw. ge�ndert
	char *m_pDesc;		// beschreibender Text
	char *m_pView;		// evtl. SichtName (aktuelle Sicht: NULL)
	VISINFO *m_pVI;		// generischer Pointer auf VisInfo
	HWND m_hWnd;		// als ParentWindow verwenden	
} HANDLEVISINFO;


// Laden/Entladen einer Erweiterung von au�en --------------------------------
typedef struct tagLOADEXTENSIONEX {
	const char *m_pDesc;
	const char *m_pName;
	short m_iMode;
	BOOL m_fGlobal;
} LOADEXTENSIONEX;
// die Modi in m_iMode entsprechen denen von TRIASLOADEX
	
// Neu anlegen einer GeoDB/IdentsDB ------------------------------------------
typedef struct tagCREATEDB {
	DWORD dwSize;
	char *m_pName;
	char *m_pUser;
	char *m_pPassWd;
	short m_iMode;		// OpenMode (OM_...) | DBV...
} CREATEDB;

typedef struct tagCREATEDBEX {
	DWORD dwSize;
	char *m_pName;
	char *m_pUser;
	char *m_pPassWd;
	short m_iMode;		// OpenMode (OM_...) | DBV...
	LPSTORAGE m_pIStorage;
	const CLSID *m_pClsID;	// ClassID, (NULL f�r CLSID_DirisProject)
	LPCSTR m_pCFStr;	// ClipboarFormat (NULL f�r TRiAS.Document.2)
} CREATEDBEX;

#define DBVNormal	0x0000	// Trias1.20 Projekt
#define DBVCompFile	0x1000	// Trias1.30 Projekt
#define DBVCompatible	0x2000	// TRiAS1.30 16 Bit kompatibel
#define DBVFlags	0xf000	// Flags f�r VersionsKennung

// Rendering der GeoDB in einen vorgegeben DeviceContext ---------------------
#if !(defined(_OLE2_H_) || defined(WIN32))
typedef struct tagPOINTL {
	long x;
	long y;
} POINTL;

typedef struct tagRECTL {
	long left;
	long top;
	long right;
	long bottom;
} RECTL;
#endif // _OLE2_H_

typedef struct tagRENDERGEODB {
	DWORD dwSize;
	HDC m_hDC;		// AusgabeDC
	HDC m_hTargetDC;	// TargetDC
	RECTL m_rclFrame;	// Ausgabebereich
	RECTL m_rclGeoDB;	// Ausgabeausschnitt
	RECTL m_rclClipBox;	// ClippingRechteck
} RENDERGEODB;

// Besorgen des Textes eines Textobjektes ------------------------------------
typedef struct tagGETTEXTDATA {
	DWORD m_dwSize;
	long m_lONr;
	char *m_pText;
	short m_iLen;
} GETTEXTDATA;

// Wegschreiben eines neuen Textes f�r ein Textobjekt (DEX_PUTTEXTOBJECTTEXT)
typedef struct tagPUTTEXTDATA {
	DWORD dwSize;
	long m_lONr;
	const char *m_pcText;
} PUTTEXTDATA;

typedef struct tagPUTTEXTDATAEX {
	DWORD dwSize;
	long m_lONr;
	const char *m_pcText;
	BOOL m_fIndObjProp;		// Textobjekt ist Labelobjekt
} PUTTEXTDATAEX;

// BeschreibungsInfo f�r Sicht -----------------------------------------------
// Messages: DEX_MODVIEWDESCRIPTION, DEX_QUERYVIEWDESCRIPTION
typedef struct tagVIEWDESC {
	DWORD m_dwSize;
	char *m_pView;
	char *m_pDesc;
	short m_iLen;
} VIEWDESC;

// Enumeration der topologischen Relationen ----------------------------------
// Message: DEX_ENUMTOPRELATIONS
typedef struct tagENUMTOPRELS {
	DWORD m_dwSize;
	long m_lONr;		// zu untersuchendes Objekt
	ENUMLONGKEYPROC m_eFcn;	// zu rufende Funktion
	DWORD m_dwData;		// durchgereichte Daten
	short m_iMode;		// weitere Flags
	char *m_pView;		// NULL: aktuelle Sicht verwenden
} ENUMTOPRELS;

#define ETRAnalyzeView	0x01	// zus�tzlich �ber Sicht filtern

// @struct VIEWIDENTOBJECT | Diese Struktur wird in Funktionen verwendet, die
// als Parameter eine Ansicht, einen Identifikator/ ein Objekt und/oder einen
// Objekttyp verlangen.
// @comm Es sind im allgemeinen nicht alle Felder dieser Struktur zu belegen.
// Meist sind je nach Funktion nur die Felder <p m_plIdent> und <p m_iOTyp> oder 
// das Feld <p m_lONr> belegt. Die jeweils nicht benutzten Felder sollten 
// ausgenullt sein.
// @xref <m DEX_DELETEIDENTFROMVIEW>, <m DEX_HASVIEWIDENT>, <m DEX_HASVIEWOBJECT>
typedef struct tagVIEWIDENTOBJECT {
	DWORD dwSize;	// @field Die Gr��e dieser Struktur.
	char *m_pView;	// @field Der Sichtname der Ansicht, auf die 
		// sich der Funktionsaufruf bezieht. NULL bedeutet, da� die 
		// aktuelle Ansicht verwendet werden soll.
	ULONG m_lIdent;	// @field Der Identifikator, f�r den die
		// Funktion ausgef�hrt werden soll.
	long m_lONr;	// @field Die Objektnummer des Objektes, f�r 
		// welches die Funktion ausgef�hrt werden soll.
	short m_iOTyp;	// @field Die Objekttypen, f�r die die Funktion
		// ausgef�hrt werden soll. Dieses Feld kann folgende Flags oder
		// eine ihrer Kombinationen enthalten:
} VIEWIDENTOBJECT;
// @flag OTPunkt	| Punktobjekte behandeln.
// @flag OTLinie	| Linienobjekte behandeln.
// @flag OTFlaeche	| Fl�chenobjekte behandeln.
// @flag OTText		| Textobjekte behandeln.
// @flag OTKO		| Komplexobjekte behandeln (not implemented yet, soory).
// @flag OTSachObjekt	| Sachobjekte behandeln (not implemented yet, soory).

// @struct RENAMEVIEW | Diese Struktur wird verwendet, um eine Ansicht umzubenennen.
// @comm Wenn der Name der umzubenennenden Ansicht nicht vorgegeben wird, so wird
// die aktuelle Ansicht umbenannt.
// @xref <m DEX_VIEWRENAME>
typedef struct tagRENAMEVIEW {
	DWORD dwSize;		// @field Die Gr��e dieser Struktur.
	const char *m_pOldName;	// @field Der Name der umzubenennenden Ansicht.
	const char *m_pNewName;	// @field Der neue Name, den die Ansicht erhalten soll.
} RENAMEVIEW;

// @struct VIEWCREATED | Diese Sruktur wird als Parameter der Notifikation 
// <m DEX_VIEWCREATED> verschickt.
// @comm Diese Notifikation getattet es einer Erweiterung zus�tzliche Aktionen
// vorzunehmen, die die neu angelegte Sicht betreffen.
// @xref <m DEX_VIEWCREATED>
typedef struct tagVIEWCREATED {
	DWORD dwSize;		// @field Die Gr��e dieser Struktur.
	const char *m_pTarget;	// @field Der Name der Sicht, die als Bezugssicht verwendet wird.
	const char *m_pNewName;	// @field Der Name der neu angelegten Sicht.
	short m_iMode;		// @field Enth�lt die Modi, die beim anlegen der neuen
		// Sicht verwendet wurden. Dieses Feld kann folgende Werte bzw. ihre
		// Kombination annehmen:
} VIEWCREATED; 
// @flag VCUseTargetView | Es soll die Visualisierungs-Information der Bezugssicht
// verwendet werden.
// @flag VCDeleteTarget | Die Bezugssicht soll gel�scht werden.
// @flag VCFeaturesMoved | Die neue Sicht hat bereits die Eigenschaften (Merkmale und Relationen)
// de Bezugssicht �bernommen.
#define VCUseTargetView	0x01
#define VCDeleteTarget	0x02
#define VCFeaturesMoved	0x04

// Flags (Returnkonstanten) f�r DEX_VIEWCREATEOPT ----------------------------
#define CVError		0
#define CVCreated	1
#define CVExists	2

//////////////////////////////////////////////////////////////////////////////
// Struktur f�r DEX_CLIPOBJECTSET
// @struct CLIPOBJECTSET | Diese Sruktur wird als Parameter der Message
// <m DEX_CLIPOBJECTSET> verschickt.
// @comm Diese Message getattet es einer Erweiterung das Clipping Objekt f�r 
// eine Ansicht zu modifizieren.
// @xref <m DEX_CLIPOBJECTSET>
typedef struct tagCLIPOBJECTSET {
	DWORD dwSize;			// @field Die Gr��e dieser Struktur.
	const char *m_pcView;	// @field Der Name der Anicht, die bearbeitet 
		// werden soll (wenn NULL, dann aktuelle Ansicht verwenden)
	long m_lONr;			// @field Objektnummer des als Clipping Objekt 
		// zu verwendeneden Objektes
} CLIPOBJECTSET;

//////////////////////////////////////////////////////////////////////////////
// Struktur f�r DEX_SHOWOBJPROP
// @struct SHOWOBJPROP | Diese Sruktur wird als Parameter der Message
// <m DEX_SHOWOBJPROP> verschickt.
// @comm Diese Message getattet es einer Erweiterung die aktuell in einem 
// Recherchefenster angezeigte Objekteigenschaft zu modifizieren.
// @xref <m DEX_SHOWOBJPROP>
typedef struct tagSHOWOBJPROP {
	DWORD dwSize;			// @field Die Gr��e dieser Struktur.
	IUnknown *m_pIObjProp;	// @field Die anzuzeigende Objekteigenschaft
	int m_iFlags;			// @field Zus�tzliche Flags, die weiter Optionen
		// vorgeben k�nnen.
} SHOWOBJPROP;
#define SOPLeaveOldProps	0x00	// @flag SOPLeaveOldProps | Objekteigenschaft nur f�r neu hinzukommende Objekte verwenden.
#define SOPReloadProps		0x01	// @flag SOPReloadProps | Objekteigenschaften f�r alle Objekte neu lesen.

//////////////////////////////////////////////////////////////////////////////
// DEX_IDENTFROMCLASS
typedef struct tagIDENTFROMCLASS {
	DWORD dwSize;
	LPCSTR pcClass;		/*[in]*/
	ULONG ulIdent;		/*[out]*/
	BOOL fCreateNew;	/*[in]*/
} IDENTFROMCLASS;

//////////////////////////////////////////////////////////////////////////////
// DEX_CLASSFROMIDENT
typedef struct tagCLASSFROMIDENT {
	DWORD dwSize;
	ULONG ulIdent;		/*[in]*/
	LPSTR pClass;		/*[out]*/
	int iBuffLen;		/*[in,out]*/
} CLASSFROMIDENT;

//////////////////////////////////////////////////////////////////////////////
// DEX_MODOBJCLASSCODE
typedef struct tagMODOBJCLASSCODE {
	DWORD dwSize;
	ULONG ulIdent;		/*[in]*/
	LPCSTR pcClass;		/*[in]*/
	BOOL fOverWrite;	/*[in]*/
} MODOBJCLASSCODE;

///////////////////////////////////////////////////////////////////////////////
// Flags f�r QueryMode/SetMode 
#define QMSysAdmin	0x01			// SysAdminMode aktiv
#define QMAutomation	0x02		// /Automation auf CmdLine
#define QMEmbedding	0x04			// /Embedding auf CmdLine
#define QMTipOfTheDay	0x08		// -t auf CmdLine
#define QMShowSysFeatures	0x10	// Systeminterne Merkmale anzeigen

///////////////////////////////////////////////////////////////////////////////
// Konstanten f�r die Verwaltung des TipOfTheDay 
#define TOTD_LookAtRegistry	0x00	// Voreinstellungen verwenden
#define TOTD_ForceNoTips	0x01	// auf keinen Fall Tips anzeigen
#define TOTD_ForceTips		0x02	// auf jeden Fall Tips anzeigen
#define TOTD_ForceNoWizard	0x04	// auf keinen Fall Wizard anzeigen

///////////////////////////////////////////////////////////////////////////////
// Priority abfragen/einstellen
// @xref <m DEX_QUERYIDENTPRIORITY>, <m DEX_MODIFYIDENTPRIORITY>
typedef struct tagIDENTPRIORITY {
	DWORD dwSize;
	ULONG ulIdent;		/*[in]*/
	int iVisType;		/*[optional,in]*/
	LONG lONr;			/*[optional,in]*/
	LPCSTR pcView;		/*[optional,in]*/
	int iPriority;		/*[in] (Set) or [out] (Get)*/
} IDENTPRIORITY;

///////////////////////////////////////////////////////////////////////////////
// Visualles Aktivieren/Deaktivieren eines Objektes
// @xref <m DEX_OBJECTSELECTED>, <m DEX_OBJECTUNSELECTED>
typedef struct tagACTIVATEOBJECT {
	DWORD dwSize;
	LONG lONr;			/*[in]*/
	COLORREF crAct;		/*[in]*/
} ACTIVATEOBJECT;

typedef struct tagACTIVATEOBJECTEX {
	DWORD dwSize;
	LONG lONr;			/*[in]*/
	COLORREF crAct;		/*[in]*/
	BOOL fAssoc;		/*[in], true: evtl. abh�ngige Objekte ebenfalls kennzeichnen */
} ACTIVATEOBJECTEX;

///////////////////////////////////////////////////////////////////////////////
// #WM970814
typedef struct tagOBJECTSPLITTED {
	DWORD dwSize;
	LONG m_lONrOrig;	// Ursprungsobjekt
	LONG m_lONrNew1;	// neues Objekt 1
	LONG m_lONrNew2;	// neues Objekt 2
} OBJECTSPLITTED;

///////////////////////////////////////////////////////////////////////////////
// Struktur, um ein Objektanzahl abzufragen
typedef struct tagIDENTOBJECTCOUNT {
	DWORD dwSize;
	ULONG ulIdent;		// Identifikator
	int iOTypes;		// Objekttypen (OTPunkt| ...)
} IDENTOBJECTCOUNT;

///////////////////////////////////////////////////////////////////////////////
// Verwaltung des ObjectGUID's
// @xref <m DEX_QUERYOBJECTGUID>, <m DEX_FINDOBJECTGUID>, <m DEX_SETOBJECTGUID>
typedef struct tagOBJECTGUID {
	DWORD dwSize;
	LONG lONr;			// ObjektNummer
	struct _GUID guid;	// zugeh�riger Guid
} OBJECTGUID;

///////////////////////////////////////////////////////////////////////////////
// Verwaltung der MRUItems
// @xref <m DEX_QUERYMRUITEM>, <m DEX_DELETEMRUITEM>, <m DEX_ADDMRUITEM>
typedef struct tagADDMRUITEM {
	DWORD dwSize;
	LPCSTR pcName;		// ProjektName
	BOOL fRO;			// RO ge�ffnet
	BOOL fStartup;		// StartUp oder ProjektMenu
} ADDMRUITEM;

typedef struct tagGETMRUITEM {
	DWORD dwSize;
	UINT uiMenuID;		// MenuID
	LPSTR pName;		// ProjektName
	int iLen;			// sizeof(pName)
	BOOL fRO;			// RO ge�ffnet
	BOOL fStartup;		// StartUp oder ProjektMenu
} GETMRUITEM;

typedef struct tagDELMRUITEM {
	DWORD dwSize;
	UINT uiMenuID;		// MenuID
	BOOL fStartup;		// StartUp oder ProjektMenu
} DELMRUITEM;

/////////////////////////////////////////////////////////////////////////////
// Abfrage von Info's �ber eine Extension
// @xref <m DEX_QUERYEXTENSIONINFO>
typedef struct tagEXTENSIONINFO {
	DWORD dwSize;
	LPSTR pcDLLName;	// [in] ProgID der zu untersuchenden Erweiterung
	HDEX hDex;			// [out] InstanceHandle der Erweiterung
	LPSTR pName;		// [out] Name der Erweiterung
	int iLen;			// [in, out] sizeof(pName)
	DWORD rgFlags;		// [out] Flags dieser Erweiterung (EXTENSIONFLAGS)
	int iLoadState;		// [out] LadeStatus
} EXTENSIONINFO;

// @xref <m DEX_QUERYEXTENSIONPTR>
typedef struct tagEXTENSIONPTR {
	DWORD dwSize;
	LPCSTR pcDLLName;	// [in] ProgID der zu untersuchenden Erweiterung
	IUnknown **ppIUnk;	// [out] ITriasExtension **
} EXTENSIONPTR;

///////////////////////////////////////////////////////////////////////////////
// Objekteigenschaft wurde modifiziert
typedef struct tagFEATUREMODIFIED {
	DWORD dwSize;
	LONG lONr;			// [in] Objektnummer des modifizierten Objektes
	LPCSTR pcName;		// [in] Name der modifizierten Objekteigenschaft
} FEATUREMODIFIED;

///////////////////////////////////////////////////////////////////////////////
// Objektklassen ma�stabsbezogen ein/ausblenden
typedef struct tagIDENTSCALEDATA {
	DWORD dwSize;
	LPCSTR pcView;		// [in] Ansicht (NULL entspricht aktueller Ansicht)
	LONG lIdent;		// [in] untersuchter Identifikator
	int iVTyp;			// [in] interessierender Visualisierungstyp (VisInfoTyp)
	LONG lUpperScale;	// [in/out] obere Ma�stabsgrenze (0 --> l�schen)
	LONG lLowerScale;	// [in/out] untere Ma�stabsgrenze (0 --> l�schen)
} IDENTSCALEDATA;

// ExtensionFunc's -----------------------------------------------------------
#if defined(__cplusplus)
typedef LRESULT (*EXTPROC)(...);
// typedef LRESULT (CALLBACK *EXTCALLBACK)(...);
#else
typedef LRESULT (*EXTPROC)();
typedef LRESULT (CALLBACK *EXTCALLBACK)();
#endif

// eigentliche Schnittstellenfunktion -----------------------------------------
#include <xtensnm.hxx>		// Manifestkonstanten

extern "C" _XTENSN_ENTRY LRESULT WINAPI TriasExtensionProc (HWND, UINT, WPARAM, LPARAM);

// n�tzliche Makros
#if !defined(DELETE)
#define DELETE(x) {if(x) { delete(x); (x)=NULL; }}
#if defined(MSCC8) || _MSC_VER >= 800
#define DELETE_VEC(x)	{if(x){delete [] (x); (x)=NULL;}}
#else
#define DELETE_VEC(x,s)	{if(x){delete [(s)] (x); (x)=NULL;}}
#endif
#endif

#define INITSTRUCT(v,t)			\
	memset(&(v),'\0',sizeof(t));	\
	(v).dwSize=sizeof(t);

#include <poppack.h>

#if defined(__cplusplus)
}	// extern "C"
#endif

#endif // _XTENSION_H
