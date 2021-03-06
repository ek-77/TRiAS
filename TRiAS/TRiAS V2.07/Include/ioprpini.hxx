// InitialisierungsInterfaces f�r Objekteigenschaften -------------------------
// File: IOPRPINI.HXX


#if !defined(_IOPRPINI_HXX)
#define _IOPRPINI_HXX

// IInitObjPropQueryField: Initialisierng eines ObjPropQueryField-Objektes ----
#undef INTERFACE
#define INTERFACE IInitObjPropQueryField

// 07963820-3123-101C-BB62-00AA0018497C	
// DEFINE_GUID(IID_IInitObjPropQueryField, 0x07963820L, 0x3123, 0x101C, 0xBB, 0x62, 0x00, 0xAA, 0x00, 0x18, 0x49, 0x7C);
DECLARE_INTERFACE_(IInitObjPropQueryField, IUnknown)
{
// *** IUnknown methods ***
	STDMETHOD(QueryInterface) (THIS_ REFIID riid, LPVOID FAR* ppvObj) PURE;
	STDMETHOD_(ULONG, AddRef) (THIS) PURE;
	STDMETHOD_(ULONG, Release) (THIS) PURE;

// *** IInitObjPropQueryField specific functions ***
	STDMETHOD(Init)(THIS_ HWND hParent, int iNumber) PURE;
};
typedef IInitObjPropQueryField *LPINITOBJPROPQUERYFIELD;


// IInitObjPropMerkmal: Initialisierung eines ObjPropMerkmal-Objektes ---------
#undef INTERFACE
#define INTERFACE IInitObjPropMerkmal

// 0796381F-3123-101C-BB62-00AA0018497C	
// DEFINE_GUID(IID_IInitObjPropMerkmal, 0x0796381FL, 0x3123, 0x101C, 0xBB, 0x62, 0x00, 0xAA, 0x00, 0x18, 0x49, 0x7C);
DECLARE_INTERFACE_(IInitObjPropMerkmal, IUnknown)
{
// *** IUnknown methods ***
	STDMETHOD(QueryInterface) (THIS_ REFIID riid, LPVOID FAR* ppvObj) PURE;
	STDMETHOD_(ULONG, AddRef) (THIS) PURE;
	STDMETHOD_(ULONG, Release) (THIS) PURE;

// *** IInitObjPropMerkmal specific functions ***
	STDMETHOD(Init)(THIS_ LONG lMCode, BOOL fReadOnly) PURE;
};
typedef IInitObjPropMerkmal *LPINITOBJPROPMERKMAL;

#endif // _IOPRPINI_HXX
