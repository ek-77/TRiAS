// $Header: $
// Copyright� 1999-2002 GEOPunkt GmbH, NL Potsdam, All rights reserved
// Created: 13.03.2002 12:34:19 
//
// @doc
// @module VisInfoObj.h | Declaration of the <c CVisInfoObj> class

// VisInfoObj.h : Declaration of the CVisInfoObject-family

#include <VisInfo.h>

#if !defined(_VISINFOOBJ_H)
#define _VISINFOOBJ_H

DefineSmartInterface2(DVisInfo, IID_DVisInfo);		// WDVisInfo

/////////////////////////////////////////////////////////////////////////////
// CVisInfoBase

class CVisInfoInterfaceBase 
{
public:
	virtual VisInfo *GetVisInfo (void) = 0;
	virtual void SetVisInfo (VisInfo *pVI) = 0;
	virtual VISINFOTYPE GetVisType (void) = 0;
	virtual RTTI GetVisTypeRTTI (void) = 0;
	virtual HRESULT GetDVisInfo (DVisInfo **ppIVisInfo) = 0;

	HRESULT RetrieveRawData (BSTR *pData);
	HRESULT SetRawData (BSTR bstrData);
};

/////////////////////////////////////////////////////////////////////////////
// CVisInfo: Implementation der BasisInterfaceFunktionen

template<class T, class D, const GUID *piid>
class CVisInfo : 
	public T, 
	public CComDualImpl<D, piid, &LIBID_VisInfoLib,
			VISINFO_TYPELIB_VERSION_MAJOR, VISINFO_TYPELIB_VERSION_MINOR>, 
	public IPersistStreamInit,
	public IMergeVisInfo,
	public IExtendedObjectVisInfo,
#if defined(__IRawVisInfo_INTERFACE_DEFINED__)
	public IRawVisInfo,
#endif // __IRawVisInfo_INTERFACE_DEFINED__
	public CVisInfoInterfaceBase
{
public:
		CVisInfo (void) { m_fChanged = 0; m_fInitialized = false; }

// _ITRiASBaseClass
	STDMETHOD(get_isA)(THIS_ long *plRTTI);
	STDMETHOD(get_Parent)(THIS_ IDispatch **ppIDisp)
		{ return (NULL != (IUnknown *)m_Parent) ? m_Parent -> QueryInterface (IID_IDispatch, (LPVOID *)ppIDisp) : E_UNEXPECTED; }
	STDMETHOD(put_Parent)(THIS_ IDispatch *pIDisp)
		{ m_Parent = pIDisp; return NOERROR; }
	STDMETHOD(get_Application)(THIS_ IDispatch **ppIDisp)
		{ return (NULL != (IUnknown *)m_App) ? m_App -> QueryInterface (IID_IDispatch, (LPVOID *)ppIDisp) : E_UNEXPECTED; }
	STDMETHOD(put_Application)(THIS_ IDispatch *pIDisp)
		{ m_App = pIDisp; return NOERROR; }

// IVisInfo
    STDMETHOD(get_Priority)(THIS_ int *piPrio);
    STDMETHOD(put_Priority)(THIS_ int iPrio);
    STDMETHOD(get_Style)(THIS_ int *piStyle);
    STDMETHOD(put_Style)(THIS_ int iStyle);
    STDMETHOD(get_Name)(THIS_ BSTR *pbstrDesc);
    STDMETHOD(put_Name)(THIS_ BSTR bstrDesc);
    STDMETHOD(get_MainColor)(THIS_ TRIASCOLOR *pocMain);
    STDMETHOD(put_MainColor)(THIS_ TRIASCOLOR ocMain);
    STDMETHOD(get_Changed)(THIS_ int *piStyle);
    STDMETHOD(put_Changed)(THIS_ int iStyle);
    STDMETHOD(get_VisString)(THIS_ BSTR *pbstrDesc);
    STDMETHOD(get_Visible)(THIS_ int *piStyle);
    STDMETHOD(put_Visible)(THIS_ int iStyle);
    STDMETHOD(get_Locatable)(THIS_ int *piStyle);
    STDMETHOD(put_Locatable)(THIS_ int iStyle);
    STDMETHOD(get_GeometryName)(THIS_ BSTR *pbstrDesc);
    STDMETHOD(put_GeometryName)(THIS_ BSTR bstrDesc);

// IPersistStreamInit
	STDMETHOD(IsDirty)(THIS);
	STDMETHOD(InitNew)(THIS);
	STDMETHOD(GetSizeMax)(THIS_ ULARGE_INTEGER *pCbSize);

// IMergeVisInfo 
	STDMETHOD(MergeVisInfo)(VARIANT_BOOL fOnlyChanged, DVisInfo **ppIVisInfo);

	HRESULT RetrieveRawData (VisInfo *pVis, BSTR *pData);

// IExtendedObjectVisInfo
	STDMETHOD(get_HasInfos)(VARIANT_BOOL *pHasInfos);
	STDMETHOD(get_ModuleInfo)(BSTR *pbstrName);
	STDMETHOD(put_ModuleInfo)(BSTR bstrName);
	STDMETHOD(get_ExtendedInfo)(BSTR *pbstrName);
	STDMETHOD(put_ExtendedInfo)(BSTR bstrName);

// what ever else
	int &Changed (void) { return m_fChanged; }

	STDMETHOD(Load)(THIS_ LPSTREAM pStm, VisInfo *pVI);
	STDMETHOD(Save)(THIS_ LPSTREAM pStm, BOOL fClearDirty, VisInfo *pVI);

protected:
	CComPtr<IDispatch> m_Parent;
	CComPtr<IDispatch> m_App;
	int m_fChanged;
	bool m_fInitialized;
	CComBSTR m_bstrName;	// f�r VSC's: Modulname
	CComBSTR m_bstrInfo;	// f�r VSC's: zus�tzliche Info
};

