/*
File: LAYERS.HPP
realiert die Verwaltung der zu importierenden Layernamen

erarbeitet : J. Benkenstein                 Stand vom 28.11.1996
*/

#include "pheader.hpp"					// prec. Header

#include "layers.hpp"	  				// zugeh. Header

//	Konstanten
const char IniSep = ',';

//  Prototypen
void yyerror (short);

//  globale Funktionen ---------------------------------------------------------
void* __export GetLayerName (void *pObj) 
{
	return ((CLayer *) pObj) -> LayerName ();
}

int __export CompareLayerNames (void *pObj1, void *pObj2)
{
	return strcmpi ((char *) pObj1, (char *) pObj2);
}	

// CLayer ---------------------------------------------------------------------
CLayer :: CLayer (void)
{
	m_pLayerName = NULL;
}

CLayer :: ~CLayer (void)
{
	DELETE_VEC (m_pLayerName);
}

Bool CLayer :: Init (char *pLayerName) 
{
// 	pr�fe Parameter
	if (!pLayerName)
	{
		yyerror (IDS_SYSERROR);
		return False;
	}

//	ist der Wert g�ltig
	if (!*pLayerName)
		return True;

//	Werte �bernehmen
	m_pLayerName = new char [strlen (pLayerName) + 1];
	if (!m_pLayerName)
	{
		yyerror (IDS_NOMEMORY);
		return False;
	}
				
	strcpy (m_pLayerName, pLayerName);
   	
	return True;
}

// CLayersBaum ------------------------------------------------------------
CLayerBaum ::  CLayerBaum (void)
			:  CTree (GetLayerName, CompareLayerNames) 
{	
}

void CLayerBaum :: UserDelete (void *pObj) 
{
	((CLayer *) pObj) -> ~ CLayer ();
}

CLayerBaum :: ~ CLayerBaum (void) 
{
	EveryDelete ();
}

//	alle g�ltigen Layernamen aus dxfimp.ini lesen
Bool CLayerBaum :: Init (ResourceFile *pRF, char *pEbenen) 
{           
//	pr�fe Parameter
	if (!pRF)
	{
		DEX_Error (RC_DxfImport, EC_SYSERROR);
		return False;
	}

//	ggf. alle Ebenen ??
	if (!pEbenen || !*pEbenen)
		return TRUE;

//	lese alle Eintr�ge
	char LayerName [128] = "";
	char NewLayerName [128] = "";
	char *pNewLayerName = NULL;
	char *pLast = NULL;
	short sCnt = 0;
	for (char *pBuffer = pEbenen; pBuffer && *pBuffer; )
	{
		if ((pLast = strchr (pBuffer, IniSep)))
			sCnt = pLast - pBuffer;
		else
			sCnt = strlen (pBuffer);

		if (0 == sCnt)
			break;
			
		memcpy (LayerName, pBuffer, sCnt);
		LayerName [sCnt] = '\0';

	//	\n\r entfernen
		pNewLayerName = NewLayerName;
		for (short i = 0; i < sCnt; i++)
		{
			if (LayerName [i] != '\r' && LayerName [i] != '\n')
				*pNewLayerName++ = LayerName [i];
		}
		*pNewLayerName = '\0';
		
	//	neuen Eintrag erzeugen
		CTable Tb (*this);
		if (!Tb.Find (NewLayerName))
		{
			CLayerCreator LC (*this);
			CLayer *pL = ContCreate (LC, CLayer);
			if (!pL || !pL -> Init (NewLayerName))
			{
				yyerror (IDS_NOMEMORY);
				return False;		
			}				
		}

		if (pLast)
			pBuffer = ++pLast;
		else
			break;
	}			
	
	return True;
}                     

// g�ltiger Layername
Bool CLayerBaum :: IsValid (char *pLayerName) 
{
//  g�ltiger Name ?
	if (!pLayerName)
	{
		yyerror (IDS_SYSERROR);
		return False;
	}

//	wenn keine Eintr�ge, dann sind alle Ebenen g�ltig
	if (0 == Count ())
		return TRUE;

//  pr�fen, ob Eintrag existiert ?
	CTable Tb (*this);
	return Tb.Find (pLayerName); 	
}

