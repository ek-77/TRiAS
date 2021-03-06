// Implementation der typspezifischen TreeKlasse ------------------------------
// Generiert aus CTTREE.CTT
// File: PBDIDS.CXX

#include "trias02p.hxx"

#include <limits.h>
#include <pbd.hxx>	// PBD_Ident

#include "pbdids.hxx"	// KlassenDeklarationen

// Konstruktor der typspezifischen TrreKlasse ---------------------------------
CPBDData :: CPBDData (void)
: CTree ((CTTREEGETKEYFCN)FCTTreeGetULONG, (CTTREECMPKEYFCN)FCTTreeCmpULONG)
{
	m_fIterated = false;
}

// Destruktor, zerlegt alle Elemente des Baumes -------------------------------
CPBDData :: ~CPBDData (void)
{
	EveryDelete();
}

// Funktion, die ein Element aus dem Baum l�scht -----------------------------
bool CPBDData :: FDeleteItem (ULONG &rKT)
{
CTable t(*this);

	if (t.Find (&rKT)) return t.Delete();

return false;
}

// Funktion, die Pointer auf ein gesuchtes Item liefert ---------------------
PBD_Data *CPBDData:: FFindItem (ULONG &rKT)
{
CTable t(*this);

	if (t.Find (&rKT)) {
	PBD_DataLock l(t);

		if (l) return l;
	}

return NULL;	// nicht gefunden
}

// Funktion, die Pointer auf den Suchschl�ssel liefert ------------------------
ULONG *FCTTreeGetULONG (PBD_Data *pObj)
{
	return (ULONG *)& ((PBD_Data *)pObj) -> GetCode();
}

// VergleichsFunktion f�r zwei Suchschl�ssel ----------------------------------
inline int FCmpULONG (ULONG &rObj1, ULONG &rObj2)
{
	if (rObj1 > rObj2) 	return (+1);
	if (rObj1 == rObj2) 	return (0);
	if (rObj1 < rObj2) 	return (-1);

return 0;
}

// Funktion, die zwei SuchSchl�ssel miteinander vergleicht --------------------
int FCTTreeCmpULONG (ULONG *pObj1, ULONG *pObj2)
{
	return FCmpULONG (*pObj1, *pObj2);
}

// Enumeration aller Items in dem Baum ----------------------------------------
// die EnumerationsFunktion mu� 'PASCAL' sein
extern "C" {

inline bool EnumCallback (bool (*pFcn)(long, bool, void *), 
			  long lKey, bool iNext, void *pData) 
{
	return ((ENUMLONGKEYCALLBACK)pFcn)(lKey, iNext, pData);
}

}

bool CPBDData :: FEnumAllItems (PBD_DataEnumFunc pFcn, void *pEData)
{
CTable t(*this);
ULONG ulKey = 0L;
bool fNext = false;

	for (t.First(); t.Valid(); ) {
		{
		PBD_DataLock l(t);

			fNext = t.Next();		// fNotLast

			if (!l) continue;
			ulKey = l -> GetCode();
		}	// Lock geht out of scope
		
		if (EnumCallback (pFcn, ulKey, fNext, pEData) == false)
			return false;
	}

return true;
}

// Enumeration aller Objekte mit einem bestimmten SuchSchl�ssel ---------------
bool CPBDData :: FEnumItems (ULONG &rKey, PBD_DataEnumFunc pFcn, void *pEData)
{
CTable t(*this);

	for (t.FindFirst (&rKey); t.Valid(); ) {
	PBD_DataLock l(t);
	bool fNext = t.FindNext (&rKey);

		if (!l) continue;
		
	ULONG ulKey = l -> GetCode();
		
		if (EnumCallback (pFcn, ulKey, fNext, pEData) == false)
			return false;
	}

return true;
}


bool CPBDData :: FReInsert (ULONG &roldKey, ULONG &rnewKey)
{
CTable t(*this);

	if (t.Find (&roldKey)) 
		return t.ReInsert (&rnewKey, sizeof (rnewKey));

return false;
}


