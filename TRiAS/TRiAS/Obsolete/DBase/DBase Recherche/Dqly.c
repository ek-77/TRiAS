
// Syntaxbeschreibung einer raumbezogenen Anfragesprache 
// File: DQL.Y

#include "dqly.htp"			 	// Klassen-Selektion
#include <commonvu.hxx>
#include <containr.hxx>

extern "C" {
	#include <ctype.h>		 	// isdigit ()
	#include "dql.h"
}

#include <ristypes.hxx>		 	// Koord
#include <geo_obj.hxx>		  	// ObjContainer
#include <objfeld.hxx>		  	// ObjNummer

#include <relation.hxx>
#include <dbliste.hxx>
#include <dbasprof.hxx>		 	// DBaseProFile
#include <dbasekey.hxx>

#include "yystype.hxx"
#include "groups.hxx"
#include "rechstat.hxx"
#include "tools.hxx"			// GetMiText ()
#include <ixtensn.hxx>          // Interfaces einer Erweiterung
#include <xtencunk.hxx>         // InterfaceImplementation der BasisKlasse
#include <xtsnaux.hxx>
#include "komplexr.hxx"		 	// KomplexrExtension
#include "expexpr.hxx"		  	// ExpandParams ()
#include "dqlyfct.hxx"		  	// AddRelation ()

// Konstanten, Definitionen etc. ----------------------------------------------
const short SIGHTNAMESIZE = 80;
const char ExprOperator [] = " .AND. ";				 // zur Kopplung der Expression
const int BeginExpr = '{';	  // Separatoren in dBase-Expressions
const int EndExpr = '}';

// globale Variablen ----------------------------------------------------------
extern CodeBase *pCB;		   // CodeBaseKlasse
extern long ActCount;
extern short GroupCount;		// Gruppenz�hler
extern RechercheStatus *pRStat; // Z�hler
extern ResourceFile *pRF;
extern KomplexrExtension *pKE;

extern KEYWORD *keywords;
extern KEYWORD SearchKeys[], ReportKeys[];

// lokale Variablen
Bool fSyntaxTestOnly = False;   // Actions ausf�hren

// DBaseFiles enth�lt alle dbf-Dateien, die durch USE deklariert sind
Bool DefaultDataBase = False;   // Datenbanken sind default
Bool DefaultRelation = False;   // Relationen aus Projekt-INI-Datei
DBaseFiles *pDBFs = NULL;

// Groups enth�lt die Beschreibung aller Klassifikationsgruppen
Groups *pGs = NULL;

// Bufferbereich, in dem die ParameterExpansion durchgef�hrt wird
const short EXPRBUFFSIZE = 4096;		// Gr��e des ExprBuffers
char *pExprBuff = NULL;

// Speicherbereiche f�r DBaseExpressions, die RechercheKriterien festlegen
static char *pGlobalExpr = NULL;
static char *pLocalExpr = NULL;

static KeyFilter *pGlobalKF = NULL;
static KeyFilter *pLocalKF = NULL;

// Liste der relationen zwischen den DBasedateien
RelationList *pGlobalRL = NULL;
RelationList *pLocalRL = NULL;

Bool wasGIWindow = FALSE;
Bool wasIdFilter = FALSE;
Bool groupActive = FALSE;

//  lokale Funktion(en)
inline
long DtoL (double D) { return long (D + 0.5); } //  konvertiere Double in Long

// lokale Funktionen --------------------------------------------------------
static ErrCode FilterDBaseExpression (KeyFilter &, char *, RelationList *,
									  long = -1, Bool = FALSE);
static Bool FilterWithTag (DataIndex &, DBaseObjNummer &, 
						   KeyFilter &, long *, char **, short, Bool, char *,
						   RelationList *);
static Bool FilterWithoutTag (DataIndex &, DBaseObjNummer &, KeyFilter &,
							  long *, char **, short, Bool, RelationList *,
							  char * pExprBuff);
static pchar ExpandDBaseExpression (long ONr, pchar pExpr);						   
static Bool GetMerkmalsValue (long lONr, long lMCode, char *pBuffer, short iLen);

// importierte Funktionen --------------------------------------------------
int ExtDBError (int Error, int Routine, Bool = True);  // im Lex impl.
#define SEARCH 257
#define DBASE 258
#define WINDOW 259
#define RECORDS 260
#define VIEW 261
#define IDENT 262
#define SELECT 263
#define WHERE 264
#define USE 265
#define ON 266
#define OBJECTS 267
#define GRAPHICS 268
#define SHEET 269
#define PRINTER 270
#define ININ 271
#define CLASSIFICATION 272
#define AS 273
#define SELECTED 274
#define FOR 275
#define OBJLIST 276
#define GROUP 277
#define IDENDTLIST 278
#define DEFAULT 279
#define IS 280
#define KEY 281
#define UNIQUE 282
#define TEMP 283
#define RELATION 284
#define STRING 285
#define DBASEEXPR 286
#define INTEGER 287
#define FLOAT 288
#define REPORT 289
#define LINES 290
#define COLUMNS 291
#define ALL 292
#define FROM 293
#define TO 294
#define BIG 295
#define PAGE 296
#define TUPLE 297
#define FOR_ONE 298
#define FOR_ALL 299
#define HEAD 300
#define TAIL 301
#define FORMAT 302
#define NUMBER 303
#define TUPLES 304
#define VARI 305
#define VARF 306
#define VARS 307
#define LASTI 308
#define VALUEI 309
#define NEXTI 310
#define LASTF 311
#define VALUEF 312
#define NEXTF 313
#define LASTS 314
#define VALUES 315
#define NEXTS 316
#define NEW 317
#define LINE 318
#define COL 319
#define BATCH 320
#define PROC 321
#define CALL 322
#define SYSTEM_VAR 323
#define SYSTEM_CONST 324
#define PRINT 325
#define DECLARATION 326
#define LINEBEGIN 327
#define LINEEND 328
#define IF 329
#define ELSE 330
#define IDENTLIST 331
#define TERMINAL 332
#define DATE 333
#define TIME 334
#define SPACE 335
#define EQU 336
#define OROR 337
#define ANDAND 338
#define UNOT 339
#define LT 340
#define GT 341
#define NE 342
#define LE 343
#define GE 344
#define EQ 345
#define UMINUS 346
#define yyclearin yychar = -1
#define yyerrok yyerrflag = 0
extern int yychar;
extern short yyerrflag;
#ifndef YYMAXDEPTH
#define YYMAXDEPTH 150
#endif
YYSTYPE (*pyylval), (*pyyval);
#define YYERRCODE 256

 


// Filterung mit gegebenem Tag ------------------------------------------------
static Bool FilterWithTag (DataIndex &DI, DBaseObjNummer &ONr, 
						   KeyFilter &KF, long *MCodes, char **MStrs, 
						   short NumMCodes, Bool ORFlag, char *lpExpr,
						   RelationList *pRel) 
{
//  Filter initialisieren
	char *lpTagName = KF.TagName (ONr._ON, NumMCodes, MCodes, MStrs);
	char *lpKeyValue = KF.KeyValue (ONr._ON, NumMCodes, MCodes, MStrs);

	if (lpTagName == NULL || lpKeyValue == NULL) {
		DELETE_VEC (lpTagName);
		DELETE_VEC (lpKeyValue);
		return TRUE;
	}

	pCB -> tag_name_error = False;	  // keinen Tagnamen-Fehler erz.

	DB_Filter DBF (pCB, DI, ONr, lpTagName, lpKeyValue, lpExpr, pRel);
	Bool toDelete = FALSE;

	if (DBF.Result() == EC_OKAY) {
	// eigentliche Filterung
		if (DBF.Check (ORFlag, KF.isUnique()) != EC_OKAY) {
		// kein Satz gefunden oder Fehler
			toDelete = TRUE;
		}
	} else {
		// die Fehlermeldung hat CodeBase schon ausgegeben
		toDelete = TRUE;
	}

	pCB -> tag_name_error = True;

// Speicher wieder freigeben
	DELETE_VEC (lpTagName);
	DELETE_VEC (lpKeyValue);

	return toDelete;
}