#pragma warning (disable: 4355)		// this used in base member initializer list

#if defined(__DefaultVisInfo_DEFINED__)
/////////////////////////////////////////////////////////////////////////////
// CVisInfoObject: PunktVisualisierungsInfo
class CVisInfoObject : 
	public CVisInfo<IVisInfo, DVisInfo, &IID_DVisInfo>, 
	public ISupportErrorInfo,
	public CComObjectRoot,
	public CComCoClass<CVisInfoObject, &CLSID_DefaultVisInfo>
{
public:
	CVisInfoObject()
		: m_VI (DEF_STYLE, DEF_PRIORITY, DEF_COLOR) 
		{}

	BEGIN_COM_MAP(CVisInfoObject)
		COM_INTERFACE_ENTRY(IVisInfo)

		COM_INTERFACE_ENTRY2(IDispatch, DVisInfo)
		COM_INTERFACE_ENTRY(DTRiASBaseClass)
		COM_INTERFACE_ENTRY(DVisInfo)

		COM_INTERFACE_ENTRY(IMergeVisInfo)
#if defined(__IRawVisInfo_INTERFACE_DEFINED__)
		COM_INTERFACE_ENTRY(IRawVisInfo)
#endif // __IRawVisInfo_INTERFACE_DEFINED__
		COM_INTERFACE_ENTRY(IExtendedObjectVisInfo)

		COM_INTERFACE_ENTRY(ISupportErrorInfo)
		COM_INTERFACE_ENTRY(IPersistStreamInit)
		COM_INTERFACE_ENTRY2(IPersistStream, IPersistStreamInit)
		COM_INTERFACE_ENTRY2(IPersist, IPersistStreamInit)
	END_COM_MAP()

	DECLARE_AGGREGATABLE(CVisInfoObject)
	DECLARE_REGISTRY_RESOURCEID(IDR_VISINFO_RGS);

	typedef CVisInfo<IVisInfo, DVisInfo, &IID_DVisInfo> visinfo_t; 

// ISupportsErrorInfo
	STDMETHOD(InterfaceSupportsErrorInfo)(REFIID riid);

// IPersistStreamInit
	STDMETHOD(GetClassID)(THIS_ GUID *pClsId);
	STDMETHOD(Load)(THIS_ LPSTREAM pStm);
	STDMETHOD(Save)(THIS_ LPSTREAM pStm, BOOL fClearDirty);
	STDMETHOD(GetSizeMax)(THIS_ ULARGE_INTEGER *pCbSize);

// IMergeVisInfo 
	STDMETHOD(MergeVisInfo)(VARIANT_BOOL fOnlyChanged, DVisInfo **ppIVisInfo);

#if defined(__IRawVisInfo_INTERFACE_DEFINED__)
// IRawVisInfo
	STDMETHOD(SetRawData)(VISINFOTYPE rgType, BSTR Data);
	STDMETHOD(RetrieveRawData)(VISINFOTYPE rgType, BSTR *pData);
#endif // __IRawVisInfo_INTERFACE_DEFINED__

public:
	VisInfo *GetVisInfo (void) { return &m_VI; }
	void SetVisInfo (VisInfo *pVI) { m_VI = *pVI; Changed() = 0; }
	VISINFOTYPE GetVisType (void) { return VISINFOTYPE_Default; }
	RTTI GetVisTypeRTTI (void) { return RTTI_VisInfo; }
	HRESULT GetDVisInfo (DVisInfo **ppIVisInfo) 
	{
	WDVisInfo Vis ((DVisInfo *)this);

		*ppIVisInfo = Vis.detach();
		return S_OK;
	}

private:
	VisInfo m_VI;		// eigentliche VisInfo
};

