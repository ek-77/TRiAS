// NF_PG2D.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CSetNF_PG2D recordset

class CSetNF_PG2D : public CRecordset
{
public:
	long GetCount();
	BOOL IstAngeschlossen( const char*, const char* );
	void DeleteIDE( const char* );
	BOOL ModIDE( const char*, const char* );
	void RewriteArray( CPG2DArray* );
	CSetNF_PG2D(CDatabase* pDatabase = NULL);
	~CSetNF_PG2D();
	DECLARE_DYNAMIC(CSetNF_PG2D)

// Field/Param Data
	//{{AFX_FIELD(CSetNF_PG2D, CRecordset)
	CString	m_NFP2_IDE;
	CString	m_NFP2_FLN;
	double	m_NFP2_FLG;
	double	m_NFP2_ABF;
	CString	m_NFP2_ANS;
	//}}AFX_FIELD


// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CSetNF_PG2D)
	public:
	virtual CString GetDefaultConnect();    // Default connection string
	virtual CString GetDefaultSQL();    // Default SQL for Recordset
	virtual void DoFieldExchange(CFieldExchange* pFX);  // RFX support
	//}}AFX_VIRTUAL
	void	InitListen( const char* );
	void	InitArray( const char*, CPG2DArray* );

// Implementation
#ifdef _DEBUG
	virtual void AssertValid() const;
	virtual void Dump(CDumpContext& dc) const;
#endif
};
