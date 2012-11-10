// $Header: $
// Copyright� 1998-2002 GEOPunkt GmbH & Co. KG, NL Potsdam, All rights reserved
// Created: 25.02.2002 16:45:45 
//
// This file was generated by the TRiASDB Data Server Wizard V1.02.117 (#HK010502)
//
// THIS CODE AND INFORMATION IS PROVIDED "AS IS" WITHOUT WARRANTY OF ANY 
// KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
// IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS FOR A PARTICULAR 
// PURPOSE.
//
// @doc
// @module TDBPGISCursorProperty.cpp | Implementation of the <c CTDBPGISCursorProperty> class

#include "stdafx.h"

#include "Strings.h"

#include "TDBPGIS.h"
#include "TDBPGISCursorProperty.h"

#if defined(_DEBUG)
#if defined(_MFC_VER)
#define new DEBUG_NEW
#endif // defined(_MFC_VER)
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif // _DEBUG

/////////////////////////////////////////////////////////////////////////////
// Die vorliegende Klasse implementiert eine spezielle Property 'ObjectCursor',
// 'ObjectsCursor' oder 'FeatureCursor' eines Objektes (CTDBPGISObject, 
// CTDBPGISObjects bzw. CTDBPGISFeature) die daf�r sorgt, da� in 
// dem Moment, wenn ein Cursor f�r ein Objekt definiert bzw. freigegeben wird, 
// dieses Objekt mit seinem Cursor in einer speziellen Tabelle gespeichert bzw. 
// freigegeben wird. 
// Die Zuordnungstabelle 'ObjectCursor' wird f�r die Recherchen ben�tigt, 
// um den gefundenen Objekten in der Datenbank (Cursor) die zugeordneten C++ Objekte 
// (CTDBPGISObject) zuordnen zu k�nnen.
// Weiterhin k�nnen diese Zuordnungstabellen verwendet werden, um jeweils
// genau ein C++ Objekt f�r jeweils ein Datenbankobjekt zu erzeugen.
//
// Die Tabellen sind im vorliegenden Beispiel als Property ('ObjectMap', 'ObjectsMap'
// bzw. 'FeatureMap') an der zugeh�rigen Datenbank (CTDBPGISDatabase) abgelegt. 
//
// F�r andere Datenquellen ist es u.U. notwendig diese Tabellen z.B. in Bezug 
// zur Objektklasse (CTDBPGISObjects) oder evtl. zum zugeh�rigen Objekt 
// (CTDBPGISObject) zu speichern. Die entsprechende Modifikation ist dann von
// Hand auszuf�hren.
// 
// Die Verwendung einer GenObjectMap (s. TDBPGISDatabase.h: BEGIN_PROPERTYSUPPORT_MAP)
// beschr�nkt den CursorTyp auf VT_I4.

/////////////////////////////////////////////////////////////////////////////
// CTDBPGISCursorProperty

void CTDBPGISCursorProperty::FinalRelease()
{
	ResetCursor();		// Cursor wieder freigeben
}

/////////////////////////////////////////////////////////////////////////////
// PropertySupport
// Callback-interface, welches f�r die Konkretheit der Properties zust�ndig ist

STDMETHODIMP CTDBPGISCursorProperty::PutValue (BSTR Name, VARIANT Value)
{
#if defined(_MFC_VER)
	AFX_MANAGE_STATE(AfxGetStaticModuleState())
#endif // defined(_MFC_VER)

	_ASSERTE(NULL != Name);
	_ASSERTE(!wcscmp (Name, m_bstrName));		// mu� voreingestellter Name sein

	RETURN_FAILED_HRESULT(m_Value.Copy(&Value));	// Wert setzen
	RETURN_FAILED_HRESULT(SetCursor());				// Zuordnung in Map setzen bzw. entfernen
	return S_OK;
}

