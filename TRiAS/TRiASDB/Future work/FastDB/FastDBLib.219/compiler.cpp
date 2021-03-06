//-< COMPILE.CPP >---------------------------------------------------*--------*
// FastDB                    Version 1.0         (c) 1999  GARRET    *     ?  *
// (Main Memory Database Management System)                          *   /\|  *
//                                                                   *  /  \  *
//                          Created:     20-Nov-98    K.A. Knizhnik  * / [] \ *
//                          Last update: 15-Jan-99    K.A. Knizhnik  * GARRET *
//-------------------------------------------------------------------*--------*
// Conditional expresion compiler
//-------------------------------------------------------------------*--------*

#include <ctype.h>
#include "database.h"
#include "array.h"
#include "query.h"
#include "cursor.h"
#include "compiler.h"
#include "symtab.h"

nat1 const dbExprNode::nodeTypes[] = { 
#define DBVM(cop, type, n_opernads, commutative) type,
#include "compiler.d"
0};

nat1 const dbExprNode::nodeOperands[] = { 
#define DBVM(cop, type, n_operands, commutative) n_operands,
#include "compiler.d"
0};

nat1 const dbExprNode::commutativeOperator[] = { 
#define DBVM(cop, type, n_operands, commutative) commutative,
#include "compiler.d"
0};

dbExprNode* dbExprNode::freeNodeList;
dbMutex&    dbExprNode::mutex = *new dbMutex;
bool        dbCompiler::initialized;

dbExprNodeSegment* dbExprNode::segmentList;

dbExprNode::dbExprNode(dbExprNode* node)
{
    memcpy(this, node, sizeof(*this));
    
    for (int i = nodeOperands[cop]; --i >= 0;) { 
	operand[i] = new dbExprNode(operand[i]);
    }
    if (cop == dbvmLoadStringConstant) { 
	char* s = new char[strlen(svalue.str)+1];
	strcpy(s, svalue.str);
	svalue.str = s;
    } 
}

void* dbExprNode::operator new(size_t) 
{ 
    dbCriticalSection cs(mutex);
    dbExprNode* node = freeNodeList;
    if (node == NULL) {
	dbExprNodeSegment* seg = new dbExprNodeSegment;
	seg->next = segmentList;
	segmentList = seg;
	node = (dbExprNode*)seg->buf;
	dbExprNode* free = NULL;
	for (int i = dbExprNodeSegment::allocationQuantum; --i != 0;) { 
	    node->next = free;
	    free = node++;
	} 
	freeNodeList = free;
    } else { 
	freeNodeList = node->next;
    }
    return node;
}

void dbExprNode::cleanup()
{
    dbExprNode* free = NULL;
    for (dbExprNodeSegment* seg = segmentList; seg != NULL; seg = seg->next) 
    { 
	dbExprNode* node = (dbExprNode*)seg->buf;
	for (int i = dbExprNodeSegment::allocationQuantum; --i >= 0;) { 
	    node->next = free;
	    free = node++;
	 }
    }
    freeNodeList = free;
}

dbExprNode::~dbExprNode()
{
    if (cop == dbvmLoadStringConstant) { 
	delete[] svalue.str;
    } else { 
	for (int i = nodeOperands[cop]; --i >= 0; ) { 
	    delete operand[i];
	}
    }
}

