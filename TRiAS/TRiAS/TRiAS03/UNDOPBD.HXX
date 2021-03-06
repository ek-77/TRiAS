// Undo/Redo f�r einen PBD-Eintrag --------------------------------------------
// File: UNDOPBD.HXX

#if !defined(_UNDOPBD_HXX)
#define _UNDOPBD_HXX

class CUndoRedoPBDData : 
	public IUndoRedoPBDData 
{
private:
	DWORD m_dwRefCnt;

	LPFNDESTROYED m_pfnDestroy;

	PBDDATATYPE m_rgType;			// Typ des behandelten PBD-Eintrages
	ULONG m_ulTarget;				// Code des PBD-Eintrages
	int m_rgBase;					// Zahlenbasis
	ErrCode m_ecIgnoreCode;			// f�r ErrInstall

	PBDDATA *m_pOldPBDData;			// Alter PBD-Eintrag
	PBDDATA *m_pNewPBDData;			// Neuer PBD-Eintrag

	unsigned int m_fInitialized : 1;	// wurde bereits initialisiert
	unsigned int m_fNewROMode : 1;
	unsigned int m_fOldROMode : 1;

protected:
	BOOL FInitDelete (PBDDATATYPE rgType, HGENERIC ulTarget);
	BOOL FInitModify (const PBDDATA *pNewData, const PBDDATA *pOldData);

	PBDDATA *CopyPBDData (PBDDATATYPE rgType, const PBDDATA *pData);
	PBDDATA *ReadPBDData (PBDDATATYPE rgType, HGENERIC ulTarget);

	~CUndoRedoPBDData (void);

public:
	CUndoRedoPBDData (LPFNDESTROYED pfnDestroy);

// *** IUnknown methods ***
	STDMETHOD(QueryInterface) (THIS_ REFIID riid, LPVOID FAR* ppvObj);
	STDMETHOD_(ULONG, AddRef) (THIS);
	STDMETHOD_(ULONG, Release) (THIS);

// *** IUndoRedo methods ***
	STDMETHOD_(DWORD, Capabilities)(THIS_ signed char **pDesc);
	STDMETHOD(Undo)(THIS);
	STDMETHOD(Redo)(THIS);

// *** IUndoRedoPBDData ***
	STDMETHOD(InitModify)(THIS_ const PBDDATA *pNewData, const PBDDATA *pOldData);
	STDMETHOD(InitDelete)(THIS_ PBDDATATYPE rgType, HGENERIC ulTarget);

// sonstige Member
inline	BOOL isInitialized (void) 
		{ return m_fInitialized ? true : false; }
inline	void Initialized (BOOL fInit = true) 
		{ m_fInitialized = fInit ? true : false; }
};

// Funktionen f�r das Erzeugen und Freigeben einer typspezifischen PBDDATA-Struktur
PBDDATA *__ctPBDDATA (PBDDATATYPE rgType, HGENERIC lTarget, BOOL fInitStrings = true);
void __dtPBDDATA (PBDDATA *&rpPBDData);

PBDDATATYPE GetPBDType (int iType);
int GetPBDBase (PBDDATATYPE rgType);
ErrCode GetPBDIgnoreCode (PBDDATATYPE rgType);
BOOL GetROModeIdent (PBDDATATYPE rgType, long Target);
void NotifyChanged (PBDDATATYPE rgType, long lTarget);

#endif // _UNDOPBD_HXX
