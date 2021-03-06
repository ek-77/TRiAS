// Loeschen eines Objektes der DatenBasis -------------------------------------
// File: DEL.C

#include "trias02p.hxx"

// l�scht das vorgegebene Objekt vollst�ndig und unwiderrufbar aus der DB -----
extern "C" long EXPORT02 FUNCTYPE del (HPROJECT hPr, long ON) 
{
ErrCode RC;		// FehlerCode
DB_ADDR_OBL dbaOBL(hPr);

	DEX_SetDirtyGeoDB(true);

// Relationen behandeln
// 1. evtl. Textobjekt rauswerfen
	{
	long AssocON = AssociatedObjekt (hPr, ON);

		if (AssocON < 0) {
		// BegleitRelation aufl�sen
			DBASSERT (DelRelation (hPr, ON, -AssocON, 0, BRELA));
		// TextObjekt l�schen
			DBASSERT (del (hPr, -AssocON));
		} else if (AssocON > 0) {
		// Objekt ist abh�ngiges Begleitobjekt
			DBASSERT (DelRelation (hPr, ON, AssocON, 0, BRELP));
		}
	}

// 2. alle anderen Relationen, die dieses Objekt hat l�schen
	DBASSERT (DelAllRelations (hPr, ON));

// Merkmale l�schen 
	while ((RC = (ErrCode)delmi (hPr, -1L, ON, dbaOBL.file_no)) == S_OKAY)
		;
	if (RC != S_DUMMY) return RC;

// Identifikator l�schen
int iOType = TPUnknown; 

	DBASSERT (delid (hPr, ON, &iOType));

// Geometrie l�schen 
	DBASSERT (delgi (hPr, ON));

// ObjektSatz l�schen
//	dbaOBL.file_no = OBL;
	dbaOBL.rec_no = ON;
	__Dispose (dbaOBL);

return S_OKAY;
}