int dbCompiler::scan() 
{
    char ch;
    char *p, *q;
    int  i, n, value;
    char buf[maxStrLen+1];


   nextElement:
    if (queryElement == NULL) { 
	return tkn_eof;
    }
    if (queryElement->type != dbQueryElement::qExpression) {
	varType = queryElement->type;
	varPtr = queryElement->ptr;
	varRefTable = queryElement->ref;
	queryElement = queryElement->next;
	return tkn_var;
    } 
    p = q = (char*)queryElement->ptr + currPos;
    
    do { 
	ch = *p++;
	if (ch == '\n') { 
	    offsetWithinStatement = (char*)queryElement->ptr - p;
	    firstPos = 0;
	}
    } while (isspace(byte(ch)));
    currPos += p - q;

    switch (ch) { 
      case '\0':
	if ((queryElement = queryElement->next) == NULL) { 
	    return tkn_eof;
	}
	currPos = 0;
	goto nextElement;
      case '+':
	return tkn_add;
      case '-':
	if (*p == '-') { 
	    // ANSI comments
	    q = p;
	    do { 
		p += 1;
	    } while (*p != '\n' && *p != '\0');
	    currPos += p - q;
	    goto nextElement;
	}
	return tkn_sub;
      case '*':
	return tkn_mul;
      case '/':
	return tkn_div;
      case '.':
	return tkn_dot;
      case ',':
	return tkn_comma;
      case '(':
	return tkn_lpar;
      case ')':
	return tkn_rpar;
      case '[':
	return tkn_lbr;
      case ']':
	return tkn_rbr;
      case ':':
	return tkn_col;
      case '^':
	return tkn_power;
      case '<':
	if (*p == '=') { 
	    currPos += 1;
	    return tkn_le;
	} else if (*p == '>') { 
	    currPos += 1;
	    return tkn_ne;
	}
	return tkn_lt;
      case '>':
	if (*p == '=') { 
	    currPos += 1;
	    return tkn_ge;
	}
	return tkn_gt;
      case '=':
	return tkn_eq;
      case '!':
	if (*p != '=') { 
	    error("Invalid token '!'");
	} 
	currPos += 1;
	return tkn_ne;
      case '|':
	if (*p != '|') { 
	    error("Invalid token '|'");
	} 
	currPos += 1;
	return tkn_add;
      case '\'':
	q = p;
	i = 0; 
	while (true) { 
	    if (*p == '\'') { 
		if (*++p != '\'') { 
		    break;
		}
	    } else if (*p == '\0') { 
		error("Unterminated character constant");
	    }
	    if (i == maxStrLen) { 
		error("String constant too long");
	    }
	    buf[i++] = *p++;
	}
	buf[i++] = '\0';
	currPos += p - q;
	svalue.str = new char[i];
	strcpy(svalue.str, buf);
	svalue.len = i;
	return tkn_sconst;
      case '0': case '1': case '2': case '3': case '4': 
      case '5': case '6': case '7': case '8': case '9':
	value = ch - '0';
	for (q = p; isdigit(*(byte*)p); p++) { 
	    value = value*10 + *p - '0';
	}
	if (*p == '.' || *p == 'e' || *p == 'E') { 
	    if (sscanf(q-1, "%lf%n", &fvalue, &n) != 1) { 
		error("Bad floating point constant");
	    }
	    currPos += n - 1;
	    return tkn_fconst;
	} else if (p - q >= 9) { 
	    if (sscanf(q-1, INT8_FORMAT "%n", &ivalue, &n) != 1) { 
		error("Bad integer constant");
	    }
	    currPos += n - 1;
	    return tkn_iconst;
	} else { 
	    currPos += p - q; 
	    ivalue = value;
	    return tkn_iconst;
	}
      default:
	if (isalpha(byte(ch)) || ch == '$' || ch == '_') { 
	    i = 0;
	    do { 
		if (i == maxStrLen) { 
		    error("Name too long");
		}
		buf[i++] = ch;
		ch = *p++;
	    } while (isalnum(byte(ch)) || ch == '$' || ch == '_');
	    buf[i] = '\0';
	    name = buf;
	    currPos += i - 1;
	} else { 
	    error("Invalid symbol");
	} 
	return dbSymbolTable::add(name, tkn_ident);
   }
}

dbExprNode* dbCompiler::disjunction()
{
    dbExprNode* left = conjunction();
    if (lex == tkn_or) { 
	int pos = currPos;
	dbExprNode* right = disjunction();
	if (left->type == tpInteger && right->type == tpInteger) { 
	    left = new dbExprNode(dbvmOrInt, left, right);
	} else if (left->type == tpBoolean && right->type == tpBoolean) { 
	    left = new dbExprNode(dbvmOrBool, left, right);
	} else { 
	    error("Bad operands for OR operator", pos);
	}
    }
    return left;
}

dbExprNode* dbCompiler::conjunction()
{
    dbExprNode* left = comparison();
    if (lex == tkn_and) { 
	int pos = currPos;
	dbExprNode* right = conjunction();
	if (left->type == tpInteger && right->type == tpInteger) { 
	    left = new dbExprNode(dbvmAndInt, left, right);
	} else if (left->type == tpBoolean && right->type == tpBoolean) { 
	    left = new dbExprNode(dbvmAndBool, left, right);
	} else { 
	    error("Bad operands for AND operator", pos);
	}
    }
    return left;
}

inline dbExprNode* int2real(dbExprNode* expr) 
{
    if (expr->cop == dbvmLoadIntConstant) { 
	expr->fvalue = (real8)expr->ivalue;
	expr->cop = dbvmLoadRealConstant;
	expr->type = tpReal;
    } else { 
	expr = new dbExprNode(dbvmIntToReal, expr);
    }
    return expr;
}

int dbCompiler::compare(dbExprNode* expr, dbExprNode* list)
{
    int n = 1;
    if (list->operand[0] != NULL) { 
	n = compare(expr, list->operand[0]);
	expr = new dbExprNode(expr);
    }
    dbExprNode* elem = list->operand[1];
    int cop = dbvmVoid;
    if (expr->type == tpInteger) { 
	if (elem->type == tpReal) { 
	    expr = int2real(expr);
	    cop = dbvmEqReal;
	} else if (elem->type == tpInteger) { 
	    cop = dbvmEqInt;
	}
    } else if (expr->type == tpReal) {
	if (elem->type == tpReal) { 
	    cop = dbvmEqReal;
	} else if (elem->type == tpInteger) { 
	    cop = dbvmEqReal;
	    elem = int2real(elem);
	}
    } else if (expr->type == tpString && elem->type == tpString) {
	cop = dbvmEqString;
    } else if (expr->type == tpReference && elem->type == tpReference) {
	cop = dbvmEqReference;
    } else if (expr->type == tpBoolean && elem->type == tpBoolean) {
	cop = dbvmEqBool;
    }
    if (cop == dbvmVoid) { 
	char buf[256];
	sprintf(buf, "Expression %d in right part of IN operator have "
		"incompatible type", n);
	error(buf);
    } else { 
	list->type = tpBoolean;
	if (list->operand[0] != NULL) { 
	    list->operand[1] = new dbExprNode(cop, expr, elem);
	    list->cop = dbvmOrBool;
	} else { 
	    list->operand[0] = expr;
	    list->cop = cop;
	}
    }
    return ++n;
}

