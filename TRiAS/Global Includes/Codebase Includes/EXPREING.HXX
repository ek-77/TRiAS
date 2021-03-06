/*
Datei: EXPREING.HXX
Dialog zur Eingabe und zum Pr�fen eines dBASE-Ausdrucks.

Erarbeitet: J.Benkenstein               Stand vom: 21.10.1993
*/

#ifndef EXPREING_HXX
#define EXPREING_HXX

#ifndef NOENTRYEXPRESSION
//  Dialog-Definition
class E4EXPORT CodeBase;
class E4EXPORT_FCT DBaseFiles;
class E4EXPORT_FCT EntryExpression : public DialogWindow {
private:
//  Attribute
    Bool _OpFlag;               // Operation-Flag
    CodeBase *_pCB;
    DBaseFiles *_pDataTree;     // Liste der dbf-Dateien
    pchar _pExpr;               // dBASE-Expression;
    Bool _OemToAnsii;           // Konvertierungs-Flag
    short _ExprSize;            // max. L�nge eines Ausdrucks       

//  Dialog-Elemente
    ListBox _FieldList, _FunctionList, _OperatorList;
    SingleLineEdit _ExprLine;
    PushButton _OKButton, _CheckButton;
    FixedText _InfoText;

protected:
	// Event-Handler
    void ButtonClick (ControlEvt CE);
    void ListBoxSel (ControlEvt CE);
    void ListBoxClk (ControlEvt CE);
    void EditChange (ControlEvt CE);
    Bool QueryClose (Event);

    Bool _CheckExpression (void);           // dBase-Expression pr�fen
    Bool _FillFieldListe (void);            // Feldliste f�llen
    Bool _OutputFieldInfo (pchar FileName, pchar FieldName); // zugeh. Info ausgeben

public:
//  Konstruktor/Destruktor
    EntryExpression (pWindow pParent,           // Eltern-Fenster
		     CodeBase *pCB,             // CodeBase-Klasse
		     DBaseFiles *pDataTree,     // Liste der dbf-Dateien
		     pchar pExpression = NULL,  // opt. dBASE-Expression
		     short ExpressionSize = 0); // opt. Expression-Gr��e
    ~EntryExpression (void);

	// lese Konstruktor-Flag
    Bool OpFlag (void) { return _OpFlag; }
	// lese aktuellen Expression
    pchar GetExpression (void);
};
#endif  //  NOENTRYEXPRESSION

#endif  //  EXPREING