// Filterung ohne gegebenen Tag -----------------------------------------------
static Bool FilterWithoutTag (DataIndex &DI, DBaseObjNummer &ONr, 
												  KeyFilter &KF, long *MCodes, char **MStrs, 
												  short NumMCodes, Bool ORFlag, RelationList *pRel,
												  char *pExprBuff) 
{
//  Filter initialisieren
	char *lpFieldName = KF.FieldName(ONr._ON, NumMCodes, MCodes, MStrs);
	char *lpFieldValue = KF.FieldValue(ONr._ON, NumMCodes, MCodes, MStrs);
	Bool toDelete = FALSE;
	
//	  pr�fe Parameter	
	if ((lpFieldName == NULL) && (lpFieldValue == NULL))		// wenn nichts gegeben
	{
		DELETE_VEC (lpFieldValue);
		DELETE_VEC (lpFieldName);
		return TRUE;							// Objekt l�schen
	}
		
		char *pExpr = NULL;			 
		if (KF.DBasekey().OnlyExpression () && lpFieldName)	   // nur Expression gegeben ?
		{   
		//	  Merkmale m�ssen ggf. durch aktuelle Werte ersetzt werden				
				pchar pTempExpr = ExpandDBaseExpression (ONr._ON, lpFieldName);		 
				if (pTempExpr == NULL)
				{				   
					DELETE_VEC (lpFieldValue);
					DELETE_VEC (lpFieldName);
					return TRUE;					
				}
		
		//  erzeuge gemeinsamen Expression
				pExpr = new char [lstrlen (pTempExpr) + lstrlen (pExprBuff) +		 
												  lstrlen (ExprOperator) + 1];												  
				if (!pExpr)				   
				{
					DELETE_VEC (lpFieldName);		   
					DELETE_VEC (pTempExpr);											   
					return TRUE;
				}									  
				
		//  Expression zusammenbauen				
				lstrcpy (pExpr, pExprBuff);
				lstrcat (pExpr, ExprOperator);																	
				lstrcat (pExpr, pTempExpr);				   
				DELETE_VEC (pTempExpr);											   
		}   

	pCB -> field_name_error = False;	// keinen Feldnamen-Fehler erz.
			
//	  geeigneten Konstruktor ausw�hlen
		if (pExpr)
		{
				DB_Filter DBF (pCB, DI, ONr, NULL, NULL, pExpr, pRel);
				if (DBF.Result() == EC_OKAY) 
		{
				// eigentliche Filterung
						if (DBF.Check (ORFlag, KF.isUnique()) != EC_OKAY) 
								toDelete = TRUE;				// kein Satz gefunden oder Fehler
		} 
		else 
						toDelete = TRUE;					// Fehlermeldung ist bereits ausgegeben
		}
		else
		{			   
				if (lpFieldName && lpFieldValue)
				{
				DB_Filter DBF (pCB, DI, lpFieldName, lpFieldValue, ONr, pRel, pExprBuff);
				if (DBF.Result() == EC_OKAY) 
				{
						// eigentliche Filterung
								if (DBF.Check (ORFlag, KF.isUnique()) != EC_OKAY) 
										toDelete = TRUE;				// kein Satz gefunden oder Fehler
				} 
				else 
								toDelete = TRUE;					// Fehlermeldung ist bereits ausgegeben
				}
				else
						toDelete = TRUE;														
		}					   

	pCB -> field_name_error = True;			 // Fehelermeldung wieder aktivieren

//  Speicher wieder freigeben
	DELETE_VEC (lpFieldValue);
	DELETE_VEC (lpFieldName);
	DELETE_VEC (pExpr);

	return toDelete;
}

ErrCode FilterDBaseExpression (KeyFilter &KF, char *pExpr, RelationList *pRel,
							   long newID, Bool ORFlag) {
	CRing rOF (pKE -> OF ());			 // Navigator f�r ObjektFeld

	CTable tDI (*pDBFs);			 // Navigator f�r DataIndexDateien

//  Status-Anzeige init.
	ActCount = 0;
	pRStat -> SetMax (pKE -> OF ().Count ());

//  f�r alle Objekte DBaseDatenS�tze zuordnen
	DBaseProFile PF;

	for (rOF.First(); rOF.Valid(); ) {

	//  Status-Zeile akt. und ggf. abbrechen
		pRStat -> SetValue (++ActCount);
		if (pRStat -> Break ())
			return EC_USERBREAK;

		Bool toDelete = FALSE;
		{
		DBaseObjNummerLock l(rOF);
		if (!l) {
			DEX_Error (EC_LOCKERROR, RC_DQLParser);
			continue;   // Fehler
		}

	//  wenn Klassifikation und Objekt schon klassifiziert ist, dann weiter
		if (newID != -1 && l -> _Id != -1) {
			if (!rOF.Next())
				break;		  // letztes Objekt: raus
			continue;		   // sonst weiter
		}

		long ONr = l -> _ON;					// ObjektNummer
		long Id = Id = DEX_GetObjIdent (ONr);   // Identifikator lesen

		pchar pParam = NULL;
		long *pMCodes = NULL;
		char **ppMStrs = NULL;
		short NumMCodes = 0;

	//  1. DBaseMerkmalsCodes aus *.ini holen
		NumMCodes = PF.ReadDBaseCodes (&pMCodes, &ppMStrs, Id);
		if (pMCodes == NULL)	  // keine DBaseMerkmale
			toDelete = TRUE;

	//  2. dBase-Expression f�r konkretes Objekt expandieren
		if (!toDelete && pExpr) {
			char *Out = ExpandParams (  ONr,	// ObjektNummer
										pMCodes, // MerkmalsCodes
										ppMStrs,  // evtl. Merkmalswerte
										NumMCodes,	  // Anzahl der MCodes
										pExprBuff,	  // expandierte Expr
										EXPRBUFFSIZE, // max. ZeilenL�nge
										pExpr);  // geg. DBaseExpr

			 if (Out == NULL)
			// Fehler beim expandieren, entweder kein Merkmal
			// oder kein MerkmalsCode etc.
				toDelete = TRUE;
		}

	//  3. Filterung: //  Master bestimmen/pr�fen
		if (! toDelete) {
			pchar pMasterField = NULL;
			Bool delMasterField = False;

			if (DefaultDataBase) {
				if (! pDBFs -> SetMaster (pCB, ppMStrs [0]))
					toDelete = True;
			} else {		// vorgegebene Master-Anbindung
				if (lstrcmp (pDBFs -> GetMaster (), strupr (ppMStrs[0])))
					toDelete = True;
			}

		//  ggf. RelationList aufbauen
			RelationList *pDefRel = NULL;	   //  Default-Relationen
			if (! toDelete) {
				if (DefaultRelation) {
					if (pMCodes[1] > 0) {	   // Masterfeld lesen
						if (GetMiText (pMCodes[1], ONr, pMasterField) != EC_OKAY) {
							delMasterField = True;
							toDelete = True;
						}
					} else {
						if (ppMStrs[1])
							pMasterField = ppMStrs[1];
						else
							toDelete = True;
					}
					if (! toDelete)
						if (! (pDefRel = CreateRelationList (pCB,
										pDBFs -> GetMaster (), pMasterField)))
							toDelete = True;
				}
			}

		//  Recherche durchf�hren
			if (!toDelete) {
				if (tDI.Find (pDBFs -> GetMaster ())) {
					DataIndexLock lDI(tDI);
					if (lDI) {
						if (KF.hasTag (ONr, NumMCodes, pMCodes, ppMStrs))
						//  Filterung mit Tag und DBaseExpression
							toDelete = FilterWithTag (*lDI, *l, KF, pMCodes,
									   ppMStrs, NumMCodes, ORFlag, pExprBuff,
									   DefaultRelation ? pDefRel : pRel);
						else	//  Filterung ohne Tag
							toDelete = FilterWithoutTag (*lDI, *l, KF, pMCodes,
									   ppMStrs, NumMCodes, ORFlag,
									   DefaultRelation ? pDefRel : pRel, pExprBuff);
					} else {
						DEX_Error (RC_DQLParser, EC_LOCKERROR);
						toDelete = TRUE;		 // weitere Objekte
					}
				} else {		// keinen Master gefunden
					DEX_Error (RC_DQLParser, EC_SYSERROR);
					toDelete = TRUE;	 // weitere Objekte
				}
			}

			if (delMasterField)
				DELETE_VEC (pMasterField);   // Default-MasterFeld
			DELETE_OBJ (pDefRel);			// Default-Relation
		}

	//  4.  Aufr�umen
		DELETE_VEC (pMCodes);
		if (ppMStrs) {
			for (short i = 0; i < NumMCodes; i++)
				DELETE_VEC (ppMStrs[i]);
				DELETE_VEC (ppMStrs);
		}

	//  5. ggf. Identifikator setzen
		if (newID != -1 && l -> _Id == -1 && !toDelete)
			l -> _Id = newID;
		}	   // Lock aufheben

	//  6. Satz rausl�schen (wenn ArrayContainer leer ist oder bei Fehler)
		if (newID == -1L) {
			if (toDelete) {
				if (! rOF.Delete()) {
					DEX_Error (RC_DQLParser, EC_SYSERROR);
					return EC_SYSERROR;
				}
			} else {
				if (! rOF.Next())
					break;
			}
		} else {
			// Satz drinlassen, wenn Klassifikation gefordert ist
			if (! rOF.Next())
				break;
		}
	}	   // end_for

	return EC_OKAY;
}