dbExprNode* dbCompiler::comparison()
{
    int leftPos = currPos;
    dbExprNode *left, *right;
    left = addition();
    int cop = lex;
    if (cop == tkn_eq || cop == tkn_ne || cop == tkn_gt || cop == tkn_ge
	|| cop == tkn_le || cop == tkn_lt || cop == tkn_between 
	|| cop == tkn_like || cop == tkn_not || cop == tkn_is || cop == tkn_in)
    {
	int rightPos = currPos;
	bool notOp = false;
	if (cop == tkn_not) { 
	    notOp = true;
	    cop = scan();
	    if (cop != tkn_like && cop != tkn_between && cop != tkn_in) { 
		error("LIKE, BETWEEN or IN expected", rightPos);
	    } 
	    rightPos = currPos;
	} else if (cop == tkn_is) {
	    if (left->type != tpReference) { 
		error("IS [NOT] NULL predicate can be applied only to "
		      "references", rightPos);
	    } 
	    rightPos = currPos;
	    if ((cop = scan()) == tkn_null) { 
		left = new dbExprNode(dbvmIsNull, left);
	    } else if (cop == tkn_not) { 
		rightPos = currPos;
		if (scan() == tkn_null) { 
		    left = new dbExprNode(dbvmNotBool, 
					  new dbExprNode(dbvmIsNull, left));
		} else { 
		    error("NULL expected", rightPos);
		}
	    } else { 
		error("[NOT] NULL expected", rightPos);
	    } 
	    lex = scan();
	    return left;
	}	
	right = addition();
	if (cop == tkn_in) { 
	    int type;
	    switch (right->type) {
	      case tpArray:
		type = right->cop == dbvmLoadVarArray 
		     ? dbField::tpReference 
		     : right->ref.field->components->type;
		if ((left->type == tpBoolean && type == dbField::tpBool) 
		    || (left->type == tpInteger 
			&& (type == dbField::tpInt1 
			    || type == dbField::tpInt2
			    || type == dbField::tpInt4 
			    || type == dbField::tpInt8))
		    || (left->type == tpReal 
			&& (type == dbField::tpReal4
			    || type == dbField::tpReal8))
		    || (left->type == tpString && type == dbField::tpString)
		    || (left->type == tpReference 
			&& type == dbField::tpReference))
		{
		    left = new dbExprNode(dbvmInArrayBool + type, left, right);
		} else {
		    error("Type of selective expression of IN operator doesn't"
			  " match type of the array");
		}
		break;
	      case tpString:
		if (left->type == tpString) { 
		    left = new dbExprNode(dbvmInString, left, right);
		} else { 
		    error("Left operand of IN expression hasn't string type");
		}
		break;
	      case tpList:
		compare(left, right);
		left = right;
		break;
	      default:
		error("List of expressions or array expected", rightPos);
	    }
	} else if (cop == tkn_between) { 
	    int andPos = currPos;
	    if (lex != tkn_and) { 
		error("AND expected");
	    }
	    dbExprNode* right2 = addition();
	    if (left->type == tpReal 
		|| right->type == tpReal || right2->type == tpReal)
	    {
		if (left->type == tpInteger) { 
		    left = int2real(left);
		} else if (left->type != tpReal) { 
		    error("operand of BETWEEN operator should be of "
			  "integer, real or string type", leftPos);
		}
		if (right->type == tpInteger) {
		    right = int2real(right);
		} else if (right->type != tpReal) { 
		    error("operand of BETWEEN operator should be of "
			  "integer, real or string type", rightPos);
		}
		if (right2->type == tpInteger) {
		    right2 = int2real(right2);
		} else if (right2->type != tpReal) { 
		    error("operand of BETWEEN operator should be of "
			  "integer, real or string type", andPos);
		}
		left = new dbExprNode(dbvmBetweenReal, left, right, right2);
	    } 
	    else if (left->type == tpInteger && right->type == tpInteger 
		     && right2->type == tpInteger)
	    {		    
		left = new dbExprNode(dbvmBetweenInt, left, right, right2);
	    }
	    else if (left->type == tpString && right->type == tpString 
		     && right2->type == tpString)
	    {
		left = new dbExprNode(dbvmBetweenString, left, right, right2);
	    }
	    else { 
		error("operands of BETWEEN operator should be of "
		      "integer, real or string type", rightPos);
	    }
	} else if (cop == tkn_like) {  
	    if (left->type != tpString || right->type != tpString) { 
		error("operands of LIKE operator should be of"
		      "string type", rightPos);
	    }
	    if (lex == tkn_escape) { 
		rightPos = currPos;
		if (scan() != tkn_sconst) { 
		    error("String literal espected after ESCAPE", rightPos);
		}
		lex = scan();
		left = new dbExprNode(dbvmLikeEscapeString, left, right,
			   new dbExprNode(dbvmLoadStringConstant, svalue));
	    } else { 
		left = new dbExprNode(dbvmLikeString, left, right);
	    }
	} else { 
	    if (left->type == tpReal || right->type == tpReal) { 
		if (left->type == tpInteger) { 
		    left = int2real(left);
		} else if (left->type != tpReal) { 
		    error("operands of relation operator should be of"
			  "intger, real or string type", leftPos);
		}
		if (right->type == tpInteger) { 
		    right = int2real(right);
		} else if (right->type != tpReal) { 
		    error("operands of relation operator should be of"
			  "intger, real or string type", rightPos);
		}
		left = new dbExprNode(dbvmEqReal + cop - tkn_eq, left, right);
	    } else if (left->type == tpInteger && right->type == tpInteger) { 
		left = new dbExprNode(dbvmEqInt + cop - tkn_eq, left, right);
	    } else if (left->type == tpString && right->type == tpString) { 
		left = new dbExprNode(dbvmEqString + cop-tkn_eq, left, right);
	    } else if (left->type==tpReference && right->type==tpReference) { 
		if (cop != tkn_eq && cop != tkn_ne) { 
		    error("References can be checked only for equality", 
			  rightPos);
		}
		left = new dbExprNode(dbvmEqReference+cop-tkn_eq, left, right);
	    } else if (left->type == tpBoolean && right->type == tpBoolean) { 
		if (cop != tkn_eq && cop != tkn_ne) { 
		    error("Boolean variables can be checked only for equality",
			  rightPos);
		}
		left = new dbExprNode(dbvmEqBool + cop - tkn_eq, left, right);
	    } else { 
		error("operands of relation operator should be of"
		      "integer, real or string type", rightPos);
	    }
	    //
	    // Optimization for applying indices: if operation is 
	    // commuatative and left operand is constant then swap operands
	    //
	    if (IS_CONSTANT(left->operand[0]->cop)) { 
		right = left->operand[1];
		left->operand[1] = left->operand[0];
		left->operand[0] = right;
		left->cop = dbExprNode::commutativeOperator[left->cop];
	    }   
	}
	if (notOp) { 
	    left = new dbExprNode(dbvmNotBool, left);
	}
    }
    return left;
}