///////////////////////////////////////////////////////////////////////////////
// Version des PersistStream-Formates
const long VISINFO_SIGNATURE = 0x53495620L;			// " VIS"
const long VISINFO_VERSION_MINOR_MASK = 0xff;
const long VISINFO_VERSION_100 = 0x0100L;
const long LASTKNOWN_VISINFO_VERSION = VISINFO_VERSION_100;

#endif // __DefaultVisInfo_DEFINED__

/////////////////////////////////////////////////////////////////////////////
// CPVisInfoObject: PunktVisualisierungsInfo

class CPVisInfoObject : 
	public CVisInfo<IPointVisInfo, DPointVisInfo, &IID_DPointVisInfo>, 
	public ISupportErrorInfo,
	public CComObjectRoot,
	public CComCoClass<CPVisInfoObject, &CLSID_PointVisInfo>
{
public:
	CPVisInfoObject()
		: m_PVI (DEF_STYLE_PUNKT, DEF_PRIORITY_PUNKT, DEF_COLOR, DEF_SIZE_PUNKT) 
		{}

	BEGIN_COM_MAP(CPVisInfoObject)
		COM_INTERFACE_ENTRY(IVisInfo)
		COM_INTERFACE_ENTRY(IPointVisInfo)

		COM_INTERFACE_ENTRY2(IDispatch, DPointVisInfo)
		COM_INTERFACE_ENTRY(DTRiASBaseClass)
		COM_INTERFACE_ENTRY(DVisInfo)
		COM_INTERFACE_ENTRY(DPointVisInfo)

		COM_INTERFACE_ENTRY(IMergeVisInfo)
#if defined(__IRawVisInfo_INTERFACE_DEFINED__)
		COM_INTERFACE_ENTRY(IRawVisInfo)
#endif // __IRawVisInfo_INTERFACE_DEFINED__
		COM_INTERFACE_ENTRY(IExtendedObjectVisInfo)

		COM_INTERFACE_ENTRY(ISupportErrorInfo)
		COM_INTERFACE_ENTRY(IPersistStreamInit)
		COM_INTERFACE_ENTRY2(IPersistStream, IPersistStreamInit)
		COM_INTERFACE_ENTRY2(IPersist, IPersistStreamInit)
	END_COM_MAP()

	DECLARE_AGGREGATABLE(CPVisInfoObject)
	DECLARE_REGISTRY_RESOURCEID(IDR_POINTVISINFO_RGS);

	typedef CVisInfo<IPointVisInfo, DPointVisInfo, &IID_DPointVisInfo> visinfo_t; 

// ISupportsErrorInfo
	STDMETHOD(InterfaceSupportsErrorInfo)(REFIID riid);

// IPointVisInfo
    STDMETHOD(get_SizeX)(THIS_ int *piX);
    STDMETHOD(put_SizeX)(THIS_ int iX);
    STDMETHOD(get_SizeY)(THIS_ int *piY);
    STDMETHOD(put_SizeY)(THIS_ int iY);
    STDMETHOD(get_Rotate)(THIS_ int *piRot);
    STDMETHOD(put_Rotate)(THIS_ int iRot);
    STDMETHOD(get_BkColor)(THIS_ TRIASCOLOR *pocBack);
    STDMETHOD(put_BkColor)(THIS_ TRIASCOLOR ocBack);

// IPersistStreamInit
	STDMETHOD(GetClassID)(THIS_ GUID *pClsId);
	STDMETHOD(Load)(THIS_ LPSTREAM pStm);
	STDMETHOD(Save)(THIS_ LPSTREAM pStm, BOOL fClearDirty);
	STDMETHOD(GetSizeMax)(THIS_ ULARGE_INTEGER *pCbSize);

// IMergeVisInfo 
	STDMETHOD(MergeVisInfo)(VARIANT_BOOL fOnlyChanged, DVisInfo **ppIVisInfo);

#if defined(__IRawVisInfo_INTERFACE_DEFINED__)
// IRawVisInfo
	STDMETHOD(SetRawData)(VISINFOTYPE rgType, BSTR Data);
	STDMETHOD(RetrieveRawData)(VISINFOTYPE rgType, BSTR *pData);
#endif // __IRawVisInfo_INTERFACE_DEFINED__

public:
	VisInfo *GetVisInfo (void) { return &m_PVI; }
	void SetVisInfo (VisInfo *pVI) { m_PVI = *(PVisInfo *)pVI; Changed() = 0; }
	VISINFOTYPE GetVisType (void) { return VISINFOTYPE_Point; }
	RTTI GetVisTypeRTTI (void) { return RTTI_PointVisInfo; }
	HRESULT GetDVisInfo (DVisInfo **ppIVisInfo) 
	{
	WDVisInfo Vis ((DVisInfo *)this);

		*ppIVisInfo = Vis.detach();
		return S_OK;
	}

private:
	PVisInfo m_PVI;		// eigentliche VisInfo
};