STDMETHODIMP CTDBPGISCursorProperty::GetValue (BSTR Name, VARIANT *pVal)
{
#if defined(_MFC_VER)
	AFX_MANAGE_STATE(AfxGetStaticModuleState())
#endif // defined(_MFC_VER)

	_ASSERTE(NULL != Name || NULL != pVal);
	_ASSERTE(!wcscmp (Name, m_bstrName));		// mu� voreingestellter Name sein
	if (NULL == pVal) return E_POINTER;

CComVariant val (m_Value);

	RETURN_FAILED_HRESULT(val.Detach (pVal));
	return S_OK;
}

STDMETHODIMP CTDBPGISCursorProperty::PutType (BSTR Name, PROPERTY_TYPE newVla)
{
#if defined(_MFC_VER)
	AFX_MANAGE_STATE(AfxGetStaticModuleState())
#endif // defined(_MFC_VER)

	_ASSERTE(NULL != Name);
	_ASSERTE(!wcscmp (Name, m_bstrName));		// mu� voreingestellter Name sein

	return E_NOTIMPL;
}

STDMETHODIMP CTDBPGISCursorProperty::GetType (BSTR Name, PROPERTY_TYPE *pVal)
{
#if defined(_MFC_VER)
	AFX_MANAGE_STATE(AfxGetStaticModuleState())
#endif // defined(_MFC_VER)

	_ASSERTE(NULL != Name || NULL != pVal);
	_ASSERTE(!wcscmp (Name, m_bstrName));		// mu� voreingestellter Name sein

	if (NULL == pVal) return E_POINTER;

	*pVal = PROPERTY_TYPE(PROPERTY_TYPE_Dynamic);
	return S_OK;
}

STDMETHODIMP CTDBPGISCursorProperty::PutValueAndType(BSTR Name, VARIANT Value, PROPERTY_TYPE Type)
{
#if defined(_MFC_VER)
	AFX_MANAGE_STATE(AfxGetStaticModuleState())
#endif // defined(_MFC_VER)

	_ASSERTE(NULL != Name);
	_ASSERTE(!wcscmp (Name, m_bstrName));		// mu� voreingestellter Name sein

// Wert setzen
	RETURN_FAILED_HRESULT(m_Value.Copy(&Value));
	return S_OK;		// Typ wird nicht bearbeitet
}

STDMETHODIMP CTDBPGISCursorProperty::GetValueAndType(BSTR Name, VARIANT * pVal, PROPERTY_TYPE * pType)
{
#if defined(_MFC_VER)
	AFX_MANAGE_STATE(AfxGetStaticModuleState())
#endif // defined(_MFC_VER)

	_ASSERTE(NULL != Name || NULL != pVal || NULL != pType);
	_ASSERTE(!wcscmp (Name, m_bstrName));		// mu� voreingestellter Name sein

	if (NULL != pVal) return E_POINTER;
	if (NULL != pType) return E_POINTER;

CComVariant val (m_Value);

	RETURN_FAILED_HRESULT(val.Detach (pVal));
	*pType = PROPERTY_TYPE(PROPERTY_TYPE_Dynamic);
	return S_OK;
}

STDMETHODIMP CTDBPGISCursorProperty::Refresh(BSTR bstrName)
{
#if defined(_MFC_VER)
	AFX_MANAGE_STATE(AfxGetStaticModuleState())
#endif // defined(_MFC_VER)

	return E_NOTIMPL;
}

///////////////////////////////////////////////////////////////////////////////
// IObjectWithSite
STDMETHODIMP CTDBPGISCursorProperty::SetSite (IUnknown *pISite)
{
#if defined(_MFC_VER)
	AFX_MANAGE_STATE(AfxGetStaticModuleState())
#endif // defined(_MFC_VER)

	if (NULL != pISite)
		m_Obj = pISite;
	else {
		ResetCursor();
		m_Obj.Assign(NULL);
	}
	return S_OK;
}

STDMETHODIMP CTDBPGISCursorProperty::GetSite (REFIID riid, void **ppvSite)
{
#if defined(_MFC_VER)
	AFX_MANAGE_STATE(AfxGetStaticModuleState())
#endif // defined(_MFC_VER)

	if (!m_Obj) 
		return TRIASDB_E_PROPERTY_NOT_INITIALIZED;
	return m_Obj -> QueryInterface (riid, ppvSite);
}