dbExprNode* dbCompiler::addition() 
{ 
    int leftPos = currPos;
    dbExprNode* left = multiplication();
    while (lex == tkn_add || lex == tkn_sub) { 
	int cop = lex;
	int rightPos = currPos;
	dbExprNode* right = multiplication();
	if (left->type == tpReal || right->type == tpReal) { 
	    if (left->type == tpInteger) { 
		left = int2real(left);
	    } else if (left->type != tpReal) { 
		error("operands of arithmetic operators should be of"
		      "integer or real type", leftPos);
	    }
	    if (right->type == tpInteger) { 
		right = int2real(right);
	    } else if (right->type != tpReal) { 
		error("operands of arithmetic operator should be of"
		      "integer or real type", rightPos);
	    }
	    left = new dbExprNode(cop==tkn_add ? dbvmAddReal : dbvmSubReal,
				  left, right);
	} else if (left->type == tpInteger && right->type == tpInteger) { 
	    left = new dbExprNode(cop==tkn_add ? dbvmAddInt : dbvmSubInt,
				  left, right);
	} else if (left->type == tpString && right->type == tpString) { 
	    if (cop == tkn_add) { 
		left = new dbExprNode(dbvmStringConcat, left, right);
	    } else { 
		error("Operation - is not defined for strings", rightPos);
	    }
	} else { 
	    error("operands of arithmentic operator should be of"
		  "integer or real type", rightPos);
	}
	leftPos = rightPos;
    }
    return left;
}


dbExprNode* dbCompiler::multiplication() 
{ 
    int leftPos = currPos;
    dbExprNode* left = power();
    while (lex == tkn_mul || lex == tkn_div) { 
	int cop = lex;
	int rightPos = currPos;
	dbExprNode* right = power();
	if (left->type == tpReal || right->type == tpReal) { 
	    if (left->type == tpInteger) { 
		left = int2real(left);
	    } else if (left->type != tpReal) { 
		error("operands of arithmetic operators should be of"
		      "integer or real type", leftPos);
	    }
	    if (right->type == tpInteger) { 
		right = int2real(right);
	    } else if (right->type != tpReal) { 
		    error("operands of arithmetic operator should be of"
			  "integer or real type", rightPos);
	    }
	    left = new dbExprNode(cop==tkn_mul ? dbvmMulReal : dbvmDivReal,
				  left, right);
	} else if (left->type == tpInteger && right->type == tpInteger) { 
	    left = new dbExprNode(cop==tkn_mul ? dbvmMulInt : dbvmDivInt,
				  left, right);
	} else { 
	    error("operands of arithmentic operator should be of"
		  "integer or real type", rightPos);
	}
	leftPos = rightPos;
    }
    return left;
}