//	  Merkmalswert lesen
Bool GetMerkmalsValue (long lONr, long lMCode, char *pBuffer, short iLen)
{
		if (lMCode != 0) 
		{
		// MerkmalsWert holen
				TARGETMERKMAL tm;

				tm.dwSize = sizeof(TARGETMERKMAL);
				tm.lTarget = lONr;			  // ObjektNummer
				tm.lMCode = lMCode;			 // MerkmalsCode
				tm.imaxLen = iLen;
				tm.pMText = pBuffer;			// kein Buffer: nur Test
				tm.iTTyp = TT_Objekt;
				DEX_GetTextMerkmal (tm);

				return tm.imaxLen > 0;
		}

		return FALSE;
}

//	  Expandiere DBase-Expression 
// dBase-Expression expandieren
pchar ExpandDBaseExpression (long ONr, pchar pExpr) 
{
//  pr�fe Parameter
	if (!pExpr || !*pExpr)
				return NULL;

//  Variablen init.
	pchar pAct = pExpr;		 // akt. Zeichen
	pchar pBegin = pExpr;	   // Beginn des �ffnenden Separators
	pchar pResult = NULL;	   // Zeiger auf Ergebnis
	pchar pTemp = NULL;		 // Puffer-Zeiger
	char Merkmal [_MAX_PATH] = "";  // akt. Merkmalswert
	short ActLen = 0;		   // Textl�ngen
	short OldLen = 0;

//  Expression expandieren
	for (; ; ) 
	{
	//  Beginn des 1./weiteren Parameters suchen
				pBegin = pAct;
				while (*pBegin && *pBegin != BeginExpr)
				pBegin++;
				if (!*pBegin)		   // Textende erreicht
				break;

	//  kopiere alle Zeichen bis zum Parameterbeginn
				ActLen = pBegin - pAct;
				pTemp = new char [(pResult ? lstrlen (pResult) : 0) + ActLen + sizeof (Merkmal) + 1];
				if (!pTemp) 
				{				   // wenn kein Speicher mehr
					DEX_Error (RC_ExpdBaseExpr, EC_NOMEMORY);   // Fehlermeldung ausgeben
					DELETE_VEC (pResult);		   // alten Wert ggf. l�schen
					return NULL;				// zur�ck
				}
				*pTemp = '\0';
				if (pResult)
					lstrcpy (pTemp, pResult);	// alten Text kopieren
				DELETE_VEC (pResult);			   // und l�schen
				pResult = pTemp;
				OldLen = pResult ? lstrlen (pResult) : 0;   // alte L�nge merken
				memcpy (pResult + OldLen, pAct, ActLen); // neuen Text ans akt. Ende kop.
				*(pResult + OldLen + ActLen) = '\0';   // Textende setzen

	//  lese und speichere Merkmalswert
				long MKode = strtol (++pBegin, NULL, DEX_GetMkBase ());
				if (MKode && GetMerkmalsValue (ONr, MKode, Merkmal, sizeof (Merkmal)))
					lstrcat (pResult, Merkmal);
				// else				 
				// {
				//	DELETE (pResult);
				//	return NULL;
				// }
																
	//  akt. Zeiger neu setzen
				while (*pAct && *pAct != EndExpr)
				pAct++;
				if (*pAct)			  // wenn noch kein Textende erreicht,
				pAct++;			 // auf 1. Zeichen nach Separator
				else {				  // Syntax-Fehler
					DEX_Error (RC_ExpdBaseExpr, EC_SYNTAX);
					DELETE_VEC (pResult);
					return NULL;
				}
	}   //  end of while

//  ggf. letzten Zeichen kopieren
	ActLen = pBegin - pAct;
	if (ActLen > 0) 
	{
				pTemp = new char [(pResult ? lstrlen (pResult) : 0) + ActLen + 1];
				if (!pTemp) 
				{
					DELETE_VEC (pResult);
					DEX_Error (RC_ExpdBaseExpr, EC_NOMEMORY);
					return NULL;
				}
				*pTemp = '\0';
				if (pResult) 
					lstrcpy (pTemp, pResult);	  // alten Text kopieren
				DELETE_VEC (pResult);			   // und l�schen
				pResult = pTemp;
				OldLen = pResult ? lstrlen (pResult) : 0;
				memcpy (pResult + OldLen, pAct, ActLen); // Rest kopieren
				*(pResult + OldLen + ActLen) = '\0';   // Ende-Kennung setzen
	}

	return pResult;
}

short yyexca[] = {-1, 1,
	0, -1,
	-2, 0,
-1, 145,
	93, 68,
	-2, 61,
	};
#define YYNPROD 90
#define YYLAST 304
short yyact[]={

 153, 170, 155,  27, 136,  28,  45,  56,   6,  76,
 113,  29, 112, 163, 145, 111,  88,  93,  93,  53,
 128, 123, 119,  42,  54, 120, 107, 105, 109,  89,
  49,  70,  66,  87,  88,  45,  85,  19,  55,  41,
  75,  91,  52,  40,  20, 110,  94,  94,  51,  62,
  60,  87, 108,  16,  17,  88, 164, 161, 160, 142,
  38,  97,  45,  37, 101,  34,   3,   4,  97,  57,
  65,  11, 154, 150, 135,  30, 134, 140, 130,  61,
  21,   8,   7,  90,  43,  74, 171, 167, 162, 158,
 144, 139, 133,  80,  84,  96,  79,  39, 174, 172,
 169, 166, 156, 132, 127, 126, 125, 117, 115, 114,
  99,  77,  72,  71,  69,  68,  67,  64,  63,  35,
  24, 168, 149, 157, 148, 143, 116,  13,  36,  18,
  10,  83,  82,  81,  92,  78,  59,  46,  33,  32,
  23,  31,  73,  26,  25,  88,  15,  14,   9,  22,
  44,  12,   5,   2, 159, 141,  86,  47,  89,   1,
  95,   0,  87, 102,   0,  85,  46,   0,   0, 100,
   0,   0,   0,  16,  17, 103,   0,   0, 104,   0,
 106,   0, 129,   0,   0,   0,   0, 118,   0,   0,
   0, 121, 122,  46,   0,   0,   0,   0,   0,   0,
 131,   0,   0,   0,   0,   0,   0,   0,   0,   0,
   0,   0, 124,   0, 147,   0, 146,   0,   0,   0,
   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,
   0, 165,   0,   0,   0,   0,   0,   0,   0,   0,
   0, 173,   0,   0,   0,   0,  48,   0, 151,   0,
 152,   0, 138,   0, 137,   0,   0,   0,   0,   0,
   0,   0,   0,  50,   0,   0,   0,   0,   0,   0,
   0,   0,   0,   0,   0,   0,  98,   0,   0,   0,
   0,   0,   0,  98,   0,  58,   0,   0,   0,   0,
   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,
   0,   0,   0, 155 };
