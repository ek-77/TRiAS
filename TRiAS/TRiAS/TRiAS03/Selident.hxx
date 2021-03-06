// Auswahl aller Objekte verschiedener Objektklassen --------------------------
// File: SELIDENT.HXX

#if !defined(_SELIDENT_HXX)
#define _SELIDENT_HXX

#include <selidlvc.hxx>
#include "propactb.hxx"	// JG 980915

typedef struct tagSELIDRESULT {
	LONG m_lIdent;
	short m_iOTyp;
} SELIDRESULT;

// Wrapper f�rs automatische freigeben
class CCaSelIdResult 
{
public:
	void Tidy () 
	{ if (NULL != pElems) { CoTaskMemFree (pElems); pElems = NULL; } cElems = 0; }

// Datenmember
	ULONG cElems;
	SELIDRESULT *pElems;
	ULONG ulSelectFrom;
	DWORD dwHideTypes;
	BOOL fFailIfEmpty;

// notwendige Memberfunktionen
		CCaSelIdResult () 
		{ 
			ulSelectFrom = SELIDMODE_SINGLETYPE;
			dwHideTypes = 0;
			fFailIfEmpty = FALSE;
			if (DEX_GetOpenConnectionCount (QDCAllOpen|QDCCountQueryDefs) > 1) 
				ulSelectFrom |= SELIDMODE_SHOWCONNECTIONS; 
			cElems = 0; 
			pElems = NULL; 
		}
		~CCaSelIdResult() { Tidy(); }
		
		CCaSelIdResult(const CCaSelIdResult &rToCopy) 
		{ 
			cElems = rToCopy.cElems; 
			if (0 != cElems) {
				pElems = (SELIDRESULT *)CoTaskMemAlloc (cElems*sizeof(SELIDRESULT)); 
				if (NULL == pElems) throw E_OUTOFMEMORY;
				memcpy (pElems, rToCopy.pElems, cElems*sizeof(SELIDRESULT));
			} else
				pElems = NULL;

			ulSelectFrom = rToCopy.ulSelectFrom;
			dwHideTypes = rToCopy.dwHideTypes;
			fFailIfEmpty = rToCopy.fFailIfEmpty;
		}
		CCaSelIdResult & operator = (const CCaSelIdResult &rToCopy)
		{ 
			Tidy();
			ulSelectFrom = rToCopy.ulSelectFrom;
			dwHideTypes = rToCopy.dwHideTypes;
			fFailIfEmpty = rToCopy.fFailIfEmpty;
			
			cElems = rToCopy.cElems; 
			if (0 != cElems) {
				pElems = (SELIDRESULT *)CoTaskMemAlloc (cElems*sizeof(SELIDRESULT)); 
				if (NULL == pElems) throw E_OUTOFMEMORY;
				memcpy (pElems, rToCopy.pElems, cElems*sizeof(SELIDRESULT));
			}
			return *this;
		}

	void SetData (ULONG ulCnt, SELIDRESULT *pSelIds)
	{
		Tidy();
		cElems = ulCnt;
		pElems = pSelIds;
	}
};

class CSelectIdentDlg 
	: public CPropertyPage,
	  public CPropertyActionExtUsage
{ 
private:
	DWORD m_dwFlags;
	CCaSelIdResult m_caSelIds;	// selektierte Eintr�ge

	PushButton m_pbSelAll;
	CSelIdentListViewWindow *m_pIdents;

	class CSelIDPropAct *m_pParent;
	bool m_fResultPrepared;
	ADDENTRYPROC m_pFcnAdd;

	IEnum<LONG> *m_pIEnumObjs;

	int m_iCurrPacket;

	void AdjustOK (bool fDisableNext = false);

protected:
	void ButtonClick (ControlEvt);
	void WindowInit (Event);

	void OnItemChanged (NotifyEvt);
	int OnSetActive (NotifyEvt);
	int OnWizFinish (NotifyEvt);
	int OnWizNext (NotifyEvt);
	void OnCancel (NotifyEvt);
	void OnClick (NotifyEvt);
	void HelpRequest(HelpRequestEvt);

// ZugriffsFunktionen auf ausgew�hlte Identifikatoren
	bool GetFirstIdent (long &rlIdent, short &riOTyp, int &riCnt);
	bool GetNextIdent (long &rlIdent, short &riOTyp, int &riCnt);

	int GetItemCount (void);
	int GetSelectedCount (void);

	bool PrepareResult (void);

// Konstruktor nicht direkt rufen
		CSelectIdentDlg (CSelIDPropAct *pParent, ResID uiRes, 
						 LPCSTR pcCaption, ADDENTRYPROC pFcnAdd);
	bool FInit (void);
	void SetDirty (bool fDirty = true);
		
// InitialisierungsFuntkion zur anf�nglichen Selektion einzelner Eintr�ge
	int SelectIdent (long lIdent, short iOTyp, bool fSel = true);

public:
// Destruktor/Initialisierung
		~CSelectIdentDlg (void);
		
static CSelectIdentDlg *CreateInstance (
			CSelIDPropAct *pParent, ResID resID, LPCSTR pcCaption, ADDENTRYPROC pFcnAdd);
	
// Fragt den Dialog nach seinen Daten 
	HRESULT SetEnumLONG (IEnum<LONG> *pIEnum);		// �bergibt zu modifizierende Objektmenge
	HRESULT GetEnumLONG (IEnum<LONG> **ppEnum, bool fMakePackets);		// Fragt den Dialog nach seinen Daten 

// Setzen und Abfragen der Dialoginformationen
	HRESULT GetSelectedInfo (CCaSelIdResult *pSelInfo);
	HRESULT SetSelectedInfo (CCaSelIdResult *pSelInfo, bool fNoShow = false);

	void SetFlags (DWORD dwFlags) { m_dwFlags = dwFlags; }

	HPROPSHEETPAGE CreatePage() { return CPropertyPage::CreatePage(); }

	int GetSelectedPacketCount() { return m_caSelIds.cElems; }
};


#endif // _SELIDENT_HXX