dbExprNode* dbCompiler::power() 
{ 
    int leftPos = currPos;
    dbExprNode* left = term();
    if (lex == tkn_power) { 
	int rightPos = currPos;
	dbExprNode* right = power();
	if (left->type == tpReal || right->type == tpReal) { 
	    int cop = dbvmPowerReal;
	    if (left->type == tpInteger) { 
		left = int2real(left);
	    } else if (left->type != tpReal) { 
		error("operands of arithmetic operators should be of"
		      "integer or real type", leftPos);
	    }
	    if (right->type == tpInteger) { 
		cop = dbvmPowerRealInt;
	    } else if (right->type != tpReal) { 
		    error("operands of arithmetic operator should be of"
			  "integer or real type", rightPos);
	    }
	    left = new dbExprNode(cop, left, right);
	} else if (left->type == tpInteger && right->type == tpInteger) { 
	    left = new dbExprNode(dbvmPowerInt, left, right);
	} else { 
	    error("operands of arithmentic operator should be of"
		  "integer or real type", rightPos);
	}
    }
    return left;
}

dbExprNode* dbCompiler::field(dbExprNode* expr, dbTableDescriptor* refTable,
			      dbFieldDescriptor* fd) 
{
    int pos;

    while (true) { 
	switch (lex) {
	  case tkn_dot:	
	    pos = currPos;
	    if (scan() != tkn_ident) { 
		error("identifier expected", pos);
	    }
	    if (fd != NULL && fd->type == dbField::tpStructure) { 
		if ((fd = fd->find(name)) == NULL) { 
		    error("Field not found");
		}
	    } else { 
		assert(expr != NULL);
		if (expr->type != tpReference) { 
		    error("Left operand of '.' should be "
			  "structure or reference", pos);
		}
		if (refTable == NULL) { 
		    refTable = fd->refTable;
		}
		if ((fd = refTable->find(name)) == NULL) { 
		    error("Field not found");
		}
	        refTable = NULL;
		expr = new dbExprNode(dbvmDeref, expr);
	    }
	    break;
	  case tkn_lbr:
	    if (expr == NULL || 
		(expr->type != tpArray && expr->type != tpString))
	    { 
		error("Index can be applied only to arrays");
	    } else { 
		dbExprNode* index = disjunction();
		if (lex != tkn_rbr) { 
		    error("']' expected");
		}
		if (index->type != tpInteger && index->type != tpFreeVar) {
		    error("Index should have integer type");
		}
		
		if (expr->type == tpString) { 
		    lex = scan();
		    return new dbExprNode(dbvmCharAt, expr, index);
		}
		if (fd == NULL) { 
		    // variable of array of reference type
		    expr = new dbExprNode(dbvmGetAt,expr,index,sizeof(oid_t));
		} else { 
		    fd = fd->components;
		    expr = new dbExprNode(dbvmGetAt, expr, index, fd->dbsSize);
		}
	    }
	    break;
	  default:
	    if (expr == NULL) { 
		error("'.' expected");
	    }
	    return expr;
	}	
	if (fd == NULL) { 
	    expr = new dbExprNode(dbvmLoadReference, expr, 0); 
	} else if (fd->type != dbField::tpStructure) { 
	    expr = new dbExprNode((expr != NULL 
				   ? dbvmLoadBool : dbvmLoadSelfBool) 
				  + fd->type, fd, expr);
	}
	lex = scan();
    }
}