short yypact[]={

-190,-1000,-281, -41, -42,-1000,-185,-1000,-1000,-210,
-229, -43,-210,  61,-1000,-1000,-256,-193,  60,-196,
-233,-1000, -90,-1000,-1000,-1000,-1000, -10,-237,-249,
  29,-1000,-1000,-215, -44,-1000,-224,-1000,-1000,-1000,
-1000,-1000,-1000,-1000,-1000,-1000,-1000,  59,  58,-186,
-242,  57,  56,  55,-243,  54,  53,-247,  52,-248,
-238,-1000,-233,-1000,-1000,  27,-1000,-1000,-1000,-1000,
  51,-1000,-1000,  20,-1000,-1000,-1000,-1000,-119,-1000,
-1000,-1000,-1000,-209,-1000,-253,-230,-228,-241,-275,
  50,  49,  82,-1000,-1000,-1000,-1000,-1000,-1000,-1000,
  48,-247,-1000,-1000,-1000,-257, -63, -63, -70,  47,
  46,  45,-103, -45,-1000,-1000,-239,-1000,-1000,  44,
   1,-1000,-1000, -33,   0,-1000,-1000,-1000,-1000, -46,
-1000,-1000,-1000,-203,  81,  -3,-273,-1000,-1000, -33,
-1000,  80,  64, -37,  43,-1000,  79,  -4,-204,-205,
  -5,-1000,-1000,-274,-1000,-206,-1000, -37,  42,  -6,
  63,-1000,  41,-1000,-340,  -7,-1000,  40,-338,-1000,
-1000,  39,-1000,-1000,-1000 };
short yypgo[]={

   0, 159, 157,  76,  74,  73,  72, 156, 155, 154,
 153, 152, 151, 149,  84, 148, 127, 147, 146, 144,
 143,  95, 142,  85, 141, 139, 138, 136, 135,  83,
 134,  96,  93, 133, 132, 131,  94, 130, 129, 128,
  97 };

short yyr1[]={
   0,   1,   1,   1,  12,  10,  10,  15,  10,  13,
  13,  16,  16,  17,  17,  19,  19,   2,   2,  20,
  20,  20,  20,  20,  20,  20,  20,  22,  22,  23,
  23,  18,  24,  25,  26,  27,  27,  29,  29,  29,
  30,  28,  28,  31,  31,  31,  32,  32,  32,  34,
  34,   7,   7,   7,  36,  36,  35,  35,  35,  35,
  35,   3,   3,   5,   5,   5,   5,   4,   4,   6,
  33,  33,   8,   8,   9,  37,  11,  11,  14,  14,
  21,  21,  38,  38,  38,  39,  39,  40,  40,  40 };

short yyr2[]={
   0,   1,   2,   1,   0,   5,   2,   0,   4,   1,
   2,   1,   1,   2,   2,   3,   3,   3,   2,   3,
   3,   3,   4,   3,   3,   5,   3,   1,   3,   1,
   1,   2,   1,   4,   2,   3,   3,   1,   3,   1,
   1,   1,   2,   1,   1,   1,   1,   1,   2,   3,
   3,   3,   4,   3,   3,   3,   8,   9,   6,   7,
   3,   2,   1,   1,   1,   2,   1,   1,   2,   3,
   4,   9,   3,   1,   3,   0,   4,   3,   1,   1,
   1,   1,   4,   2,   2,   1,   1,   1,   1,   1 };

short yychk[]={
-1000,  -1, -10, 256, 257, -11, 289, 123, 123, -15,
 -37, 256, -12, -16, -17, -18, 263, 264, -38, 266,
 273, 123, -13, -16,  59, -19, -20, 259, 261, 267,
 331, -24, -25, -26, 258,  59, -39, 259, 256, -40,
 276, 272, 256, -14, -16, 125, 256,  -2, 256,  40,
 273, 285, 279, 256, 273, 287, 256,  40, 256, -27,
 265, 123, 273,  59,  59, 256, 274,  59,  59,  59,
 274,  59,  59, -22, -23, 287, 256,  59, -28, -31,
 -32, -33, -34, -35, -36, 284,  -7, 281, 264, 277,
 -29, 279, -30, 256, 285, -40, -21,  41, 256,  59,
 -21,  44, -14, -31, -36, 280, -32, 256, 280, 256,
 286, 256, 287, 285,  59,  59,  44,  59, -23, 279,
 282, -14, -14,  91, 282,  59,  59,  59, 123, 285,
 123, -29,  59,  91,  -3,  -4,  37, 287, 285,  91,
 123,  -8, 262,  44,  93, 287,  -3,  -4,  44,  58,
  -5, 285, 287,  37,  -6, 340,  59,  44,  93,  -9,
 262, 262,  93, 287, 262,  -5,  59,  93,  58,  59,
 341,  93,  59,  -6,  59 };

short yydef[]={
   0,  -2,   1,   3,   7,   2,  75,   6,   4,   0,
   0,   0,   0,   0,  11,  12,   0,   0,   0,   0,
   0,  77,   0,   9,   8,  13,  14,   0,   0,   0,
   0,  31,  32,   0,   0,  76,  83,  85,  86,  84,
  87,  88,  89,   5,  10,  78,  79,   0,   0,   0,
   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,
   0,  34,   0,  15,  16,   0,  18,  19,  20,  21,
   0,  23,  24,   0,  27,  29,  30,  26,   0,  41,
  43,  44,  45,  46,  47,   0,   0,   0,   0,   0,
   0,   0,  37,  39,  40,  82,  17,  80,  81,  22,
   0,   0,  33,  42,  48,   0,   0,   0,   0,   0,
   0,   0,   0,   0,  35,  36,   0,  25,  28,   0,
   0,  49,  50,   0,   0,  60,  54,  55,  51,   0,
  53,  38,  70,   0,   0,   0,   0,  62,  67,   0,
  52,   0,  73,   0,   0,  -2,   0,   0,   0,   0,
   0,  63,  64,   0,  66,   0,  58,   0,   0,   0,
   0,  72,   0,  65,   0,   0,  59,   0,   0,  56,
  69,   0,  71,  74,  57 };
# define YYFLAG -1000
# define YYERROR goto yyerrlab
# define YYACCEPT return(0)
# define YYABORT return(1)
#ifdef YYIGNORE
#define yyignore *(yypi+1) = 1
#endif

// Funktionsdefinitionen
void yyerror (const char *);
int yylex (void);
// int yyparse (void);

/*	parser for yacc output	*/

#if defined(YYDEBUG)
int yydebug = 0; /* 1 for debugging */
#endif

YYSTYPE *yyv; /* where the values are stored */
#ifdef YYIGNORE
char yyi[YYMAXDEPTH+1] = { 0 };
#endif
int yychar = -1; /* current input token number */
int yynerrs = 0;  /* number of errors */
short yyerrflag = 0;  /* error recovery flag */

