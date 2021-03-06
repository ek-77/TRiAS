// Hilfsroutinen fuer die Umwandlung von double-Werten in ein String
// File: STRUTIL.CPP

#include "stdafx.h"			// prec. Header

extern "C" {
	#include <stdlib.h>
	#include <string.h>
	#include <memory.h>
}

// char *DtoA (double Wert, char *String, const char *Format = NULL); 
const char DoubleFormat [] = "%.5lf";    // voreingestelltes double-Format

// Einf�gen von Zeichen ab einer bestimmten Position des gegebenen Strings
static char *StrInsNChr (char *String, char c, int Pos, int n) 
{
	memmove (&String[Pos+n], &String[Pos], lstrlen (String)-Pos+1);
	memset (&String[Pos], c, n);

return String;
}

// Umwandlung eines Double-Wertes entsprechend Format-String 
// in eine Zeichenkette
char *DtoA (double Wert, char *String, const char *Format) 
{
register int Laenge;
register int StrLaenge;
int NachKomma = 0;
int KommaPos;
int Sign;
char *lpA;
char *lpB;

//  pr�fe Parameter
	if (Format == NULL)
		Format = DoubleFormat;

	lpA = (char *) Format + strcspn (Format, "0123456789");
	lpB = strchr (Format, '.');
	if (lpB) 
		NachKomma = atoi (lpB+1);
	else {
		lpB = lpA;
		NachKomma = 3;
	}
	if (lpA <= lpB) 
		Laenge = atoi (lpA);
	else
		Laenge = 7;
	lstrcpy (String, fcvt (Wert, NachKomma, &KommaPos, &Sign));
	if (KommaPos <= 0) {
	    StrInsNChr (String, '0', 0, abs (KommaPos) + 1);
	    StrInsNChr (String, '.', 1, 1);
	}
	else
	    StrInsNChr (String, '.', KommaPos, 1);
	if (*(strchr(Format, '%')+1) == '+') {
		if (!Sign)
			StrInsNChr (String, '+', 0, 1);
	}
	if (Sign)
		StrInsNChr (String, '-', 0, 1);
	if (!strchr (Format, '-') &&   // wenn keine linksb�ndige Ausgabe
	    (Laenge > (StrLaenge = lstrlen(String))))
		StrInsNChr (String, ' ', 
			(String[1] == '0' && (*String == '-' || *String == '+')) ?
				1 : 0, Laenge - StrLaenge);
	if (String[Laenge = (lstrlen(String) -1)] == '.')
		String[Laenge] = '\0';

//  f�hrende Leerzeichen ggf. L�schen        
	char *pStringTmp = '\0';
	char *pFirstCh = '\0';
	if (*String == ' ')
	{
	// 	1. g�ltige Zeichen suchen
		pFirstCh = String;
		while (*pFirstCh != '\0' && *pFirstCh == ' ')
			pFirstCh++;

	// 	String umkopieren
		pStringTmp = String;
		while (*pFirstCh != '\0')
			*pStringTmp++ = *pFirstCh++;

		*pStringTmp = '\0';     // Endekennzeichen setzen
	}
	
//	alle Nullen nach dem Dezimalpunkt l�schen
	pStringTmp = &String [lstrlen (String) - 1];			// auf Letzte Zeichen	    
	while (*pStringTmp != '.' && *pStringTmp == '0')
		*pStringTmp-- = '\0';	
		
//	Dezimalpunkt ggf. auch l�schen
	if (*pStringTmp == '.')
		*pStringTmp = '\0';		

	return String;
}