dbExprNode* dbCompiler::term() 
{
    dbFieldDescriptor* fd;
    dbTableDescriptor* refTable;
    int cop;
    int pos = currPos;
    dbBinding* bp;
    dbExprNode* expr = NULL;
    dbUserFunction* func;

    if ((cop = scan()) == tkn_where) { 
	if (firstPos == 0) { 
	    firstPos = currPos;
	}
	cop = scan(); // just ignore 'where' keyword
    }

    switch (cop) { 
      case tkn_eof:
      case tkn_order:
      case tkn_start:
	lex = cop;
	return new dbExprNode(dbvmVoid);
      case tkn_current:
	lex = scan();
	return field(new dbExprNode(dbvmCurrent), table, NULL);
      case tkn_ident:
	for (bp = bindings; bp != NULL; bp = bp->next) { 
	    if (name == bp->name) { 
		bp->used = true;
		lex = scan();
		return new dbExprNode(dbvmVariable, (dbExprNode*)0, bp->index);
	    }
	}
        if ((fd = table->find(name)) == NULL) { 
	    if ((func = dbUserFunction::find(name)) != NULL) { 
		pos = currPos;
		expr = term();
		int argType = func->getParameterType();
		if (argType == tpReal && expr->type == tpInteger) { 
		    expr = int2real(expr);
		} else if (argType != expr->type) { 
		    error("Incompatible function argument", pos);
		}
		expr = new dbExprNode(dbvmFuncInt2Bool + func->type, expr, 
				      func->fptr);
		return field(expr, NULL, NULL);
	    }
	    error("Field not found", pos);
	}
	if (fd->type != dbField::tpStructure) { 
	    expr = new dbExprNode(dbvmLoadSelfBool + fd->type, fd);
	} 
	lex = scan();
	return field(expr, NULL, fd);
      case tkn_exists:
	if (scan() == tkn_ident) { 
	    dbBinding var;
	    var.next = bindings;
	    var.name = name;
	    var.used = false;
	    var.index = nFreeVars++;
	    bindings = &var;
	    if (nFreeVars >= maxFreeVars) { 
		error("Too many nested EXISTS clauses\n");
	    }
	    pos = currPos;
	    if (scan() != tkn_col) { 
		error("':' expected", pos);
	    }
	    expr = term();
	    if (expr->type != tpBoolean) { 
		error("Expresion in EXISTS clause should be of boolean type");
	    }
	    if (var.used) { 
		expr = new dbExprNode(dbvmExists, expr, nFreeVars-1);
	    }
	    nFreeVars -= 1;	    
	    assert(bindings == &var);
	    bindings = var.next;
	    return expr;
	} else { 
	    error("Free variable name expected");
	}	
	break;
      case tkn_first:
	lex = scan();
	return field(new dbExprNode(dbvmFirst), table, NULL);
      case tkn_last:
	lex = scan();
	return field(new dbExprNode(dbvmLast), table, NULL);
      case tkn_false:
	expr = new dbExprNode(dbvmLoadFalse);
	break;
      case tkn_true:
	expr = new dbExprNode(dbvmLoadTrue);
	break;
      case tkn_null:
	expr = new dbExprNode(dbvmLoadNull);
	break;
      case tkn_iconst:
	expr = new dbExprNode(dbvmLoadIntConstant, ivalue);
	break;
      case tkn_fconst:
	expr = new dbExprNode(dbvmLoadRealConstant, fvalue);
	break;
      case tkn_sconst:
	expr = new dbExprNode(dbvmLoadStringConstant, svalue); 
	lex = scan();
	return field(expr, NULL, NULL);
      case tkn_var:
	expr = new dbExprNode(dbvmLoadVarBool + varType - 
			      dbQueryElement::qVarBool, varPtr);
	refTable = varRefTable;
	lex = scan();
	return field(expr, refTable, NULL);
      case tkn_abs:
      case tkn_length:
      case tkn_lower:
      case tkn_upper:
      case tkn_integer:
      case tkn_real:
      case tkn_string:
	pos = currPos;
	expr = term();
	switch (cop) {
	  case tkn_abs:
	    if (expr->type == tpInteger) { 
		cop = dbvmAbsInt;
	    } else if (expr->type == tpReal) { 
		cop = dbvmAbsReal;
	    } else { 
		error("ABS function can be applied only "
		      "to integer or real expression", pos);
	    }
	    break;
	  case tkn_length:
	    if (expr->type == tpArray) { 
		cop = dbvmLength;
	    } else if (expr->type == tpString) { 
		cop = dbvmStringLength;
	    } else { 
		error("LENGTH function is defined only for arrays and strings",
		      pos);
	    } 
	    break;
	  case tkn_integer:
	    if (expr->type == tpReal) { 
		cop = dbvmRealToInt;
	    } else { 
		error("INTEGER function can be applied only to "
		      "expression of real type", pos);
	    }
	    break;
	  case tkn_real:
	    if (expr->type == tpInteger) { 
		cop = dbvmIntToReal;
	    } else { 
		error("REAL function can be applied only to "
		      "expression of integer type", pos);
	    }
	    break;
	  case tkn_string:
	    if (expr->type == tpInteger) { 
		cop = dbvmIntToString;
	    } else if (expr->type == tpReal) { 
		cop = dbvmRealToString;
	    } else { 
		error("STRING function can be applied only "
		      "to integer or real expression", pos);
	    }
	    break;
	  case tkn_lower:
	    if (expr->type != tpString) { 
		error("LOWER function can be applied only to string argument",
		      pos);
	    } else { 
		cop = dbvmLowerString;
	    }
	    break;
	  case tkn_upper:
	    if (expr->type != tpString) { 
		error("UPPER function can be applied only to string argument",
		      pos);
	    } else { 
		cop = dbvmUpperString;
	    }
	    break;
	  default:
	    assert(false);
	}
	return field(new dbExprNode(cop, expr), NULL, NULL);
      case tkn_lpar:
        {
	    expr = disjunction();
	    dbExprNode* list = NULL;
	    while (lex == tkn_comma) { 
		list = new dbExprNode(dbvmList, list, expr);
		expr = disjunction();
	    }
	    if (lex != tkn_rpar) { 
		error("')' expected");
	    }
	    if (list != NULL) { 
		expr =  new dbExprNode(dbvmList, list, expr);
	    }
	}
	break;
      case tkn_not:
	pos = currPos;
	expr = comparison();
	if (expr->type == tpInteger) { 
	    if (expr->cop == dbvmLoadIntConstant) { 
		expr->ivalue = ~expr->ivalue;
	    } else {
		expr = new dbExprNode(dbvmNotInt, expr);
	    } 
	    return expr;
	} else if (expr->type == tpBoolean) { 
	    return new dbExprNode(dbvmNotBool, expr);
	} else { 
	    error("NOT operator can be applied only to "
		  "integer or boolean expressions", pos);
	}
	break;
      case tkn_add:
	error("Using of unary plus operator has no sence");
	break;
      case tkn_sub:
	pos = currPos;
	expr = term();
	if (expr->type == tpInteger) { 
	    if (expr->cop == dbvmLoadIntConstant) { 
		expr->ivalue = -expr->ivalue;
	    } else { 
		expr = new dbExprNode(dbvmNegInt, expr);
	    }
	    return expr;
	} else if (expr->type == tpReal) { 
	    if (expr->cop == dbvmLoadRealConstant) { 
		expr->fvalue = -expr->fvalue;
	    } else { 
		expr = new dbExprNode(dbvmNegReal, expr);
	    }
	    return expr;
	} else { 
	    error("Unary minus can be applied only to "
		  "integer or real expressions", pos);
	}
      default:
	error("operand expected");
    }
    lex = scan();
    return expr;
}

