/*
Datei: DQLEXPRT.H

Die Datei listet alle von der Komplexrecherche-Extension exportierten
Funktionen.

Erabeitet: J. Benkenstein                       Stand vom 13.11.1995
*/

#ifndef _DQLEXPRT_H
#define _DQLEXPRT_H

extern "C" {
//  Start einer Recherche mit �bergebenem Script
//  - als vollst�ndigen Dateinamen
ErrCode FAR PASCAL __export doFileRecherche (char *pFileName,
					    BOOL bParseOnly = FALSE);

//  - als Pufferzeiger
ErrCode FAR PASCAL __export doBufferRecherche (char *pScriptBuffer,
					      BOOL bParseOnly = FALSE);

//  - im Clipboard.
ErrCode FAR PASCAL __export doClipBoardRecherche (BOOL bParseOnly = FALSE);

//  "pParseOnly" - pr�ft den �bergebenen Script auf syntaktische Fehler.
//  Der Script wird dabei nicht ausgef�hrt.

//  DBase-Dateien �ber ihre AliasNamen ausw�hlen:
class Window;
BOOL FAR PASCAL __export SelectdBaseFiles (Window *pParentWindow);

//  Eingabe eines dBASE-Ausdrucks:
//  - die Funktion sollte unmittelbar nach "CreateDataTree" gerufen werden
//  - der zur�ckgegebene Ausdruck ist explizit freizugeben
char * FAR PASCAL __export EntrydBaseExpression (
			  Window *pParent,      // Elternfenster
			  pchar pExpr,          // voreingestellter Ausdruck
			  short ExprSize = 0);  // max. Gr��e des erz. Ausdrucks:
									// 0 hei�t keine Einschr�nkung

//  dBase-Expression im Dialog eingeben
//  Expression ist explizit freizugeben
//  Zusammenfassung der vorigen beiden Funktionen
char* FAR PASCAL __export EntryExprDialog (
		       pWindow pParentWindow,   // ParentWindow
		       short MaxExprSize,       // max. L�nge des neuen Expr.
		       pchar pOldExpr = NULL);  // voreingestellter Expr.

}   // extern "C"

#endif  // DQLEXPRT_H
