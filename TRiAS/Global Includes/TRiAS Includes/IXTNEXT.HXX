// Interfaces, die zur Erweiterung von Dialogen verwendet werden --------------
// File: IXTNEXT.H

#if !defined(_IXTNEXT_H)
#define _IXTNEXT_H

#if _MSC_VER < 1100 && !defined(DECLSPEC_UUID)
#define DECLSPEC_UUID(x)
#endif // _MSC_VER < 1100 && !defined(DECLSPEC_UUID)

///////////////////////////////////////////////////////////////////////////////
// Initialisierungs-Interface f�r ITriasPropSheetExt etc.
#undef INTERFACE
#define INTERFACE ITriasExtInit

// 07963825-3123-101C-BB62-00AA0018497C	
// DEFINE_GUID(IID_ITriasExtInit, 0x07963825L, 0x3123, 0x101C, 0xBB, 0x62, 0x00, 0xAA, 0x00, 0x18, 0x49, 0x7C);
interface DECLSPEC_UUID("07963825-3123-101C-BB62-00AA0018497C")
ITriasExtInit : public IUnknown
{
// *** IUnknown methods ***
	STDMETHOD(QueryInterface) (THIS_ REFIID riid, LPVOID FAR* ppvObj) PURE;
	STDMETHOD_(ULONG, AddRef) (THIS)  PURE;
	STDMETHOD_(ULONG, Release) (THIS) PURE;

// *** ITriasExtInit methods ***
	STDMETHOD(Initialize) (THIS_ LPCITEMIDLIST pidl, LPDATAOBJECT lpdobj, HKEY hkeyProgID) PURE;
};
typedef ITriasExtInit *LPTRIASEXTINIT;

///////////////////////////////////////////////////////////////////////////////
// Initialisierungs-Interface f�r ITriasPropSheetExt etc.
#undef INTERFACE
#define INTERFACE ITriasExtInit2

// 079638E1-3123-101C-BB62-00AA0018497C	
// DEFINE_GUID(IID_ITriasExtInit2, 0x079638E1L, 0x3123, 0x101C, 0xBB, 0x62, 0x00, 0xAA, 0x00, 0x18, 0x49, 0x7C);
interface DECLSPEC_UUID("079638E1-3123-101C-BB62-00AA0018497C")
ITriasExtInit2 : public IUnknown
{
// *** IUnknown methods ***
	STDMETHOD(QueryInterface) (THIS_ REFIID riid, LPVOID FAR* ppvObj) PURE;
	STDMETHOD_(ULONG, AddRef) (THIS)  PURE;
	STDMETHOD_(ULONG, Release) (THIS) PURE;

// *** ITriasExtInit methods ***
	STDMETHOD(Initialize) (THIS_ LPCITEMIDLIST pidl, LPDATAOBJECT lpdobj, HKEY hkeyProgID) PURE;

// *** ITriasExtInit2 methods ***
	STDMETHOD(SetObjects) (THIS_ ULONG ulCount, IUnknown **ppIUnk) PURE;
};
typedef ITriasExtInit *LPTRIASEXTINIT;

///////////////////////////////////////////////////////////////////////////////
// Interface f�r die Erweiterung eines Property-Dialoges
#undef INTERFACE
#define INTERFACE ITriasPropSheetExt
	
// 07963824-3123-101C-BB62-00AA0018497C	
// DEFINE_GUID(IID_ITriasPropSheetExt, 0x07963824L, 0x3123, 0x101C, 0xBB, 0x62, 0x00, 0xAA, 0x00, 0x18, 0x49, 0x7C);
interface DECLSPEC_UUID("07963824-3123-101C-BB62-00AA0018497C")
ITriasPropSheetExt : public IUnknown
{
// *** IUnknown methods ***
	STDMETHOD(QueryInterface) (THIS_ REFIID riid, LPVOID FAR* ppvObj) PURE;
	STDMETHOD_(ULONG, AddRef) (THIS)  PURE;
	STDMETHOD_(ULONG, Release) (THIS) PURE;

// *** ITriasPropSheetExt ***
	STDMETHOD(AddPages) (THIS_ LPFNADDPROPSHEETPAGE lpfnAddPage, LPARAM lParam) PURE;
	STDMETHOD(ReplacePage) (THIS_ UINT uPageID, LPFNADDPROPSHEETPAGE lpfnReplacePage, LPARAM lParam) PURE;
};
typedef ITriasPropSheetExt *LPTRIASPROPSHEETEXT;

#endif // _IXTNEXT_H