void dbCompiler::error(const char* msg, int pos) 
{ 
    if (pos < 0) { 
	if ((pos = currPos-1) < 0) { 
	    pos = 0;
	}
    } else if (pos < firstPos) { 
	pos = firstPos;
    }
    if (pos + offsetWithinStatement >= 0) { 
	pos += offsetWithinStatement;
    }
    table->db->handleError(dbDatabase::QueryError, msg, pos);
    longjmp(abortCompilation, dbDatabase::QueryError);
}

void dbCompiler::compileStartFollowPart(dbQuery& query)
{
    if (lex != tkn_start) {	
	return;
    }
    int pos = currPos;
    if (scan() != tkn_from) { 
	error("FROM expected after START", pos);
    }
    pos = currPos;
    switch (scan()) { 
      case tkn_first:
	query.startFrom = dbCompiledQuery::StartFromFirst; 
	break;
      case tkn_last:
	query.startFrom = dbCompiledQuery::StartFromLast; 
	break;
      case tkn_var:
	if (varType == dbQueryElement::qVarReference) { 
	    if (varRefTable != table) { 
		error("Incompatiable type of reference variable");
	    }
	    query.startFrom = dbCompiledQuery::StartFromRef; 
	} else if (varType == dbQueryElement::qVarArrayOfRef) {
	    if (varRefTable != table) { 
		error("Incompatiable type of array of reference variable");
	    }
	    query.startFrom = dbCompiledQuery::StartFromArray; 
	} else if (varType == dbQueryElement::qVarArrayOfRefPtr) {
	    if (varRefTable != table) { 
		error("Incompatiable type of array of reference variable");
	    }
	    query.startFrom = dbCompiledQuery::StartFromArrayPtr; 
	} else { 
	    error("Reference or array of reference variable expected");
	}
	query.root = varPtr;
	break;
      default:
	error("FIRST, LAST or reference varaible expected", pos); 
    }
    if ((lex = scan()) == tkn_follow) { 
	pos = currPos;
	if (scan() != tkn_by) { 
	    error("BY expected after FOLLOW", pos);
	}
	do { 
	    pos = currPos;
	    if (scan() != tkn_ident) { 
		error("Field name expected", pos);
	    }
	    dbFieldDescriptor* fd;
	    if ((fd = table->find(name)) == NULL) { 
		error("Field not found");
	    }
	    while (fd->type == dbField::tpStructure) { 
		pos = currPos;
		if (scan() != tkn_dot) { 
		    error("'.' expected", pos);
		}
		pos = currPos;
		if (scan() != tkn_ident) { 
		    error("Field name expected", pos);
		}
		if ((fd = fd->find(name)) == NULL) { 
		    error("Field not found");
		}
	    }
	    if (!(fd->type == dbField::tpReference 
		  && fd->refTable == table) &&
		!(fd->type == dbField::tpArray 
		  && fd->components->type == dbField::tpReference
		  && fd->components->refTable == table)) 
	    { 
		error("Follow field should be of compatibale reference "
		      "or array of reference type");
	    }
	    dbFollowByNode* node = new dbFollowByNode;
	    node->field = fd;
	    node->next = query.follow; // list should be inverted
	    query.follow = node;
	} while ((lex = scan()) == tkn_comma); 
    }	
}

