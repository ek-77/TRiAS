/*
Datei: CHKLAUSL.HPP

Earbeitet: J.Benkenstein 			Stand vom 30.10.1994
*/

#ifndef _CHKLAUSL_HPP
#define _CHKLAUSL_HPP   

//	- Anzahl der "{" gleich Anzahl "}"
// 	- innerhalb dieser Klammern nur Ziffern ?
// 	- ist diese Ziffer ein g�ltiger Merkmalskode
//	- substituiere den Merkmals-Ausdr�cke durch formale Parameter ("?")
//	- pr�fe Klausel mit Hilfe der Funktion SQLPrepare ()
BOOL CheckWhereKlausel (CDatabase *pDataBase, 
						CString &strTableNames, // durch Komma getrennte Tabellen-Namen
					    CString &strKlausel, 	// Where-Klausel
					    CString &strError,		// evtl. Fehler-Text
                                            short &sErrorPos);           // Fehler-Postion, wenn nicht bekannt: -1
					    						
#endif 	// _CHKLAUSL_HPP                     