///////////////////////////////////////////////////////////////////////////////
// Version des PersistStream-Formates
const long PVISINFO_SIGNATURE = 0x53495650L;			// "PVIS"
const long PVISINFO_VERSION_MINOR_MASK = 0xff;
const long PVISINFO_VERSION_100 = 0x0100L;
const long PVISINFO_VERSION_101 = 0x0101L;		// Korrektur der PunktSymbolID's
const long LASTKNOWN_PVISINFO_VERSION = PVISINFO_VERSION_101;

/////////////////////////////////////////////////////////////////////////////
// CLVisInfoObject: LinienVisualisierungsInfo

class CLVisInfoObject : 
	public CVisInfo<ILineVisInfo, DLineVisInfo, &IID_DLineVisInfo>, 
	public ISupportErrorInfo,
	public CComObjectRoot,
	public CComCoClass<CLVisInfoObject, &CLSID_LineVisInfo>
{
public:
	CLVisInfoObject()
		: m_LVI (DEF_STYLE, DEF_PRIORITY_LINIE, DEF_COLOR, DEF_WIDTH_LINIE) 
		{}

	BEGIN_COM_MAP(CLVisInfoObject)
		COM_INTERFACE_ENTRY(IVisInfo)
		COM_INTERFACE_ENTRY(ILineVisInfo)

		COM_INTERFACE_ENTRY2(IDispatch, DLineVisInfo)
		COM_INTERFACE_ENTRY(DTRiASBaseClass)
		COM_INTERFACE_ENTRY(DVisInfo)
		COM_INTERFACE_ENTRY(DLineVisInfo)

		COM_INTERFACE_ENTRY(IMergeVisInfo)
#if defined(__IRawVisInfo_INTERFACE_DEFINED__)
		COM_INTERFACE_ENTRY(IRawVisInfo)
#endif // __IRawVisInfo_INTERFACE_DEFINED__
		COM_INTERFACE_ENTRY(IExtendedObjectVisInfo)

		COM_INTERFACE_ENTRY(ISupportErrorInfo)
		COM_INTERFACE_ENTRY(IPersistStreamInit)
		COM_INTERFACE_ENTRY2(IPersistStream, IPersistStreamInit)
		COM_INTERFACE_ENTRY2(IPersist, IPersistStreamInit)
	END_COM_MAP()

	DECLARE_AGGREGATABLE(CLVisInfoObject)
	DECLARE_REGISTRY_RESOURCEID(IDR_LINEVISINFO_RGS);

	typedef CVisInfo<ILineVisInfo, DLineVisInfo, &IID_DLineVisInfo> visinfo_t; 

// ISupportsErrorInfo
	STDMETHOD(InterfaceSupportsErrorInfo)(REFIID riid);

// ILineVisInfo
    STDMETHOD(get_Width)(THIS_ int *piWidth);
    STDMETHOD(put_Width)(THIS_ int iWidth);

// IPersistStreamInit
	STDMETHOD(GetClassID)(THIS_ GUID *pClsId);
	STDMETHOD(Load)(THIS_ LPSTREAM pStm);
	STDMETHOD(Save)(THIS_ LPSTREAM pStm, BOOL fClearDirty);
	STDMETHOD(GetSizeMax)(THIS_ ULARGE_INTEGER *pCbSize);

// IMergeVisInfo 
	STDMETHOD(MergeVisInfo)(VARIANT_BOOL fOnlyChanged, DVisInfo **ppIVisInfo);

#if defined(__IRawVisInfo_INTERFACE_DEFINED__)
// IRawVisInfo
	STDMETHOD(SetRawData)(VISINFOTYPE rgType, BSTR Data);
	STDMETHOD(RetrieveRawData)(VISINFOTYPE rgType, BSTR *pData);
#endif // __IRawVisInfo_INTERFACE_DEFINED__

public:
	VisInfo *GetVisInfo (void) { return &m_LVI; }
	void SetVisInfo (VisInfo *pVI) { m_LVI = *(LVisInfo *)pVI; Changed() = 0; }
	VISINFOTYPE GetVisType (void) { return VISINFOTYPE_Line; }
	RTTI GetVisTypeRTTI (void) { return RTTI_LineVisInfo; }
	HRESULT GetDVisInfo (DVisInfo **ppIVisInfo) 
	{
	WDVisInfo Vis ((DVisInfo *)this);

		*ppIVisInfo = Vis.detach();
		return S_OK;
	}

private:
	LVisInfo m_LVI;		// eigentliche VisInfo
};

