// EditControl fuer die Eingabe von Kurztexten
// File: TXTEDIT.CXX

#include "tprojp.hxx"
#include "txtedit.hxx"
#include "tproject.h" 
#include "defproj.h"

#include <ctype.h>

// ----------------------------------------------------------------------------
// Ein Txtedit ist geeignet ein Kurztext kontrolliert einzulesen ----------------
// ----------------------------------------------------------------------------

// Konstruktoren --------------------------------------------------------------
TxtEdit :: TxtEdit (pDialogWindow p, ResID r) 
	 : ControlWindow (new SingleLineEdit (p, r))
{
	m_pKey = NULL;
	m_pPush = NULL;
	m_pFirstKey = NULL;
	m_pDelete = NULL;
	m_pProject = NULL;
	m_pKey = new char [MaxKey];
	if ( !m_pKey)
		return;
}

TxtEdit :: TxtEdit (pWindow parent, uint id, Point p, Dimension d) 
	 : ControlWindow (new SingleLineEdit (parent, id, p, d)) 
{ 
	m_pKey = NULL;
	m_pPush = NULL;
	m_pFirstKey = NULL;
	m_pDelete = NULL;
	m_pProject = NULL;
	m_pKey = new char [MaxKey];
	if ( !m_pKey)
		return;
}

// neue EventHandler f�r TxtEdits ---------------------------------------------
void _XTENSN_EXPORT TxtEdit :: KeyDown (KeyEvt e) 
{
char * pBuff = new char [MaxKey];

	Default ((Event &)e); 
	if ( pBuff ) {
		GetText ( pBuff,MaxKey-1);
		if ( m_pPush)
			m_pPush->Disable();				
		if ( m_pKey && strcmp ( pBuff,m_pKey) != 0 ) {
			if ( m_pProject ) {
				char *pProj = new char [ _MAX_PATH];
				if ( pProj) {
					m_pProject->GetText ( pProj,_MAX_PATH-1);
					if ( *pBuff != '\0' && *pProj != '\0' ) {
						if ( m_pPush)
							m_pPush->Enable();
					}
					DELETE_OBJ ( pProj);
				}
			} else {
				if ( *pBuff != '\0' && m_pPush )
					m_pPush->Enable();
			}
		}

		if ( m_pFirstKey ) {
			if ( strcmp ( pBuff,m_pFirstKey) == 0 ) { 
				if ( m_pDelete)
					m_pDelete->Enable();
				if ( m_pPush)
					m_pPush->Disable();
			} else {
				if ( m_pDelete)
					m_pDelete->Disable();
				if ( m_pPush)
					m_pPush->Enable();
			}
		}

		DELETE_OBJ ( pBuff);
	}
}
// Destruktor -----------------------------------------------------------------
TxtEdit :: ~TxtEdit (void) 
{
	delete (SingleLineEdit *)GetControl();
	DELETE_OBJ ( m_pKey);
	DELETE_OBJ ( m_pFirstKey);
}

// diverse Memberfunktionen ---------------------------------------------------
void TxtEdit :: GetText (char *Buff, uint Len) 
{
	if ( Buff ) {
		if ( Len > MaxKey-1 )
			Len = MaxKey-1;
		GetEditControl() -> GetText (Buff, Len);
	}
	
}

void TxtEdit :: SetText (const char *Buff) 
{
	GetEditControl() -> SetText (Buff);
	if ( Buff) {
		if ( m_pKey)
			strcpy ( m_pKey,Buff);
	}
	if ( m_pFirstKey && m_pKey ) {
		if ( strcmp ( m_pKey,m_pFirstKey) == 0 ) { 
			if ( m_pDelete)
				m_pDelete->Enable();
			if ( m_pPush)
				m_pPush->Disable();
		} else {
			if ( m_pDelete)
				m_pDelete->Disable();
			if ( m_pPush)
				m_pPush->Enable();
		}
	}

}

void TxtEdit :: SetButton (PushButton *p) 
{
	if (p)
		m_pPush = p;
	
}


void TxtEdit :: SetDelete (PushButton *p) 
{
	if(p)
		m_pDelete = p;
	
}

void TxtEdit :: SetProject (FixedText *p) 
{
	if(p)
		m_pProject = p;
	
}


void TxtEdit :: SetKey (char *pKey) 
{
	if ( !pKey)
		return;
	if ( !m_pFirstKey) {
		m_pFirstKey = new char [_MAX_PATH];
		if ( !m_pFirstKey )
			return;
		strcpy ( m_pFirstKey, pKey);
	}
	return;	
}

void TxtEdit :: SetTextLimit (uint nchars) 
{
	GetEditControl() -> SetTextLimit (nchars);
}

int TxtEdit :: GetTextLen (void) 
{
	return GetEditControl() -> GetTextLen ();
}
//---------------------TXTEDIT.CXX----------------------