// IObjectWithName
STDMETHODIMP CTDBPGISCursorProperty::put_Name (BSTR bstrName)
{
	m_bstrName = bstrName;
	return S_OK;
}

STDMETHODIMP CTDBPGISCursorProperty::get_Name (BSTR *pbstrName)
{
	if (NULL == pbstrName)
		return E_POINTER;

	m_bstrName.CopyTo(pbstrName);
	return S_OK;
}

///////////////////////////////////////////////////////////////////////////////
// Helper
namespace {
	typedef struct tagCURSORNAMES {
		const wchar_t *m_pCursorName;
		const wchar_t *m_pMapName;
	} CURSORNAMES;

	const CURSORNAMES s_cbNames[] = {
		{ g_cbObjectCursor, g_cbObjectMap },
		{ g_cbObjectsCursor, g_cbObjectsMap },
		{ g_cbFeatureCursor, g_cbFeatureMap },
		{ NULL, NULL },
	};
}

HRESULT CTDBPGISCursorProperty::GetCursorMap (ITRiASObjectHandleMap **ppIMap)
{
	if (!m_Obj.IsValid())
		return TRIASDB_E_PROPERTY_NOT_INITIALIZED;

	COM_TRY {
	// geht davon aus, da� die Map am CTDBPGISDatabase -Objekt als Property
	// abgelegt ist
	WTRiASDatabase Parent;

		THROW_FAILED_HRESULT(FindSpecificParent (m_Obj, Parent.ppi()));

	// Namen der Map aus Propertynamen ableiten
	const CURSORNAMES *pT = s_cbNames;

		for (/**/; NULL != pT -> m_pCursorName; ++pT) {
			if (!wcscmp (pT -> m_pCursorName, m_bstrName))
				break;		// Eintrag gefunden
		}
		if (NULL == pT -> m_pCursorName)
			THROW_FAILED_HRESULT(E_UNEXPECTED);		// mu� wiedergefunden werden
	
	// Map vom Bezugsobjekt holen
	WTRiASObjectHandleMap Map (GetPropertyFrom (Parent, pT -> m_pMapName, (IDispatch *)NULL), false);	// GetProperty liefert AddRef'ed ab

		if (!Map.IsValid())
			THROW_FAILED_HRESULT(E_UNEXPECTED);

		*ppIMap = Map.detach();

	} COM_CATCH;
	return S_OK;
}

HRESULT CTDBPGISCursorProperty::SetCursor()
{
	COM_TRY {
	WTRiASObjectHandleMap Map;
	CComVariant vVal;
	HRESULT hr = S_OK;

		THROW_FAILED_HRESULT(GetCursorMap (Map.ppi()));
		THROW_FAILED_HRESULT(vVal.ChangeType (VT_I4, &m_Value));
		Map -> RemoveObject (V_I4(&vVal), OBJECTMAPMODE_RemoveAllReferences);

	OBJECTMAPMODE rgMode = OBJECTMAPMODE(OBJECTMAPMODE_CreateObjectHandle|OBJECTMAPMODE_DoNotRegisterNativeHandle);

		THROW_FAILED_HRESULT(hr = Map -> GetObjectHandle (vtMissing, m_Obj, rgMode, (INT_PTR *)&V_I4(&vVal)));
		_ASSERTE(S_OK == hr);		// Handle darf sich nicht ge�ndert haben

	} COM_CATCH;
	return S_OK;
}

HRESULT CTDBPGISCursorProperty::ResetCursor()
{
	if (!m_Obj)
		return S_FALSE;		// nicht das erste mal

	COM_TRY {
	WTRiASObjectHandleMap Map;
	CComVariant vVal;

		THROW_FAILED_HRESULT(GetCursorMap (Map.ppi()));
		THROW_FAILED_HRESULT(vVal.ChangeType (VT_I4, &m_Value));
		THROW_FAILED_HRESULT(Map -> RemoveObject (V_I4(&vVal), OBJECTMAPMODE_RemoveAllReferences));

	} COM_CATCH;
	return S_OK;
}