///////////////////////////////////////////////////////////////////////////////
// Version des PersistStream-Formates
const long LVISINFO_SIGNATURE = 0x5349564CL;			// "LVIS"
const long LVISINFO_VERSION_MINOR_MASK = 0xff;
const long LVISINFO_VERSION_100 = 0x0100L;
const long LASTKNOWN_LVISINFO_VERSION = LVISINFO_VERSION_100;

/////////////////////////////////////////////////////////////////////////////
// CFVisInfoObject: Fl�chenVisualisierungsInfo

class CFVisInfoObject : 
	public CVisInfo<IAreaVisInfo, DAreaVisInfo, &IID_DAreaVisInfo>, 
	public ISupportErrorInfo,
	public CComObjectRoot,
	public CComCoClass<CFVisInfoObject, &CLSID_AreaVisInfo>
{
public:
	CFVisInfoObject()
		: m_FVI (DEF_STYLE, DEF_PRIORITY_FLAECHE, DEF_COLOR, DEF_COLOR, 0) 
		{}

	BEGIN_COM_MAP(CFVisInfoObject)
		COM_INTERFACE_ENTRY(IVisInfo)
		COM_INTERFACE_ENTRY(IAreaVisInfo)

		COM_INTERFACE_ENTRY2(IDispatch, DAreaVisInfo)
		COM_INTERFACE_ENTRY(DTRiASBaseClass)
		COM_INTERFACE_ENTRY(DVisInfo)
		COM_INTERFACE_ENTRY(DAreaVisInfo)

		COM_INTERFACE_ENTRY(IMergeVisInfo)
#if defined(__IRawVisInfo_INTERFACE_DEFINED__)
		COM_INTERFACE_ENTRY(IRawVisInfo)
#endif // __IRawVisInfo_INTERFACE_DEFINED__
		COM_INTERFACE_ENTRY(IExtendedObjectVisInfo)

		COM_INTERFACE_ENTRY(ISupportErrorInfo)
		COM_INTERFACE_ENTRY(IPersistStreamInit)
		COM_INTERFACE_ENTRY2(IPersistStream, IPersistStreamInit)
		COM_INTERFACE_ENTRY2(IPersist, IPersistStreamInit)
	END_COM_MAP()

	DECLARE_AGGREGATABLE(CFVisInfoObject)
	DECLARE_REGISTRY_RESOURCEID(IDR_AREAVISINFO_RGS);

	typedef CVisInfo<IAreaVisInfo, DAreaVisInfo, &IID_DAreaVisInfo> visinfo_t; 

// ISupportsErrorInfo
	STDMETHOD(InterfaceSupportsErrorInfo)(REFIID riid);

// IAreaVisInfo
    STDMETHOD(get_Width)(THIS_ int *piWidth);
    STDMETHOD(put_Width)(THIS_ int iWidth);
    STDMETHOD(get_Opaque)(THIS_ int *pfOpaque);
    STDMETHOD(put_Opaque)(THIS_ int fOpaque);
    STDMETHOD(get_BkContour)(THIS_ int *pfBkContour);
    STDMETHOD(put_BkContour)(THIS_ int fBkContour);
    STDMETHOD(get_BkColor)(THIS_ TRIASCOLOR *pocBack);
    STDMETHOD(put_BkColor)(THIS_ TRIASCOLOR ocBack);

// IPersistStreamInit
	STDMETHOD(GetClassID)(THIS_ GUID *pClsId);
	STDMETHOD(Load)(THIS_ LPSTREAM pStm);
	STDMETHOD(Save)(THIS_ LPSTREAM pStm, BOOL fClearDirty);
	STDMETHOD(GetSizeMax)(THIS_ ULARGE_INTEGER *pCbSize);

// IMergeVisInfo 
	STDMETHOD(MergeVisInfo)(VARIANT_BOOL fOnlyChanged, DVisInfo **ppIVisInfo);

#if defined(__IRawVisInfo_INTERFACE_DEFINED__)
// IRawVisInfo
	STDMETHOD(SetRawData)(VISINFOTYPE rgType, BSTR Data);
	STDMETHOD(RetrieveRawData)(VISINFOTYPE rgType, BSTR *pData);
#endif // __IRawVisInfo_INTERFACE_DEFINED__

public:
	VisInfo *GetVisInfo (void) { return &m_FVI; }
	void SetVisInfo (VisInfo *pVI) { m_FVI = *(FVisInfo *)pVI; Changed() = 0; }
	VISINFOTYPE GetVisType (void) { return VISINFOTYPE_Area; }
	RTTI GetVisTypeRTTI (void) { return RTTI_AreaVisInfo; }
	HRESULT GetDVisInfo (DVisInfo **ppIVisInfo) 
	{
	WDVisInfo Vis ((DVisInfo *)this);

		*ppIVisInfo = Vis.detach();
		return S_OK;
	}

private:
	FVisInfo m_FVI;		// eigentliche VisInfo
};

