/*
File: COLLIST.HPP
- speichere  Spalten-Infos einer ODBC-Tabelle in einem Container.

Erarbeitet: J.Benkenstein					Stand vom 13. Mai 1994
*/
                 
#ifndef _COLLIST_HPP
#define _COLLIST_HPP                  

enum SetInfoResult { NotSet = 0, OkSet = 1, InfoTruncated = 2 };

// Spalten-Objekt beinhaltet alle wichtigen Infos einer Spalte
class CColumnObj 
{      
private:
	CString m_strColName,				// Spalten-(Feld-)Name
			m_strSQLTypeName,			// SQL-Typname
			m_strBracketsColName;		// SQL-Typname in [] eingeschlossen
	int m_sRFXType,					// Spalten-Typ (f�r RFX)
		  m_sSQLType,					// Spalten-Typ (von ODBC)
		  m_sRadix,						// Radix der Ziffer
	 	  m_sShowLen;					// max. Darstellungs-L�nge des Feldes	 		 

	long m_lFieldLen;					// Feldl�nge	 	  
	
	void *m_pValue;						// Zeiger auf Feldinhalt
	BOOL m_bResult;						// Konstruktor-Flag
	int m_sIndex;                                         // Index im Container
    
public:    
	// Konstruktor/Destruktor       
        CColumnObj (CColumns &OneCol, short sIndex);          // neue Spalten-Info anlegen
	~ CColumnObj (void);				// Info l�schen
	
	// weitere Member-Funktionen
	CString &ColName (void) { return m_strColName; }
	CString &BracketsColName (void) { return m_strBracketsColName; }
	CString &SQLTypeName (void) { return m_strSQLTypeName; }
	int RFXType (void) { return m_sRFXType; }	   
	int SQLType (void) { return m_sSQLType; }
	int ShowLen (void) { return m_sShowLen; }		// Darstellungs-L�nge
	void *Value (void) { return m_pValue; }                
	BOOL Result (void) { return m_bResult; }
	int Radix (void) { return m_sRadix; }
	long FieldLen (void) { return m_lFieldLen; }
    int Index (void) { return m_sIndex; }
};  

// Liste aller Spalten-Info
class CColumnObjArray : public CArrayContainer
{
private:
	short m_sActIndex;						// akt. Objektindex

protected:
	void __export UserDelete (void *);                          

//	lese Feldinformation	
	BOOL GetFieldInfo (short sFeldIndex, CString &strOutput, CColumnObj *pCO,
					   CRecordset *pRS);

	SetInfoResult SetFieldInfo (const char *pNewValue, CColumnObj *pCO);
                          
public:
	int m_sMaxNameLen, 					// max. L�nge aller Feldnamen
		  m_sMaxShowLen,					// der Feldwerte (f�r Darstellung)
		  m_sMaxTypeNameLen;				// der Datentyp-Namens 

    CColumnObjArray (int iSize = 30);
	~ CColumnObjArray (void);				// alle Feld-Infos freigeben

//	Lese-Funktionen	
//	lese SQL-Typ
	short GetSQLType (char *pFieldName);	// bei Fehler -1	
	short GetSQLType (short sIndex);		// bei Fehler -1	

//	lese SQL-L�nge
	long GetFieldLen (char *pFieldName);  	// bei Fehler 0
	long GetFieldLen (short sIndex);  		// bei Fehler 0
	
//	lese, soweit m�glich, den Inhalt des angegebenen Feldes als Zeichenkette	     
	BOOL GetFieldInfo (CRecordset *pRS, CString &strOutput, const char *pFieldName);

//	lese, soweit m�glich, den Inhalt des angegebenen Feldes als Zeichenkette	     
	BOOL GetFieldInfo (CRecordset *pRS, CString &strOutput, short sIndex);

//	lese Feldnamen �ber Index
	const char *GetFeldName (short sIndex);		// bei Fehler NULL

//	lese Index 
	short GetIndex (const char *pFieldName); // bei Fehler = -1

//	Schreibfunktionen
//	neue Spalten-Info erzeugen
	BOOL AddColInfo (CColumns &OneCol); 	

//	Feldinfo schreiben
	SetInfoResult SetFieldInfo (const char *pValue, short sIndex);
	SetInfoResult SetFieldInfo (const char *pValue, const char *pFieldName);

//	weitere Funktionen
// 	WHERE-Klausel f�r SQL-Abfrage erzeugen
	BOOL BuildWhereKlausel (CString &strWhere, char *pFieldName, 
							char *pFieldValue, BOOL bOutErr = TRUE);        
	
// 	Feldnamen- und typ in Liste ausgeben							
	BOOL FillColumnList (CColumns &ColStatus); 							
};
DeclareLock (CColumnObjArray, CColumnObj);


#endif _COLLIST_HPP                 