bool CPBDData :: AddToTree (PBD_Data *pD)		// Element hinzuf�gen, wenn
{
	if (!FFindItem ((ULONG &)pD -> GetCode()))	// noch nicht da
		return FAddItem (pD);
		
return true;	// ok bereits drin
}


bool CPBDData :: AddToTree (PBD_DB *pDB, ULONG ulKey)		// Element hinzuf�gen, wenn
{
	if (!FFindItem (ulKey))	// noch nicht da
		return FAddItem (pDB, ulKey);
		
return true;	// ok bereits drin
}


void EXPORT02 CPBDData :: UserDelete (void *pObj)
{
	((PBD_Data *)pObj) -> ~PBD_Data();
}

// erstmal identisch f�r alle B�ume -------------------------------------------
bool CPBDData :: FillFromTree (PBD_Data *pD)		// Element lesen
{
PBD_Data *pT = FFindItem ((ULONG &)(pD -> GetCode()));

	if (pT) {
		pD -> SetKurzText (pT -> GetKurzText());
		pD -> m_dbaSatz = pT -> m_dbaSatz;
		pD -> m_rgStatus = PBD_Data :: PBD_Unmodified;	// g�ltig setzen
		return true;
	}

return false;	// nichts gefunden
}


// Update-Funktion, aktualisiert einen Kurztext im Baum -----------------------
bool CPBDData :: RefreshEntry (const PBD_Data *pData)
{
PBD_Data *pT = FFindItem ((ULONG &)((PBD_Data *)pData) -> GetCode());

	if (pT) {
		pT -> SetKurzText (((PBD_Data *)pData) -> GetKurzText());
		pT -> m_dbaSatz = pData -> m_dbaSatz;
		pT -> m_rgStatus = PBD_Data :: PBD_Unmodified;
		return true;
	}

return false;
}


// ============================================================================
// Funktion, die ein neues Element in den Baum einh�ngt -----------------------
bool CPBDIdents :: FAddItem (PBD_Data *pD)
{
PBD_DataCreator Cr (*this);
PBD_Ident *pId = ContCreate (Cr, PBD_Ident)(pD -> m_pDB, pD -> GetCode(), 
				        pD -> GetKurzText(), true);
	
	if (pId != NULL) {
		pId -> m_dbaSatz = pD -> m_dbaSatz;
		pId -> m_rgStatus = pD -> m_rgStatus;
		return true;
	}
	
return false;
}


bool CPBDIdents :: FAddItem (PBD_DB *pDB, ULONG lIdent)
{
PBD_Ident pbdID (pDB, lIdent);

	pbdID.GetCode();	// dummy;

return true;
}


// ============================================================================
// Funktion, die ein neues Element in den Baum einh�ngt -----------------------
bool CPBDMCodes :: FAddItem (PBD_Data *pD)
{
PBD_DataCreator Cr (*this);
PBD_Merkmal *pM = ContCreate (Cr, PBD_Merkmal)(pD -> m_pDB, pD -> GetCode(), 
					   pD -> GetKurzText(), true);

	if (pM != NULL) {
		pM -> m_dbaSatz = pD -> m_dbaSatz;
		pM -> m_rgStatus = pD -> m_rgStatus;
		return true;
	}
	
return false;
}


bool CPBDMCodes :: FAddItem (PBD_DB *pDB, ULONG lMCode)
{
PBD_Merkmal pbdM (pDB, lMCode);

	pbdM.GetCode();		// dummy;

return true;
}


// ============================================================================
// Funktion, die ein neues Element in den Baum einh�ngt -----------------------
bool CPBDRCodes :: FAddItem (PBD_Data *pD)
{
PBD_DataCreator Cr (*this);
PBD_Relation *pR = ContCreate (Cr, PBD_Relation)(pD -> m_pDB, pD -> GetCode(), 
					     pD -> GetKurzText(), true);
	
	if (pR != NULL) {
		pR -> m_dbaSatz = pD -> m_dbaSatz;
		pR -> m_rgStatus = pD -> m_rgStatus;
		return true;
	}
	
return false;
}


bool CPBDRCodes :: FAddItem (PBD_DB *pDB, ULONG lRCode)
{
PBD_Relation pbdR (pDB, lRCode);

	pbdR.GetCode();		// dummy;

return true;
}