void dbCompiler::compileOrderByPart(dbQuery& query)
{
    dbOrderByNode** opp = &query.order;
    if (lex == tkn_order) {	
	int pos = currPos;
	if (scan() != tkn_by) { 
	    error("BY expected after ORDER", pos);
	}
	int parentheses = 0;
	bool length = false;
	dbFieldDescriptor* fd;

	while (true) { 
	    pos = currPos;
	    switch (scan()) { 
	      case tkn_lpar:
		parentheses += 1;
		continue;
	      case tkn_rpar:
		if (--parentheses < 0) { 
		    error("Unbalanced parentheses ");
		}
		continue;
	      case tkn_length:
		length = true;
		continue;
	      case tkn_ident:		
		if ((fd = table->find(name)) == NULL) { 
		    error("Field not found", pos);
		}
		while (fd->type == dbField::tpStructure) { 
		    if (scan() != tkn_dot) { 
			error("'.' expected");
		    }
		    if (scan() != tkn_ident) { 
			error("field name expected", pos);
		    }
		    if ((fd = fd->find(name)) == NULL) { 
			error("Field not found", pos);
		    }
		}
		if (fd->type > dbField::tpReference) { 
		    if (fd->type != dbField::tpArray || !length) { 
		        error("Sort key should be of scalar or string type",
			      pos);
		    }
		} else if (length) { 
		    error("Length in ORDER BY part can be applied only to arrays", pos);
		}		  
		dbOrderByNode* node = new dbOrderByNode;
		node->field = fd;
		node->ascent = true;
		*opp = node;
		opp = &node->next;
		*opp = NULL;
		int tkn = scan();
		while (tkn == tkn_rpar) { 
		    if (--parentheses < 0) { 
			error("Unbalanced parentheses");
		    }
		    tkn = scan();
		}
		if (tkn == tkn_desc) { 
		    node->ascent = false;
		    tkn = scan();
		} else if (tkn == tkn_asc) { 
		    tkn = scan();
		}
		while (tkn == tkn_rpar) { 
		    if (--parentheses < 0) { 
			error("Unbalanced parentheses");
		    }
		    tkn = scan();
		}
		if (tkn == tkn_eof) { 
		    if (parentheses != 0) {
			error("Unbalanced parentheses");
		    }
		    return;
		} else if (tkn != tkn_comma) { 
		    error("',' expected");
		}
	    }
	}
    } else if (lex != tkn_eof) { 
	error("ORDER BY expected");
    }
}


bool dbCompiler::compile(dbTableDescriptor* table, dbQuery& query)
{
    TRACE_MSG(("Compile query for table %s\n", table->name));
    query.destroy(); 
    if (setjmp(abortCompilation) == 0) { 
	this->table = table;
	bindings = NULL;
	nFreeVars = 0;
	queryElement = query.elements;
	currPos = firstPos = 0;
	offsetWithinStatement = query.pos;
	dbExprNode* expr = disjunction(); 
	if (expr->type != tpBoolean && expr->type != tpVoid) { 
	    table->db->handleError(dbDatabase::QueryError, "Conditional "
				   "expression should have boolean type\n", 0);
	    delete expr;
	    return false;
	}
	compileStartFollowPart(query); 
	compileOrderByPart(query); 
	query.tree  = expr;
	query.table = table;
	return true;
    } else { 
	for (dbOrderByNode *op = query.order, *nop; op != NULL; op = nop) {
	    nop = op->next;
	    delete op;
	}
	for (dbFollowByNode *fp = query.follow, *nfp; fp != NULL; fp = nfp) {
	    nfp = fp->next;
	    delete fp;
	}
	return false;
    }
}

dbCompiler::dbCompiler() {
    static struct { 
	char* name;
	int   tag;
    } keywords[] = { 
	{"abs",     tkn_abs},
	{"and",     tkn_and},
	{"asc",     tkn_asc},
	{"between", tkn_between},
	{"by",      tkn_by},
	{"current", tkn_current},
	{"desc",    tkn_desc},
	{"escape",  tkn_escape},
	{"exists",  tkn_exists},
	{"first",   tkn_first},
	{"false",   tkn_false},
	{"follow",  tkn_follow},
	{"from",    tkn_from},
	{"in",      tkn_in},
	{"is",      tkn_is},
	{"integer", tkn_integer},
	{"last",    tkn_last},
	{"length",  tkn_length},
	{"like",    tkn_like},
	{"lower",   tkn_lower},
	{"not",     tkn_not},
	{"null",    tkn_null},
	{"or",      tkn_or},
	{"order",   tkn_order},
	{"real",    tkn_real},
	{"start",   tkn_start},
	{"string",  tkn_string},
	{"true",    tkn_true},
	{"upper",   tkn_upper},
	{"where",   tkn_where}
    };
    if (!initialized) { 
	for (unsigned i = 0; i < items(keywords); i++) { 
	    dbSymbolTable::add(keywords[i].name, keywords[i].tag, false);    
	}
	initialized = true;
    }
}

void dbInheritedAttribute::removeTemporaries()
{
    for (dbStringValue *next, *s = tempStrings; s != NULL; s = next) { 
	next = s->next;
	delete s;
    }
}

void dbTrace(char* message, ...) 
{
    va_list args;
    va_start (args, message);
    vfprintf(stderr, message, args);
    va_end(args);
}


