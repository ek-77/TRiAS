// $Header: $
// Copyright� 1999-2000 TRiAS GmbH Potsdam, All rights reserved
// Created: 25.02.2000 11:15:18
//
// This file was generated by the TRiASDB Data Server Wizard V1.01.076 (#HK000225)
//
// @doc
// @module DBUTIL.H | Allgemeine Makrodefinitionen et.al.

#if !defined(_DBUTIL_H__18DA511A_B0E1_4287_8250_C9CC017B761C__INCLUDED_)
#define _DBUTIL_H__18DA511A_B0E1_4287_8250_C9CC017B761C__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000

// Header include diagnostics
#if defined(_TRIAS_DBG_HEADER_DIAGNOSTICS)
#pragma message(__TIME__": include " __FILE__ )
#endif

///////////////////////////////////////////////////////////////////////////////
// sonstige helper includes
#include <Com/BSTRHelpers.h>
#include <Pragmas.h>

///////////////////////////////////////////////////////////////////////////////
// Gr��e eines Arrays
#define _countof(x) (sizeof(x)/sizeof(x[0]))

///////////////////////////////////////////////////////////////////////////////
// Zerlegen eines Objektes/Arrays
#if !defined(DELETE_OBJ)
#define DELETE_OBJ(x)	if(!x) {} else { delete(x); x = NULL; }
#endif // DELETE_OBJ

#if !defined(DELETE_VEC)
#define DELETE_VEC(x)	if(!x) {} else { delete[](x); x = NULL; }
#endif // DELETE_VEC

///////////////////////////////////////////////////////////////////////////////
// Datentyp einer Objekteigenschaft
#define DATATYPE_FROM_VT(x)	MAKELONG(0,(x))
#define VT_FROM_DATATYPE(x)	HIWORD(x)

///////////////////////////////////////////////////////////////////////////////
// Anzahl der Bytes f�r ein BSTR in einem Stream
inline 
ULONG LenForStream (const CComBSTR &bstr)
{
	return (bstr.m_str ? ::SysStringByteLen(bstr.m_str)+sizeof(OLECHAR) : 0) + sizeof(ULONG);
}

///////////////////////////////////////////////////////////////////////////////
// Daten in einen Stream Schreiben/von dort lesen
template<class T>
inline HRESULT LoadData (IStream *pIStm, T &riVal)
{
	return pIStm -> Read (&riVal, sizeof(T), NULL);
}

template<class T>
inline HRESULT SaveData (IStream *pIStm, T &riVal)
{
	return pIStm -> Write (&riVal, sizeof(T), NULL);
}

// backwards compatibility functions
inline HRESULT LoadLong (IStream *pIStm, long &riVal) { return LoadData (pIStm, riVal); }
inline HRESULT SaveLong (IStream *pIStm, long iVal) { return SaveData (pIStm, iVal); }

///////////////////////////////////////////////////////////////////////////////
// WindowsVersion
bool IsWin31 (void);
bool IsWin40 (void);
bool IsWin41 (void);
bool IsWin50 (void);
bool IsWin32s (void);
bool IsWinNT (void);

///////////////////////////////////////////////////////////////////////////////
// Finden eines besonderen Parents in der Objekthierarchie �ber einem gegebenen
// Objekt
template<class T>
inline HRESULT FindSpecificParent (T ParentIn, REFIID riid, void **ppIObj)
{
__Interface<IDispatch> Parent(ParentIn);

	while (Parent.IsValid()) {
		if (SUCCEEDED(Parent -> QueryInterface(riid, ppIObj)))
			return S_OK;		// gesuchtes Objekt gefunden

	// eine Etage weiter hoch
	__Interface<ITRiASBase> ParT(Parent);

		RETURN_FAILED_HRESULT(ParT -> get_Parent (Parent.ppi()));
	}
	return E_UNEXPECTED;
}

template<class T, class K>
inline HRESULT FindSpecificParent (T ParentIn, K **ppIObj)
{
	return FindSpecificParent (ParentIn, __uuidof(K), reinterpret_cast<void **>(ppIObj));
}

/////////////////////////////////////////////////////////////////////////////
// Feststellen, ob String ein OKS ist und wenn ja selbigen liefern
bool StringIsOKS (BSTR bstrToStrip, BSTR *pStripped = NULL, BSTR *pbstrAppendix = NULL);

///////////////////////////////////////////////////////////////////////////////
// Helper, um reine [out] Parameter sauber zu halten
inline BSTR *CLEARED (BSTR *pbstr)
{
	_ASSERTE(NULL != pbstr);
	if (NULL != pbstr) {
		::SysFreeString(*pbstr);
		*pbstr = NULL;
	}
	return pbstr;
}

inline VARIANT *CLEARED (CComVariant *pv)
{
	_ASSERTE(NULL != pv);
	pv -> Clear();			//lint !e534, !e613
	return pv;
}

///////////////////////////////////////////////////////////////////////////////
// rechts alle vorgegebenen Zeichen abschneiden
inline BSTR TrimRight (BSTR ToTrim, wchar_t c = L' ')
{
int iLen = ::SysStringLen (ToTrim);
int iLastGoodChar = -1;
wchar_t *p = ToTrim;

	for (int i = 0; i < iLen && *p != L'\0'; i++) {
		if (*p++ != c)
			iLastGoodChar = i;
	}
	if (-1 != iLastGoodChar)
		ToTrim[iLastGoodChar+1] = L'\0';		// hinten abschneiden
	return ToTrim;
}

///////////////////////////////////////////////////////////////////////////////
// Helperfunktionen f�r die Verwaltung von bitweisen enum's
template<class T>
inline void SetType (T &rVal, DWORD rgToSet) 
{ 
	rVal = (T)(rVal | rgToSet);
}

template<class T>
inline void ClearType (T &rVal, DWORD rgToClear) 
{ 
	rVal = (T)(rVal & ~rgToClear); 
}

template<class T>
inline bool HasType (T rgVal, DWORD rgToTest) 
{ 
	return (rgVal & rgToTest) ? true : false; 
}

///////////////////////////////////////////////////////////////////////////////
// Spezielle Messagebox mit Formatierm�glichkeiten
int __cdecl VMessageBox (UINT uiCaption, UINT uiType, UINT uiText, ...);
int __cdecl VMessageBox (LPCSTR pcCaption, UINT uiType, UINT uiText, ...);

#endif // !defined(_DBUTIL_H__18DA511A_B0E1_4287_8250_C9CC017B761C__INCLUDED_)