int yyparse(void) {

	short yys[YYMAXDEPTH];
	short yyj, yym;
	register YYSTYPE *yypvt;
	register short yystate, *yyps, yyn;
	register YYSTYPE *yypv;
	register short *yyxi;
#ifdef YYIGNORE
register char *yypi;
#endif

	yystate = 0;
	yychar = -1;
	yynerrs = 0;
	yyerrflag = 0;
	yyps= &yys[0] - 1;
	yypv= &yyv[-1];
#ifdef YYIGNORE
yypi= &yyi[0];
#endif

 yystack:    /* put a state and value onto the stack */

#if defined(YYDEBUG)
	if( yydebug  ) printf( "state %d, char 0%o\n", yystate, yychar );
#endif
		if( ++yyps> &yys[YYMAXDEPTH] ) { yyerror( "Stack|berlauf" ); return(1); }
		*yyps = yystate;
#ifdef YYIGNORE
               ++yypi;
               *(yypi+1) = *yypi;
#endif
		++yypv;
//		memcpy (yypv, &(*pyyval), sizeof ((*pyyval)));
		*yypv = (*pyyval);	

 yynewstate:

	yyn = yypact[yystate];

	if( yyn<= YYFLAG ) goto yydefault; /* simple state */

	if( yychar<0 ) if( (yychar=yylex())<0 ) yychar=0;
	if( (yyn += yychar)<0 || yyn >= YYLAST ) goto yydefault;

	if( yychk[ yyn=yyact[ yyn ] ] == yychar ){ /* valid shift */
		yychar = -1;
//		memcpy (&(*pyyval), &(*pyylval), sizeof ((*pyyval)));
		(*pyyval) = (*pyylval);
		yystate = yyn;
		if( yyerrflag > 0 ) --yyerrflag;
		goto yystack;
		}

 yydefault:
	/* default state action */

	if( (yyn=yydef[yystate]) == -2 ) {
		if( yychar<0 ) if( (yychar=yylex())<0 ) yychar = 0;
		/* look through exception table */

		for( yyxi=yyexca; (*yyxi!= (-1)) || (yyxi[1]!=yystate) ; yyxi += 2 ) ; /* VOID */

		while( *(yyxi+=2) >= 0 ){
			if( *yyxi == yychar ) break;
			}
		if( (yyn = yyxi[1]) < 0 ) return(0);   /* accept */
		}

	if( yyn == 0 ){ /* error */
		/* error ... attempt to resume parsing */

		switch( yyerrflag ){

		case 0:   /* brand new error */

			if (fSyntaxTestOnly) { yyerror("Syntaxfehler"); YYABORT; }
		yyerrlab:
			++yynerrs;

		case 1:
		case 2: /* incompletely recovered error ... try again */

			yyerrflag = 3;

			/* find a state where "error" is a legal shift action */

			while ( yyps >= yys ) {
			   yyn = yypact[*yyps] + YYERRCODE;
			   if( yyn>= 0 && yyn < YYLAST && yychk[yyact[yyn]] == YYERRCODE ){
			      yystate = yyact[yyn];  /* simulate a shift of "error" */
			      goto yystack;
			      }
			   yyn = yypact[*yyps];

			   /* the current yyps has no shift onn "error", pop stack */

#if defined (YYDEBUG)
			   if( yydebug ) printf( "error recovery pops state %d, uncovers %d\n", *yyps, yyps[-1] );
#endif
			   --yyps;
			   --yypv;
#ifdef YYIGNORE
				--yypi;
#endif
			   }

			/* there is no state on the stack with an error shift ... abort */

	yyabort: yyerror ("Syntaxfehler");
			return(1);


		case 3:  /* no shift yet; clobber input char */

#if defined(YYDEBUG)
			if( yydebug ) printf( "error recovery discards char %d\n", yychar );
#endif

			if( yychar == 0 ) goto yyabort; /* don't discard EOF, quit */
			yychar = -1;
			goto yynewstate;   /* try again in the same state */

			}

		}

	/* reduction by production yyn */

#if defined(YYDEBUG)
		if( yydebug ) printf("reduce %d\n",yyn);
#endif
		yyps -= yyr2[yyn];
		yypvt = yypv;
		yypv -= yyr2[yyn];
//		memcpy (&(*pyyval), &(yypv[1]), sizeof ((*pyyval)));
#ifdef YYIGNORE
               yypi -= yyr2[yyn];
               *(yypi+1) = *yypi;
#endif
		yym=yyn;
			/* consult goto table to find next state */
		yyn = yyr1[yyn];
		yyj = yypgo[yyn] + *yyps + 1;
		if( yyj>=YYLAST || yychk[ yystate = yyact[yyj] ] != -yyn ) yystate = yyact[yypgo[yyn]];

               App :: Exec (ExecWhileEvent);
#ifdef YYIGNORE
       if(!*yypi)
#endif
		switch(yym){
			
case 1:
{	   
				/* DefaultAusgabe organisieren (ObjektListe im Fenster)
				   Objfeld komprimieren (DBaseS�tze, die Invalid sind werden
				   gel�scht).*/
					if (! fSyntaxTestOnly) {
						if (pKE -> OF ().Compact () != 0) {

						// Abspeichern, was im StandardFall zu machen ist
							if (pGs -> Count() != 0)
								pKE -> RStatus () = (RSToDo)OTClassification;
							else
								pKE -> RStatus () = (RSToDo)OTObjList;
						} else {
							DEX_Error (RC_DQLParser, WC_RECHNOTFOUND);
						}
						DELETE_OBJ (pGs);
					}
				} break;
case 2:
{
					if (! fSyntaxTestOnly)
						DELETE_OBJ (pGs);
				} break;
case 3:
{
					ExtDBError (RC_DQLParser, EC_UncompleteScript);
					YYABORT;
				} break;
case 4:
{
					if (fSyntaxTestOnly)
						yyignore;
					else {
					//  Variablen initialisieren
						pGs = new Groups;
						if (!pGs) {
							DEX_Error (RC_DQLParser, EC_NOMEMORY);
							YYABORT;
						}
						wasGIWindow = FALSE;
						wasIdFilter = FALSE;
					}
				} break;
case 5:
{
						keywords = ReportKeys;
						/* jetzt folgt Report */
					} break;
case 6:
{
					ExtDBError (RC_DQLParser, EC_UncompleteScript);
					YYABORT;
				} break;
case 7:
{
				/* Variablen initialisieren */
					pGs = new Groups;
					if (!pGs) {
						DEX_Error (RC_DQLParser, EC_NOMEMORY);
						YYABORT;
					}
					wasGIWindow = FALSE;
					wasIdFilter = FALSE;
				} break;
case 8:
{
						keywords = ReportKeys;
						/* jetzt folgt Report */
					} break;
case 15:
{
				//  GeometrieRecherche im Fenster durchf�hren
					if (pKE -> OF ().Count() == 0) {
					// Objfeld noch leer
						if (pKE -> doGeoRecherche (yypvt[-1].ObjContToken()) != EC_OKAY)
							YYABORT;	// Fehler: raus
						wasGIWindow = TRUE;
					 } else {
					 // Objektmenge vorgegeben
					 // sorry, not implemented
					}
				} break;
case 16:
{
					ExtDBError (RC_DQLParser, EC_BadWindowSpec);
					YYABORT;
				} break;
case 17:
{
						ExtDBError (RC_DQLParser, EC_BadWindowSpec);
						YYABORT;
				} break;
case 18:
{
					ObjContainer *plocRc = new ObjContainer (0L, 0L, 0L, 0L);
					if (!plocRc) {
						DEX_Error (RC_DQLParser, EC_NOMEMORY);
						YYABORT;
				}
					DEX_GetActiveSelection (plocRc);
				//  Ymin, Ymax ggf. tauschen
					if (plocRc -> YMin () > plocRc -> YMax ()) {
						long Y = plocRc -> YMin ();
						plocRc -> YMin () = plocRc -> YMax ();
						plocRc -> YMax () = Y;
					}
					// Selektiertes Fenster liefern. (Default: aktueller Bildausschnitt)
					YYSTACK (plocRc, YYObjContainer);
				} break;
case 19:
{	   
				//  ObjFeld �ber Sicht Filtern
					if (pKE -> OF ().Count() == 0) {
					// noch keine Objekte selektiert
						if (wasGIWindow) {
						// keine Objekte aus Geometrie gefunden
							DEX_Error (RC_DQLParser, WC_RECHNOTFOUND);
							YYACCEPT;
						}
						if (pKE -> IdFilterNew (yypvt[-1].StringToken()) != EC_OKAY)
							YYABORT;
					} else {
					// Objekte nachselektieren
						if (pKE -> IdFilter (yypvt[-1].StringToken()) != EC_OKAY)
							YYABORT;
					}
					wasIdFilter = TRUE;
					if (pKE -> OF().Count() == 0) {
						DEX_Error (RC_DQLParser, WC_RECHNOTFOUND);
						YYACCEPT;
					}
				} break;
case 20:
{
					char SightBuffer [SIGHTNAMESIZE+1] = "";
					if (! DEX_GetActiveSight (SightBuffer)) {
						ExtDBError (RC_DQLParser, EC_BadInSpec);
						YYABORT;
					} else {
					/* ObjFeld �ber Sicht Filtern */
						if (pKE -> OF ().Count() == 0) {
						// noch keine Objekte selektiert
							if (wasGIWindow) {
							// keine Objekte aus Geometrie gefunden
								DEX_Error (RC_DQLParser, WC_RECHNOTFOUND);
								YYACCEPT;
							 }
							 if (pKE -> IdFilterNew (SightBuffer) != EC_OKAY)
								YYABORT;
						} else {
						// Objekte nachselektieren
							if (pKE -> IdFilter (SightBuffer) != EC_OKAY)
								YYABORT;
						}
						wasIdFilter = TRUE;
						if (pKE -> OF ().Count() == 0) {
							DEX_Error (RC_DQLParser, WC_RECHNOTFOUND);
							YYACCEPT;
						}
					}
				} break;
case 21:
{
					ExtDBError (RC_DQLParser, EC_BadInSpec);
					YYABORT;
				} break;
case 22:
{	   
				//  alles bis auf geg. Objekt aus ObjFeld entfernen
					long iCnt = DEX_ActiveObjectsCount();
					if (iCnt <= 0) {
						DEX_Error (RC_DQLParser, WC_RECHNOTFOUND);
						YYACCEPT;
					}

					long *pObjs = new long [iCnt];
					if (!pObjs) {
						DEX_Error (EC_NOMEMORY, RC_DQLParser);
						YYABORT;
					}
					iCnt = DEX_GetAllActiveObjects (pObjs);
					pKE -> OF ().EveryDelete ();		// leer machen

					ObjNummerCreator ONC (pKE -> OF ());
					for (long i = 0; i < iCnt; i++)
						pKE -> OF ().NewObj (ONC, pObjs [i]);
					DELETE_VEC (pObjs);
					wasGIWindow = TRUE;
				} break;
case 23:
{
				// ein bestimmtes Objekt untersuchen
					pKE -> OF ().EveryDelete(); // Feld leeren
					ObjNummerCreator ONC (pKE -> OF ());
					pKE -> OF ().NewObj (ONC, yypvt[-1].LongToken());
					wasGIWindow = TRUE;
				} break;
case 24:
{
					ExtDBError (RC_DQLParser, EC_BadForSpec);
					YYABORT;
				} break;
case 25:
{
				//  Objekte �ber ID-Liste filtern
					if (pKE -> OF ().Count() == 0) {
					//  noch keine Objekte selektiert
						DEX_Error (RC_DQLParser, WC_RECHNOTFOUND);
						YYACCEPT;
					} else {
					//  Objekte nachselektieren
						if (pKE -> IdFilterIdents () != EC_OKAY)
						   YYABORT;
					}
					wasIdFilter = TRUE;
					if (pKE -> OF ().Count() == 0) {
						DEX_Error (RC_DQLParser, WC_RECHNOTFOUND);
						YYACCEPT;
					}
				} break;
case 26:
{   // Listenkopffehler
					ExtDBError (RC_DQLParser, EC_BadIdentSpec);
					YYABORT;
				} break;
case 29:
{   // Identifikator in ID-Liste speichern
					if (! pKE -> AddIdent (yypvt[-0].LongToken()))
						YYABORT;
				} break;
case 30:
{   // Identifiaktor-Fehler
					ExtDBError (RC_DQLParser, EC_BadIdentSpec);
					YYABORT;
				} break;
case 33:
{
				/* Recherche anstrengen, wenn keine Gruppen definiert sind */
					if (pGs -> Count() == 0 && pGlobalKF) {
						pRStat -> SetGroupText ();
						if (FilterDBaseExpression (*pGlobalKF, pGlobalExpr, pGlobalRL) != EC_OKAY)
							YYABORT;
					 } else {
						if (pGlobalKF == NULL) {
							ExtDBError (RC_DQLParser, EC_NODBASECONNECT);
							YYABORT;
						}
					}
				/*  DBaseFileContainer freigeben */
					DELETE_OBJ (pDBFs);
					DELETE_VEC (pExprBuff);
					DELETE_VEC (pGlobalExpr);
					DELETE_VEC (pLocalExpr);
					DELETE_OBJ (pGlobalKF);
					DELETE_OBJ (pGlobalRL);
				} break;
case 34:
{
				/* DBaseFileContainer und DBaseExprBuff bilden */
					pDBFs = new DBaseFiles;
					if (pDBFs == NULL) {
						DEX_Error (RC_DQLParser, EC_NOMEMORY);
						YYABORT;
					}
					if (pExprBuff == NULL)
						pExprBuff = new char [EXPRBUFFSIZE+1];
					if (pExprBuff == NULL) {
						DEX_Error (RC_DQLParser, EC_NOMEMORY);
						YYABORT;
					}
				/* Variablen initialisieren */
					pGlobalExpr = NULL;
					pLocalExpr = NULL;
				/* Flags initialisieren */
					groupActive = FALSE;
					pGs -> EveryDelete();	   // keine Gruppen
				} break;
case 35:
{
					DefaultDataBase = False;
				} break;
case 36:
{   // alle dBase-Dateien aus Projekt-Ini lesen
					DefaultDataBase = True;
					if (! ReadAlldBaseFiles (pCB, pDBFs, pRF))
						YYABORT;
				} break;
case 39:
{
					ExtDBError (RC_DQLParser, EC_BadFileSpec);
					YYABORT;
				} break;
case 40:
{
					if (! pDBFs -> AddDataIndex (pCB, yypvt[-0].StringToken())) {
						ExtDBError (RC_DQLParser, EC_NOFILE);
						YYABORT;
					}
				} break;
case 49:
{
				/* Recherche machen */
					KeyFilter *pKF;
					if (pLocalKF) {
					/* lokale KeyZuordnungsfunktion */
						pKF = pLocalKF;
					/* DBaseS�tze aller Objekte l�schen, um evtl. neue
					   KeyAnbindung zu erm�glichen */
						pKE -> OF ().DeleteDBaseRecordInfo ();
					} else {
						if (pGlobalKF) {
							pKF = pGlobalKF;
						} else {
							ExtDBError (RC_DQLParser, EC_NODBASECONNECT);
							YYABORT;
						}
					}

					char *pExpr = pLocalExpr ? pLocalExpr : pGlobalExpr;
					RelationList *pRel = pLocalRL ? pLocalRL : pGlobalRL;

				//  Gruppenanzeige im Status-Fenster akt.
					pRStat -> SetGroupText (++GroupCount);
					if (FilterDBaseExpression (*pKF, pExpr, pRel, yypvt[-2].LongToken()) != EC_OKAY)
						YYABORT;

				/* Ende einer GruppenAnweisung */
					groupActive = FALSE;
				/* Gruppenlokale Zuweisungsbedingung und RechercheExpression
				   r�cksetzen */
					DELETE_VEC (pLocalExpr);
					DELETE_OBJ (pLocalKF);
					DELETE_OBJ (pLocalRL);
				} break;
case 50:
{
				// Ende der Gruppenanweisung
					groupActive = FALSE;

				// gruppenlokalen Speicher wieder freigeben
					DELETE_VEC (pLocalExpr);
					DELETE_OBJ (pLocalKF);
					DELETE_OBJ (pLocalRL);
					ExtDBError (RC_DQLParser, EC_BadGroupSpec);
					YYABORT;
				} break;
case 51:
{
				/* INTEGER ist der neue Identifikator, der allen Objekten
				   zugewiesen werden soll (fest), die die im weiteren
				   gegebenen Bedingungen erf�llen.
				 */
					long newIdent = yypvt[-1].LongToken();
					if (pGs -> hasGroup (NULL, newIdent)) {
						ExtDBError (RC_DQLParser, WC_DOUBLEGROUP);
						YYABORT;
					}
					groupActive = TRUE;

				/*  Gruppenlokale Zuweisungsbedingung und RechercheExpression
					r�cksetzen (f�r alle F�lle nochmal) */
					DELETE_VEC (pLocalExpr);
					DELETE_OBJ (pLocalKF);
					DELETE_OBJ (pLocalRL);

				//  neue Gruppe bilden
					pGs -> AddGroup (NULL, newIdent);

				//  Ident liefern
					long *newID = new long (newIdent);
					if (!newID) {
						DEX_Error (RC_DQLParser, EC_NOMEMORY);
						YYABORT;
					}
					YYSTACK (newID, YYLong);
				} break;
case 52:
{
				/* INTEGER ist der neue Identifikator, der allen Objekten
				   zugewiesen werden soll (tempor�r), die die im weiteren
				   gegebenen Bedingungen erf�llen, STRING ist der KurzText.
				 */
					long newIdent = yypvt[-2].LongToken();
					char *cptr = yypvt[-1].StringToken();

					if (cptr == NULL) {
						DEX_Error (RC_DQLParser, EC_NOMEMORY);
						YYABORT;
					}
					if (pGs -> hasGroup (cptr, newIdent)) {
						ExtDBError (RC_DQLParser, WC_DOUBLEGROUP);
						DELETE_VEC (cptr);
						YYABORT;
					}
					groupActive = TRUE;

				/*  Gruppenlokale Zuweisungsbedingung und RechercheExpression
					r�cksetzen (f�r alle F�lle nochmal) */
					DELETE_VEC (pLocalExpr);
					DELETE_OBJ (pLocalKF);
					DELETE_OBJ (pLocalRL);							

				//  neue Gruppe bilden
					pGs -> AddGroup (cptr, newIdent);

				//  neuen temp. Ident erzeugen
					PBDDATA Data;
					memset (&Data, '\0', sizeof (PBDDATA));	 // init.
					Data.dwSize = sizeof (PBDDATA);
					Data.pbdTyp = 'i';					  // Ident-Typ
					Data.pbdCode = newIdent;
					Data.pbdKText = cptr;
					Data.pbdTemp = True;		// ID soll temp. sein
					Data.pbdKTextLen = lstrlen (cptr);
					DEX_ModPBDData (Data);

				//  Ident liefern
					long *newID = new long (newIdent);
					if (!newID) {
						DEX_Error (RC_DQLParser, EC_NOMEMORY);
						YYABORT;
					}
					YYSTACK (newID, YYLong);

				//  Speicher freigeben
					DELETE_VEC (cptr);
				} break;
case 53:
{
				/* STRING ist der Bezeichner eines neuen Identifikators, der
				   seinerseits aus einer Menge vordefinierter Identifikatoren
				   ausgew�hlt wird (tempor�r).
				 */
					char *cptr = yypvt[-1].StringToken();
					if (cptr == NULL) {
						DEX_Error (RC_DQLParser, EC_NOMEMORY);
						YYABORT;
					}
					long tempIdent = DEX_GetUniqueICode ();
					if (pGs -> hasGroup (cptr, tempIdent)) {
						ExtDBError (RC_DQLParser, WC_DOUBLEGROUP);
						DELETE_VEC (cptr);
						YYABORT;
					}
					groupActive = TRUE;
					DELETE_VEC (pLocalExpr);
					DELETE_OBJ (pLocalKF);
					DELETE_OBJ (pLocalRL);							

				//  neue Gruppe bilden
					pGs -> AddGroup (cptr, tempIdent);

				//  neuen temp. Ident erzeugen
					PBDDATA Data;
					memset (&Data, '\0', sizeof (PBDDATA));	 // init.
					Data.dwSize = sizeof (PBDDATA);
					Data.pbdTyp = 'i';					  // Ident-Typ
					Data.pbdCode = tempIdent;
					Data.pbdKText = cptr;
					Data.pbdTemp = True;		// ID soll temp. sein
					Data.pbdKTextLen = lstrlen (cptr);
					DEX_ModPBDData (Data);

				//  Ident liefern
					long *newID = new long (tempIdent);
					if (!newID) {
						DEX_Error (RC_DQLParser, EC_NOMEMORY);
						YYABORT;
					}
					YYSTACK (newID, YYLong);

				//  Speicher freigeben
					DELETE_VEC (cptr);
				} break;
case 54:
{
				/* F�r alle Objekte mit Ihren S�tzen gegebene
				   DBaseExpr berechnen und auswerten. ggf. Satz
				   merken. Auch hier ist die Expr mit Objektmerkmalen
				   parametrisierbar.
				 */
					char *cptr = yypvt[-1].StringToken();
					if (cptr == NULL) {
						DEX_Error (RC_DQLParser, EC_NOMEMORY);
						YYABORT;
					}
					if (groupActive) {
					// lokale FilterExpression merken
						pLocalExpr = new char [lstrlen(cptr) +1];
						if (pLocalExpr)
							lstrcpy (pLocalExpr, cptr);
						else {
							DEX_Error (RC_DQLParser, EC_NOMEMORY);
							YYABORT;
						}
					 } else {
					// globale FilterExpression merken
						DELETE_VEC (pGlobalExpr);
						pGlobalExpr = new char [lstrlen(cptr) +1];
						if (pGlobalExpr)
							lstrcpy (pGlobalExpr, cptr);
						else {
							DEX_Error (RC_DQLParser, EC_NOMEMORY);
							YYABORT;
						}
					}
				//  Speicher wieder freigeben
					DELETE_VEC (cptr);
				} break;
case 55:
{
					ExtDBError (RC_DQLParser, EC_BaddBaseExpr);
					YYABORT;
				} break;
case 56:
{
				/* Ein DBaseSchl�ssel, bestehend aus einem DBaseFeldnamen und
				   einem konkreten ObjektSchl�ssel, wird definiert.
				 */
					if (groupActive) {   // innerhalb einer Gruppe
						pLocalKF = new KeyFilter (&yypvt[-4].GeoDBKeyToken(), &yypvt[-2].DBaseKeyToken(), FALSE);
						if (!pLocalKF) {
							DEX_Error (RC_DQLParser, EC_NOMEMORY);
							YYABORT;
						}
					} else {
						DELETE_OBJ (pGlobalKF);
						pGlobalKF = new KeyFilter (&yypvt[-4].GeoDBKeyToken(), &yypvt[-2].DBaseKeyToken(), FALSE);
						if (!pGlobalKF) {
							DEX_Error (RC_DQLParser, EC_NOMEMORY);
							YYABORT;
						}
					}
				} break;
case 57:
{
				/* Ein DBaseSchl�ssel, bestehend aus einem DBaseFeldnamen und
				   einem konkreten ObjektSchl�ssel, wird definiert. Dabei wird
				   vorrausgesetzt, da� jedem GeometrieObjekt genau ein DBase-
				   Satz zugeordnet ist.
				 */
					if (groupActive) {  // innerhalb einer Gruppe
						pLocalKF = new KeyFilter (&yypvt[-4].GeoDBKeyToken(), &yypvt[-2].DBaseKeyToken(), TRUE);
						if (!pLocalKF) {
							DEX_Error (RC_DQLParser, EC_NOMEMORY);
							YYABORT;
						}
					} else {
						DELETE_OBJ (pGlobalKF);
						pGlobalKF = new KeyFilter (&yypvt[-4].GeoDBKeyToken(), &yypvt[-2].DBaseKeyToken(), TRUE);
						if (!pGlobalKF) {
							DEX_Error (RC_DQLParser, EC_NOMEMORY);
							YYABORT;
						}
					}
				} break;
case 58:
{
					if (groupActive) {   // innerhalb einer Gruppe
						pLocalKF = new KeyFilter (&yypvt[-2].DBaseKeyToken(), FALSE);
						if (!pLocalKF) {
							DEX_Error (RC_DQLParser, EC_NOMEMORY);
							YYABORT;
						}
					} else {
						DELETE_OBJ (pGlobalKF);
						pGlobalKF = new KeyFilter (&yypvt[-2].DBaseKeyToken(), FALSE);
						if (!pGlobalKF) {
							DEX_Error (RC_DQLParser, EC_NOMEMORY);
							YYABORT;
						}
					}
				} break;
case 59:
{
					if (groupActive) {  // innerhalb einer Gruppe
						pLocalKF = new KeyFilter (&yypvt[-2].DBaseKeyToken(), TRUE);
						if (!pLocalKF) {
							DEX_Error (RC_DQLParser, EC_NOMEMORY);
							YYABORT;
						}
					} else {
						DELETE_OBJ (pGlobalKF);
						pGlobalKF = new KeyFilter (&yypvt[-2].DBaseKeyToken(), TRUE);
						if (!pGlobalKF) {
							DEX_Error (RC_DQLParser, EC_NOMEMORY);
							YYABORT;
						}
					}
				} break;
case 60:
{
					ExtDBError (RC_DQLParser, EC_BadKeySpec);
					YYABORT;
				} break;
case 61:
{
				/* Schl�ssel zu DBaseS�tzen ist �ber Parameter gegeben.
				   D.h. Die INTEGER-Zahl gibt die Nummer des Eintrages in
				   der GeoDB-INI an, die als Schl�ssel zu der anzubindenden
				   DBaseDatei verwendet werden soll.
				 */
					GeoDBKey *pGDBKey = new GeoDBKey (DBKParameter, yypvt[-0].LongToken());
					if (!pGDBKey) {
						DEX_Error (RC_DQLParser, EC_NOMEMORY);
						YYABORT;
					}
					YYSTACK (pGDBKey, YYGeoDBKey);
				} break;
case 62:
{
				/* Schl�ssel zu DBaseS�tzen ist als MerkmalsCode gegeben.
				   Die INTEGER-Zahl wird als MerkmalsCode ausgewertet. Der 
				   entsprechende MerkmalsWert ist der Feldinhalt des Feldes in der DBaseDatei.
				 */
					GeoDBKey *pGDBKey = new GeoDBKey (DBKCode, yypvt[-0].LongToken());
					if (!pGDBKey) {
						DEX_Error (RC_DQLParser, EC_NOMEMORY);
						YYABORT;
					}
					YYSTACK (pGDBKey, YYGeoDBKey);
				} break;
case 63:
{
				/* Der FeldName in der DBaseDatei, der als Schl�sselFeld
				   verwendet werden soll ist direkt gegeben (als String).
				 */
					char *cptr = yypvt[-0].StringToken();
					if (!cptr) {
						DEX_Error (RC_DQLParser, EC_NOMEMORY);
						YYABORT;
					}
					DBaseKey *pDBKey = new DBaseKey (DBField, cptr);
					if (!pDBKey) {
						DEX_Error (RC_DQLParser, EC_NOMEMORY);
						YYABORT;
					}
					YYSTACK (pDBKey, YYDBaseKey);
					DELETE_VEC (cptr);
				} break;
case 64:
{
				/* Der FeldName in der DBaseDatei, der als Schl�sselFeld 
				   benutzt wird, ist als MerkmalsWert mit dem als INTEGER-
				   Zahl gegebenen MerkmalsCode am aktuellen Geometrie-
				   objekt abgelegt. */
					DBaseKey *pDBKey = new DBaseKey (DBCode, yypvt[-0].LongToken());
					if (!pDBKey) {
						DEX_Error (RC_DQLParser, EC_NOMEMORY);
						YYABORT;
					}
					YYSTACK (pDBKey, YYDBaseKey);
				} break;
case 65:
{
				/* Der FeldName in der DBaseDatei, der als Schl�sselFeld 
				   benutzt wird, ist als Parameter in der GeoDB-INI gegeben.
				   Damit ist eine Identifikatorbezogene Anbindung m�glich.
				 */
					DBaseKey *pDBKey = new DBaseKey (DBParameter, yypvt[-0].LongToken());
					if (!pDBKey) {
						DEX_Error (RC_DQLParser, EC_NOMEMORY);
						YYABORT;
					}
					YYSTACK (pDBKey, YYDBaseKey);
				} break;
case 67:
{
				/* Der FeldName in der DBaseDatei, der als Schl�sselFeld
				   verwendet werden soll ist direkt gegeben (als String).
				 */
					char *cptr = yypvt[-0].StringToken();
					if (!cptr) {
						DEX_Error (RC_DQLParser, EC_NOMEMORY);
						YYABORT;
					}
					DBaseKey *pDBKey = new DBaseKey (DBField, cptr, True);	  // nur Expression geg.
					if (!pDBKey) {
						DEX_Error (RC_DQLParser, EC_NOMEMORY);
						YYABORT;
					}
					YYSTACK (pDBKey, YYDBaseKey);
					DELETE_VEC (cptr);
				} break;
case 68:
{
				/* Der FeldName in der DBaseDatei, der als Schl�sselFeld 
				   benutzt wird, ist als Parameter in der GeoDB-INI gegeben.
				   Damit ist eine Identifikatorbezogene Anbindung m�glich.
				 */
					DBaseKey *pDBKey = new DBaseKey (DBParameter, yypvt[-0].LongToken(), True);	   // nur Expr. geg.
					if (!pDBKey) {
						DEX_Error (RC_DQLParser, EC_NOMEMORY);
						YYABORT;
					}
					YYSTACK (pDBKey, YYDBaseKey);
				} break;
case 69:
{
				/* Die Anbindung an die DBaseDaten erfolgt nicht �ber einen
				   FeldNamen, sondern �ber einen vordefinierten Tag in der
				   DBaseDatei.
				 */
					char TagName[30];
					char *cptr = yypvt[-1].StringToken();
					if (cptr == NULL) {
						DEX_Error (RC_DQLParser, EC_NOMEMORY);
						YYABORT;
					}
					wsprintf (TagName, "<%s>", cptr);
					DELETE_VEC (cptr);

					DBaseKey *pDBKey = new DBaseKey (DBTag, TagName);
					if (!pDBKey) {
						DEX_Error (RC_DQLParser, EC_NOMEMORY);
						YYABORT;
					}
					YYSTACK (pDBKey, YYDBaseKey);
				} break;
case 70:
{
					DefaultRelation = True;
				} break;
case 71:
{
				//  Relation aufbauen und in Container ablegen
					DefaultRelation = False;
					if (AddRelation (yypvt[-4].MasterTermToken(), yypvt[-2].SlaveTermToken()) !=
						EC_OKAY)
						YYABORT;
				} break;
case 72:
{
				// DB-Alias, FeldName
				MasterTerm *pMTerm = new MasterTerm (yypvt[-2].StringToken(), yypvt[-0].StringToken());
					if (!pMTerm) {
						DEX_Error (RC_DQLParser, EC_NOMEMORY);

						YYABORT;
					}
					YYSTACK (pMTerm, YYMasterTerm);
				} break;
case 73:
{
				// nur FeldName, DB ist default
					CTable t(*pDBFs);
					if (t.First()) {
						DataIndexLock l(t);
						MasterTerm *pMTerm = new MasterTerm (l -> alias.ptr(), yypvt[-0].StringToken());
						if (!pMTerm) {
							DEX_Error (RC_DQLParser, EC_NOMEMORY);
							YYABORT;
						}
						YYSTACK (pMTerm, YYMasterTerm);
					} else {
						ExtDBError (RC_DQLParser, EC_NODBASEFILE);
						YYABORT;
					}
				} break;
case 74:
{
				// SlaveDB-Alias und Tag
					SlaveTerm *pSTerm = new SlaveTerm (yypvt[-2].StringToken(), yypvt[-0].DBaseKeyToken());
					if (!pSTerm) {
						DEX_Error (RC_DQLParser, EC_NOMEMORY);
						YYABORT;
					}
					YYSTACK (pSTerm, YYSlaveTerm);
				} break;
case 75:
{
						if (fSyntaxTestOnly)
							yyignore;
				} break;
case 77:
{
					ExtDBError (RC_DQLParser, EC_BadOutStat);
					YYABORT;
				} break;
case 79:
{
					ExtDBError (RC_DQLParser, EC_SYNTAX);
					YYABORT;
				} break;
case 81:
{
					ExtDBError (RC_DQLParser, EC_SYNTAX);
					YYABORT;
				} break;
case 82:
{
					long Cnt = pKE -> OF ().Compact();
					switch (yypvt[-2].DevTypeToken()) {
						case DTWindow: {
							if (yypvt[-0].OutTypeToken() == OTObjList ||
								yypvt[-0].OutTypeToken() == OTClassification) {
								if (Cnt != 0) {
									if (pGs -> Count() != 0)
										pKE -> RStatus () = (RSToDo)OTClassification;
									else
										pKE -> RStatus () = (RSToDo)OTObjList;
								} else
									// kein Objekt gefunden
									DEX_Error (RC_DQLParser, WC_RECHNOTFOUND);
							}
						}
						break;
						case DTPrinter:
						case DTUnknown:
						default:
								break;
					}
				} break;
case 83:
{
				/* Standard: Objektliste im Fenster und auf Drucker */
				// Abspeichern, was im StandardFall zu machen ist
					if (pGs -> Count() != 0)
						pKE -> RStatus () = (RSToDo)OTClassification;
					else
						pKE -> RStatus () = (RSToDo)OTObjList;
				} break;
case 84:
{
				/* Standard: im Fenster */
					long Cnt = pKE -> OF ().Compact();
					switch (yypvt[-0].OutTypeToken()) {
						case OTObjList:
						case OTClassification:
							if (Cnt != 0)
								pKE -> RStatus () = (RSToDo)yypvt[-0].OutTypeToken();
							else
								DEX_Error (RC_DQLParser, WC_RECHNOTFOUND);
						break;

						case OTGraphics:
						case OTSheet:
						case OTUnknown:
						default:
								break;
						}
				} break;
case 85:
{
					DeviceType *pDevType = new DeviceType (DTWindow);
					if (!pDevType) {
						DEX_Error (RC_DQLParser, EC_NOMEMORY);
						YYABORT;
					}
					YYSTACK (pDevType, YYDevice);
				} break;
case 86:
{
					ExtDBError (RC_DQLParser, EC_BadOutDevice);
					YYABORT;
				} break;
case 87:
{
					OutputType *pOutType = new OutputType (OTObjList);
					if (!pOutType) {
						DEX_Error (RC_DQLParser, EC_NOMEMORY);
						YYABORT;
					}
					YYSTACK (pOutType, YYOutput);
				} break;
case 88:
{
					OutputType *pOutType = new OutputType (OTClassification);
					if (!pOutType) {
						DEX_Error (RC_DQLParser, EC_NOMEMORY);
						YYABORT;
					}
					YYSTACK (pOutType, YYOutput);
				} break;
case 89:
{
					ExtDBError (RC_DQLParser, EC_BadOutForm);
					YYABORT;
				} break;
		}
               (*pyyval) = yypv[1];
		goto yystack;  /* stack new state and value */

	}


