// Methoden f�r ClipListe
// Datei: CLIPLIST.CXX
// W. M�rtl


#include "GeometrP.hxx"

#include "cliplist.hxx"

#ifdef _DEBUG
#undef THIS_FILE
static char BASED_CODE THIS_FILE[] = __FILE__;
#endif


//-------------------------------------------------------------------------------------------------
// Konstruktor
_GEOMETR_EXPORT ClipListe :: ClipListe (void) 
						   : CListContainer () 
{
}


//-------------------------------------------------------------------------------------------------
// Destruktor
_GEOMETR_EXPORT ClipListe :: ~ClipListe (void) 
{
	// 'EveryDelete' ruft f�r alle Objekte der Liste die Funktion 'UserDelete()'
	EveryDelete ();	// alle Elemente dieser Liste l�schen
} // an dieser Stelle wird implizit der Destruktor des ListContainers gerufen


//-------------------------------------------------------------------------------------------------
// 'UserDelete' wird f�r jedes Objekt, das aus der ClipListe gel�scht werden soll, gerufen,
// wobei pObj auf eben dieses Objekt verweist
void _GEOMETR_EXPORT ClipListe :: UserDelete (void* pObj)
{
	_ASSERTE (pObj != 0);
	((GeoObjekt*) pObj) -> ~GeoObjekt ();
}