///////////////////////////////////////////////////////////////////////////////
// Version des PersistStream-Formates
const long FVISINFO_SIGNATURE = 0x53495646L;			// "FVIS"
const long FVISINFO_VERSION_MINOR_MASK = 0xff;
const long FVISINFO_VERSION_100 = 0x0100L;
const long FVISINFO_VERSION_101 = 0x0101L;
const long LASTKNOWN_FVISINFO_VERSION = FVISINFO_VERSION_101;

/////////////////////////////////////////////////////////////////////////////
// CTVisInfoObject: TextVisualisierungsInfo

class CTVisInfoObject : 
	public CVisInfo<ITextVisInfo, DTextVisInfo, &IID_DTextVisInfo>, 
	public ISupportErrorInfo,
	public CComObjectRoot,
	public CComCoClass<CTVisInfoObject, &CLSID_TextVisInfo>
{
public:
	CTVisInfoObject()
		: m_TVI (DEF_STYLE, DEF_PRIORITY_TEXT, DEF_COLOR, DEF_SIZE_TEXT, DEF_TYP_TEXT) 
		{}

	BEGIN_COM_MAP(CTVisInfoObject)
		COM_INTERFACE_ENTRY(IVisInfo)
		COM_INTERFACE_ENTRY(ITextVisInfo)

		COM_INTERFACE_ENTRY2(IDispatch, DTextVisInfo)
		COM_INTERFACE_ENTRY(DTRiASBaseClass)
		COM_INTERFACE_ENTRY(DVisInfo)
		COM_INTERFACE_ENTRY(DTextVisInfo)

		COM_INTERFACE_ENTRY(IMergeVisInfo)
#if defined(__IRawVisInfo_INTERFACE_DEFINED__)
		COM_INTERFACE_ENTRY(IRawVisInfo)
#endif // __IRawVisInfo_INTERFACE_DEFINED__
		COM_INTERFACE_ENTRY(IExtendedObjectVisInfo)

		COM_INTERFACE_ENTRY(ISupportErrorInfo)
		COM_INTERFACE_ENTRY(IPersistStreamInit)
		COM_INTERFACE_ENTRY2(IPersistStream, IPersistStreamInit)
		COM_INTERFACE_ENTRY2(IPersist, IPersistStreamInit)
	END_COM_MAP()

	DECLARE_AGGREGATABLE(CTVisInfoObject)
	DECLARE_REGISTRY_RESOURCEID(IDR_TEXTVISINFO_RGS);

	typedef CVisInfo<ITextVisInfo, DTextVisInfo, &IID_DTextVisInfo> visinfo_t; 

// _ITRiASBaseClass
//	typedef CVisInfo<ITextVisInfo> visinfo_t;

// ISupportsErrorInfo
	STDMETHOD(InterfaceSupportsErrorInfo)(REFIID riid);

// ITextVisInfo
    STDMETHOD(get_SizeX)(THIS_ int *piX);
    STDMETHOD(put_SizeX)(THIS_ int iX);
    STDMETHOD(get_SizeY)(THIS_ int *piY);
    STDMETHOD(put_SizeY)(THIS_ int iY);
    STDMETHOD(get_Bold)(THIS_ int *pfBold);
    STDMETHOD(put_Bold)(THIS_ int fBold);
    STDMETHOD(get_Italic)(THIS_ int *pfItalic);
    STDMETHOD(put_Italic)(THIS_ int fItalic);
    STDMETHOD(get_Underline)(THIS_ int *pfUnderline);
    STDMETHOD(put_Underline)(THIS_ int fUnderline);
    STDMETHOD(get_StrikeThrough)(THIS_ int *pfStrikeThrough);
    STDMETHOD(put_StrikeThrough)(THIS_ int fStrikeThrough);
    STDMETHOD(get_FrameStyle)(THIS_ FRAMESTYLE *prgFrameStyle);
    STDMETHOD(put_FrameStyle)(THIS_ FRAMESTYLE rgFrameStyle);
    STDMETHOD(get_AlignStyle)(THIS_ ALIGNSTYLE *prgAlign);
    STDMETHOD(put_AlignStyle)(THIS_ ALIGNSTYLE rgAlign);
    STDMETHOD(get_Rotate)(THIS_ int *piRot);
    STDMETHOD(put_Rotate)(THIS_ int iRot);
    STDMETHOD(get_Slant)(THIS_ int *piSlant);
    STDMETHOD(put_Slant)(THIS_ int iSlant);

// IPersistStreamInit
	STDMETHOD(GetClassID)(THIS_ GUID *pClsId);
	STDMETHOD(Load)(THIS_ LPSTREAM pStm);
	STDMETHOD(Save)(THIS_ LPSTREAM pStm, BOOL fClearDirty);
	STDMETHOD(GetSizeMax)(THIS_ ULARGE_INTEGER *pCbSize);

// IMergeVisInfo 
	STDMETHOD(MergeVisInfo)(VARIANT_BOOL fOnlyChanged, DVisInfo **ppIVisInfo);

#if defined(__IRawVisInfo_INTERFACE_DEFINED__)
// IRawVisInfo
	STDMETHOD(SetRawData)(VISINFOTYPE rgType, BSTR Data);
	STDMETHOD(RetrieveRawData)(VISINFOTYPE rgType, BSTR *pData);
#endif // __IRawVisInfo_INTERFACE_DEFINED__

public:
	VisInfo *GetVisInfo (void) { return &m_TVI; }
	void SetVisInfo (VisInfo *pVI) { m_TVI = *(TVisInfo *)pVI; Changed() = 0; }
	VISINFOTYPE GetVisType (void) { return VISINFOTYPE_Text; }
	RTTI GetVisTypeRTTI (void) { return RTTI_TextVisInfo; }
	HRESULT GetDVisInfo (DVisInfo **ppIVisInfo) 
	{
	WDVisInfo Vis ((DVisInfo *)this);

		*ppIVisInfo = Vis.detach();
		return S_OK;
	}

private:
	TVisInfo m_TVI;		// eigentliche VisInfo
};

///////////////////////////////////////////////////////////////////////////////
// Version des PersistStream-Formates
const long TVISINFO_SIGNATURE = 0x53495650L;			// "TVIS"
const long TVISINFO_VERSION_MINOR_MASK = 0xff;
const long TVISINFO_VERSION_100 = 0x0100L;
const long LASTKNOWN_TVISINFO_VERSION = TVISINFO_VERSION_100;

///////////////////////////////////////////////////////////////////////////////
// sonstige Funktionen
HRESULT CreateHANDLEVISINFO (
	DVisInfo *pIVisInfo, VISINFOTYPE rgType, bool fFullSave, 
	HANDLEVISINFO **ppHVI);
HRESULT CreateVisInfo (HANDLEVISINFO *pHVI, DVisInfo **ppIVis);

#pragma warning (default: 4355)		// this used in base member initializer list

#endif // _VISINFOOBJ_H
