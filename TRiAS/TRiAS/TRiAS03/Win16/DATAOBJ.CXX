/*
 * DATAOBJ.CPP
 * Data Transfer Object Chapter 7
 *
 * Implementation of the CDataObject for the Data Transfer
 * Component Object.
 *
 * Copyright (c)1993 Microsoft Corporation, All Rights Reserved
 *
 * Kraig Brockschmidt, Software Design Engineer
 * Microsoft Systems Developer Relations
 *
 * Internet  :  kraigb@microsoft.com
 * Compuserve:  >INTERNET:kraigb@microsoft.com
 */


#include "trias03p.hxx"

#include <dirisole.h>
#include "dataobj.hxx"

extern "C" HINSTANCE g_hInstance;

/*
 * CDataObject::CDataObject
 * CDataObject::~CDataObject
 *
 * Parameters (Constructor):
 *  pUnkOuter       LPUNKNOWN of a controlling unknown.
 *  pfnDestroy      LPFNDESTROYED to call when object is destroyed.
 */

CDataObject::CDataObject(LPUNKNOWN pUnkOuter
    , LPFNDESTROYED pfnDestroy)
    {
    m_cRef=0;
    m_pUnkOuter=pUnkOuter;
    m_pfnDestroy=pfnDestroy;

    m_hList=NULL;
    m_pIDataObject=NULL;

    return;
    }


CDataObject::~CDataObject(void)
    {
    if (NULL!=m_pIDataObject)
        delete m_pIDataObject;

    Purge();

    if (NULL!=m_hList)
        DestroyWindow(m_hList);

    return;
    }



/*
 * CDataObject::FInit
 *
 * Purpose:
 *  Performs any intiailization of a CDataObject that's prone to
 *  failure that we also use internally before exposing the object
 *  outside.
 *
 * Parameters:
 *  None
 *
 * Return Value:
 *  BOOL            TRUE if the function is successful,
 *                  FALSE otherwise.
 */

BOOL CDataObject::FInit(void)
    {
    LPUNKNOWN       pIUnknown=(LPUNKNOWN)this;

    if (NULL!=m_pUnkOuter)
        pIUnknown=m_pUnkOuter;

    //Allocate contained interfaces.
    m_pIDataObject=new CImpIDataObject(this, pIUnknown);

    if (NULL==m_pIDataObject)
        return FALSE;

    m_hList=CreateWindow("listbox", "renderings"
        , WS_POPUP | LBS_OWNERDRAWFIXED, 0, 0, 100, 100
        , HWND_DESKTOP, NULL, g_hInstance, NULL);

    if (NULL==m_hList)
        return FALSE;

    return TRUE;
    }



/*
 * CDataObject::Purge
 *
 * Purpose:
 *  Cleans out all entries in our listbox.
 *
 * Parameters:
 *  None
 *
 * Return Value:
 *  None
 */

void CDataObject::Purge(void)
    {
    UINT        i, cItems;
    LPRENDERING pRen;
    DWORD       cb;

    if (NULL==m_hList)
        return;

    cItems=(UINT)SendMessage(m_hList, LB_GETCOUNT, 0, 0L);

    for (i=0; i < cItems; i++)
        {
        cb=SendMessage(m_hList, LB_GETTEXT
            , i, (LPARAM)(LPVOID)&pRen);

        if (sizeof(LPRENDERING)==cb)
            {
            /*
             * Release the data completely being sure to reinstate
             * the original pUnkForRelease.
             */
            pRen->stm.pUnkForRelease=pRen->pUnkOrg;
            ReleaseStgMedium(&pRen->stm);
            delete pRen;
            }
        }

    SendMessage(m_hList, LB_RESETCONTENT, 0, 0L);
    return;
    }






/*
 * CDataObject::QueryInterface
 * CDataObject::AddRef
 * CDataObject::Release
 *
 * Purpose:
 *  IUnknown members for CDataObject object.
 */

STDMETHODIMP CDataObject::QueryInterface(REFIID riid
    , LPLPVOID ppv)
    {
    *ppv=NULL;

    if (IsEqualIID(riid, IID_IUnknown))
        *ppv=(LPVOID)this;

    if (IsEqualIID(riid, IID_IDataObject))
        *ppv=(LPVOID)m_pIDataObject;

    if (NULL!=*ppv)
        {
        ((LPUNKNOWN)*ppv)->AddRef();
        return NOERROR;
        }

    return ResultFromScode(E_NOINTERFACE);
    }


STDMETHODIMP_(ULONG) CDataObject::AddRef(void)
    {
    return ++m_cRef;
    }


STDMETHODIMP_(ULONG) CDataObject::Release(void)
    {
    ULONG       cRefT;

    cRefT=--m_cRef;

    if (0L==m_cRef)
        {
        if (NULL!=m_pfnDestroy)
            (*m_pfnDestroy)();

        delete this;
        }

    return cRefT;
    }
