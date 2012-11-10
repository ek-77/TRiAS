
#pragma warning( disable: 4049 )  /* more than 64k source lines */

/* this ALWAYS GENERATED file contains the definitions for the interfaces */


 /* File created by MIDL compiler version 6.00.0347 */
/* at Tue Jan 04 13:18:17 2005
 */
/* Compiler settings for MMFkSanh.idl:
    Oicf, W1, Zp8, env=Win32 (32b run)
    protocol : dce , ms_ext, c_ext
    error checks: allocation ref bounds_check enum stub_data 
    VC __declspec() decoration level: 
         __declspec(uuid()), __declspec(selectany), __declspec(novtable)
         DECLSPEC_UUID(), MIDL_INTERFACE()
*/
//@@MIDL_FILE_HEADING(  )


/* verify that the <rpcndr.h> version is high enough to compile this file*/
#ifndef __REQUIRED_RPCNDR_H_VERSION__
#define __REQUIRED_RPCNDR_H_VERSION__ 440
#endif

#include "rpc.h"
#include "rpcndr.h"

#ifndef __MMFkSanh_h__
#define __MMFkSanh_h__

#if defined(_MSC_VER) && (_MSC_VER >= 1020)
#pragma once
#endif

/* Forward Declarations */ 

#ifndef __IMapLVermA_FWD_DEFINED__
#define __IMapLVermA_FWD_DEFINED__
typedef interface IMapLVermA IMapLVermA;
#endif 	/* __IMapLVermA_FWD_DEFINED__ */


#ifndef __MapLVermA_FWD_DEFINED__
#define __MapLVermA_FWD_DEFINED__

#ifdef __cplusplus
typedef class MapLVermA MapLVermA;
#else
typedef struct MapLVermA MapLVermA;
#endif /* __cplusplus */

#endif 	/* __MapLVermA_FWD_DEFINED__ */


/* header files for imported files */
#include "oaidl.h"
#include "ocidl.h"

#ifdef __cplusplus
extern "C"{
#endif 

void * __RPC_USER MIDL_user_allocate(size_t);
void __RPC_USER MIDL_user_free( void * ); 


#ifndef __MMFKSANHLib_LIBRARY_DEFINED__
#define __MMFKSANHLib_LIBRARY_DEFINED__

/* library MMFKSANHLib */
/* [helpstring][version][uuid] */ 


EXTERN_C const IID LIBID_MMFKSANHLib;

#ifndef __IMapLVermA_INTERFACE_DEFINED__
#define __IMapLVermA_INTERFACE_DEFINED__

/* interface IMapLVermA */
/* [unique][helpstring][dual][uuid][object] */ 


EXTERN_C const IID IID_IMapLVermA;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("B6AFCF03-1A64-11d2-8F7D-0060085FC1CE")
    IMapLVermA : public IDispatch
    {
    public:
    };
    
#else 	/* C style interface */

    typedef struct IMapLVermAVtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            IMapLVermA * This,
            /* [in] */ REFIID riid,
            /* [iid_is][out] */ void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            IMapLVermA * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            IMapLVermA * This);
        
        HRESULT ( STDMETHODCALLTYPE *GetTypeInfoCount )( 
            IMapLVermA * This,
            /* [out] */ UINT *pctinfo);
        
        HRESULT ( STDMETHODCALLTYPE *GetTypeInfo )( 
            IMapLVermA * This,
            /* [in] */ UINT iTInfo,
            /* [in] */ LCID lcid,
            /* [out] */ ITypeInfo **ppTInfo);
        
        HRESULT ( STDMETHODCALLTYPE *GetIDsOfNames )( 
            IMapLVermA * This,
            /* [in] */ REFIID riid,
            /* [size_is][in] */ LPOLESTR *rgszNames,
            /* [in] */ UINT cNames,
            /* [in] */ LCID lcid,
            /* [size_is][out] */ DISPID *rgDispId);
        
        /* [local] */ HRESULT ( STDMETHODCALLTYPE *Invoke )( 
            IMapLVermA * This,
            /* [in] */ DISPID dispIdMember,
            /* [in] */ REFIID riid,
            /* [in] */ LCID lcid,
            /* [in] */ WORD wFlags,
            /* [out][in] */ DISPPARAMS *pDispParams,
            /* [out] */ VARIANT *pVarResult,
            /* [out] */ EXCEPINFO *pExcepInfo,
            /* [out] */ UINT *puArgErr);
        
        END_INTERFACE
    } IMapLVermAVtbl;

    interface IMapLVermA
    {
        CONST_VTBL struct IMapLVermAVtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define IMapLVermA_QueryInterface(This,riid,ppvObject)	\
    (This)->lpVtbl -> QueryInterface(This,riid,ppvObject)

#define IMapLVermA_AddRef(This)	\
    (This)->lpVtbl -> AddRef(This)

#define IMapLVermA_Release(This)	\
    (This)->lpVtbl -> Release(This)


#define IMapLVermA_GetTypeInfoCount(This,pctinfo)	\
    (This)->lpVtbl -> GetTypeInfoCount(This,pctinfo)

#define IMapLVermA_GetTypeInfo(This,iTInfo,lcid,ppTInfo)	\
    (This)->lpVtbl -> GetTypeInfo(This,iTInfo,lcid,ppTInfo)

#define IMapLVermA_GetIDsOfNames(This,riid,rgszNames,cNames,lcid,rgDispId)	\
    (This)->lpVtbl -> GetIDsOfNames(This,riid,rgszNames,cNames,lcid,rgDispId)

#define IMapLVermA_Invoke(This,dispIdMember,riid,lcid,wFlags,pDispParams,pVarResult,pExcepInfo,puArgErr)	\
    (This)->lpVtbl -> Invoke(This,dispIdMember,riid,lcid,wFlags,pDispParams,pVarResult,pExcepInfo,puArgErr)


#endif /* COBJMACROS */


#endif 	/* C style interface */




#endif 	/* __IMapLVermA_INTERFACE_DEFINED__ */


EXTERN_C const CLSID CLSID_MapLVermA;

#ifdef __cplusplus

class DECLSPEC_UUID("B6AFCF04-1A64-11d2-8F7D-0060085FC1CE")
MapLVermA;
#endif
#endif /* __MMFKSANHLib_LIBRARY_DEFINED__ */

/* Additional Prototypes for ALL interfaces */

/* end of Additional Prototypes */

#ifdef __cplusplus
}
#endif

#endif

