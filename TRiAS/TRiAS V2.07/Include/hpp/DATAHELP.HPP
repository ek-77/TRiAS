// Diverse Hilfsfunktionen f�r den Umgang mit unserem CDataObject -------------
// File: DATAHELP.HPP

#ifndef _DATA_HELP_HPP
#define _DATA_HELP_HPP


// Lesen eines EnumLONG aus einem DataObjekt
HRESULT GetEnumLONGData (IDataObject *pIDataObj, IEnumObjectsByNumber **ppIEnumOut);

// Hinzuf�gen eines EnumLONG zu einem IDataObject
HRESULT SetEnumLONGData (IEnumObjectsByNumber *pEnum, IDataObject *pDataObj);

HRESULT GetVariantData (IDataObject *pIDO, const FORMATETC *pcfe, CComVariant *pv);
HRESULT SetVariantData (CComVariant &rv, IDataObject *pIDO, const FORMATETC *pcfe);

#endif // _DATA_HELP_HPP


