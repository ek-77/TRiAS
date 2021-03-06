
#pragma warning( disable: 4049 )  /* more than 64k source lines */

/* this ALWAYS GENERATED file contains the definitions for the interfaces */


 /* File created by MIDL compiler version 6.00.0347 */
/* at Fri Nov 12 11:44:57 2004
 */
/* Compiler settings for D:\TRiASDEV.MVC\xtension\LoadableCommands\LoadableCommands.idl:
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

#ifndef __LoadableCommands_h__
#define __LoadableCommands_h__

#if defined(_MSC_VER) && (_MSC_VER >= 1020)
#pragma once
#endif

/* Forward Declarations */ 

#ifndef __LoadableCommands_FWD_DEFINED__
#define __LoadableCommands_FWD_DEFINED__

#ifdef __cplusplus
typedef class LoadableCommands LoadableCommands;
#else
typedef struct LoadableCommands LoadableCommands;
#endif /* __cplusplus */

#endif 	/* __LoadableCommands_FWD_DEFINED__ */


/* header files for imported files */
#include "oaidl.h"
#include "ocidl.h"

#ifdef __cplusplus
extern "C"{
#endif 

void * __RPC_USER MIDL_user_allocate(size_t);
void __RPC_USER MIDL_user_free( void * ); 


#ifndef __LoadableCommands_LIBRARY_DEFINED__
#define __LoadableCommands_LIBRARY_DEFINED__

/* library LoadableCommands */
/* [helpstring][version][uuid] */ 


EXTERN_C const IID LIBID_LoadableCommands;

EXTERN_C const CLSID CLSID_LoadableCommands;

#ifdef __cplusplus

class DECLSPEC_UUID("BF1FF55E-FE11-4D24-BCDB-8F607019850A")
LoadableCommands;
#endif
#endif /* __LoadableCommands_LIBRARY_DEFINED__ */

/* Additional Prototypes for ALL interfaces */

/* end of Additional Prototypes */

#ifdef __cplusplus
}
#endif

#endif


