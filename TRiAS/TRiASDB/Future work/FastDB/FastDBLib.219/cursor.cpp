//-< CURSOR.CPP >----------------------------------------------------*--------*
// FastDB                    Version 1.0         (c) 1999  GARRET    *     ?  *
// (Main Memory Database Management System)                          *   /\|  *
//                                                                   *  /  \  *
//                          Created:     20-Nov-98    K.A. Knizhnik  * / [] \ *
//                          Last update: 21-Dec-98    K.A. Knizhnik  * GARRET *
//-------------------------------------------------------------------*--------*
// Table cursor
//-------------------------------------------------------------------*--------*

#include "fastdb.h"
#include "compiler.h"
#include <ctype.h>

inline void dbSelection::reset()
{
    for (segment *next, *seg = first; seg != NULL; seg = next) { 
	next = seg->next;
	delete seg;
    }
    first = last = curr = NULL;
    nRows = 0;
    pos = 0;
}

void dbSelection::reverse() 
{
    segment *next, *seg;
    for (seg = first; seg != NULL; seg = next) { 
	next = seg->next;
	seg->next = seg->prev;
	seg->prev = next;
	for (int l = 0, r = seg->nRows-1; l < r; l++, r--) { 
	    oid_t oid = seg->rows[l];
	    seg->rows[l] = seg->rows[r];
	    seg->rows[r] = oid;
	}
    }
    seg = first;
    first = last;
    last = seg;
}

int dbSelection::compare(dbRecord* a, dbRecord* b, dbOrderByNode* order)
{
    char* p = (char*)a;
    char* q = (char*)b;
    int diff = 0;
    do { 
	int offs = order->field->dbsOffs;
	switch (order->field->type) { 
	  case dbField::tpBool:
	    diff = *(bool*)(p + offs) - *(bool*)(q + offs);
	    break;
	  case dbField::tpInt1:
	    diff = *(int1*)(p + offs) - *(int1*)(q + offs);
	    break;
	  case dbField::tpInt2:
	    diff = *(int2*)(p + offs) - *(int2*)(q + offs);
	    break;
	  case dbField::tpInt4:
	  case dbField::tpArray:
	    diff = *(int4*)(p + offs) < *(int4*)(q + offs) ? -1 
		: *(int4*)(p + offs) == *(int4*)(q + offs) ? 0 : 1;
	    break;
	  case dbField::tpInt8:
	    diff = *(int8*)(p + offs) < *(int8*)(q + offs) ? -1 :
		*(int8*)(p + offs) == *(int8*)(q + offs) ? 0 : 1;
	    break;
	  case dbField::tpReference:
	    diff = *(oid_t*)(p + offs) < *(oid_t*)(q + offs) ? -1 :
		*(oid_t*)(p + offs) == *(oid_t*)(q + offs) ? 0 : 1;
	    break;
	  case dbField::tpReal4:
	    diff = *(real4*)(p + offs) < *(real4*)(q + offs) ? -1 :
		*(real4*)(p + offs) == *(real4*)(q + offs) ? 0 : 1;
	    break;
	  case dbField::tpReal8:
	    diff = *(real8*)(p + offs) < *(real8*)(q + offs) ? -1 :
		*(real8*)(p + offs) == *(real8*)(q + offs) ? 0 : 1;
	    break;
	  case dbField::tpString:
#ifdef USE_LOCALE_SETTINGS
	    diff = strcoll(p + ((dbVarying*)(p + offs))->offs, 
			   q + ((dbVarying*)(q + offs))->offs);
#else
	    diff = strcmp(p + ((dbVarying*)(p + offs))->offs, 
			  q + ((dbVarying*)(q + offs))->offs);
#endif
	    break;
	  default:
	    assert(false);
	}
	if (!order->ascent) { 
	    diff = -diff;
	}
    } while (diff == 0 && (order = order->next) != NULL);

    return diff;
}


#define ELEM(i)   index[(i-1)/quantum]->rows[(i-1)%quantum]
#define ROW(i)    db->getRow(ELEM(i))
#define SWAP(i,j) temp = ELEM(i), ELEM(i) = ELEM(j), ELEM(j) = temp

void dbSelection::sort(dbDatabase* db, dbOrderByNode* order)
{
    size_t i, j, k, n = nRows;
    oid_t temp;
    if (n <= 1) { 
	return;
    }
    TRACE_MSG(("Sort %d records\n", n));
    segment** index = new segment*[(n + quantum - 1) / quantum];
    segment* seg = first;
    for (i = 0; seg != NULL; seg = seg->next) { 
	index[i++] = seg;
    }
    for (i = n/2, j = i; i >= 1; i--) { 
	k = i;
	oid_t topId = ELEM(k);
	dbRecord* top = db->getRow(topId);
	do { 
	    if (k*2 == n || compare(ROW(k*2), ROW(k*2+1), order) > 0) { 
		if (compare(top, ROW(k*2), order) >= 0) {
		    break;
		}
		ELEM(k) = ELEM(k*2);
		k = k*2;
	    } else { 
		if (compare(top, ROW(k*2+1), order) >= 0) {
		    break;
		}
		ELEM(k) = ELEM(k*2+1);
		k = k*2+1;
	    }
	} while (k <= j);
	ELEM(k) = topId; 
    }
    for (i = n; i >= 2; i--) { 
	SWAP(1, i);
	oid_t topId = ELEM(1);
	dbRecord* top = db->getRow(topId);
	for (k = 1, j = (i-1)/2; k <= j;) { 
	    if (k*2 == i-1 || compare(ROW(k*2), ROW(k*2+1), order) > 0) { 
		if (compare(top, ROW(k*2), order) >= 0) {
		    break;
		}
		ELEM(k) = ELEM(k*2);
		k = k*2;
	    } else { 
		if (compare(top, ROW(k*2+1), order) >= 0) {
		    break;
		}
		ELEM(k) = ELEM(k*2+1);
		k = k*2+1;
	    }
	} 
	ELEM(k) = topId; 
    }
    delete[] index;
}


void dbAnyCursor::setCurrent(dbAnyReference const& ref) 
{ 
    assert(ref.oid != 0);
    reset();
    db->beginTransaction(type == dbCursorForUpdate);
    db->threadContext.get()->cursors.link(this);
    currId = ref.oid;
    if (prefetch) { 
	fetch();
    }
}


void dbAnyCursor::remove()
{
    assert(type == dbCursorForUpdate && currId != 0);
    if (allRecords) { 
	dbRecord* rec = db->getRow(currId);
	oid_t nextId = rec->next;
	oid_t prevId = rec->prev;
	db->remove(table, currId);
	if (nextId != 0) { 
	    if (currId == firstId) {
		firstId = currId = nextId;
	    } else { 
		currId = nextId;
	    }
	} else { 
	    if (currId == firstId) {
		firstId = lastId = currId = 0;
	    } else { 
		lastId = currId = prevId;
	    }
	}
    } else { 
	db->remove(table, currId);
	if (selection.curr != NULL) { 
	    if (--selection.curr->nRows == 0) { 
		dbSelection::segment* next = selection.curr->next;
		if (selection.curr->prev != NULL) { 
		    selection.curr->prev->next = next;
		} else { 
		    selection.first = next;
		}
		if (next != NULL) { 
		    next->prev = selection.curr->prev;
		    currId = next->rows[0];
		    delete selection.curr;
		    selection.curr = next;
		    selection.pos = 0;
		} else { 
		    selection.last = selection.curr->prev;
		    delete selection.curr;
		    if ((selection.curr = selection.last) != NULL) { 
			selection.pos = selection.curr->nRows-1;
			currId = selection.curr->rows[selection.pos];
		    } else { 
			currId = 0;
		    }
		}
	    } else { 
		if (selection.pos < selection.curr->nRows) { 
		    memcpy(selection.curr->rows + selection.pos, 
			   selection.curr->rows + selection.pos + 1, 
			   (selection.curr->nRows - selection.pos)
			    *sizeof(oid_t));
		} else { 
		    selection.pos -= 1;
		}
		currId = selection.curr->rows[selection.pos];
	    }    
	} else { 
	    currId = 0;
	}
    }
    if (currId != 0) {
	fetch();	
    }
}


void dbAnyCursor::removeAllSelected()
{
    assert(type == dbCursorForUpdate);
    if (allRecords) { 
	removeAll();
    } else if (selection.first != NULL) { 
        dbSelection::segment* curr;
	for (curr = selection.first; curr != NULL; curr = curr->next) { 
	    for (int i = 0, n = curr->nRows; i < n; i++) { 
		db->remove(table, curr->rows[i]);
	    }
	}
	reset();
    } else if (currId != 0) {	
	db->remove(table, currId);
	currId = 0;
    }
}


bool dbAnyCursor::gotoNext() 
{ 
    if (allRecords) { 
	if (currId != 0) { 
	    oid_t next = db->getRow(currId)->next;
	    if (next != 0) {
		currId = next;
		return true;
	    } 
	}
    } else if (selection.curr != NULL) { 
	if (++selection.pos == selection.curr->nRows) { 
	    if (selection.curr->next == NULL) { 
		selection.pos -= 1;
		return false;
	    }
	    selection.pos = 0;
	    selection.curr = selection.curr->next;
	}
	currId = selection.curr->rows[selection.pos];
	return true;
    }  
    return false;
}

bool dbAnyCursor::isLast() 
{ 
    if (allRecords) { 
	if (currId != 0) { 
	    return db->getRow(currId)->next == 0;
	}
    } else if (selection.curr != NULL) { 
	return selection.pos+1 == selection.curr->nRows
	    && selection.curr->next == NULL; 
    }  
    return false;
}


bool dbAnyCursor::isFirst() 
{ 
    if (allRecords) { 
	if (currId != 0) { 
	    return db->getRow(currId)->prev == 0;
	}
    } else if (selection.curr != NULL) { 
	return selection.pos == 0
	    && selection.curr->prev == NULL; 
    }  
    return false;
}

bool dbAnyCursor::gotoPrev()
{
    if (allRecords) { 
	if (currId != 0) { 
	    oid_t prev = db->getRow(currId)->prev;
	    if (prev != 0) {
		currId = prev;
		return true;
	    }
	}
    } else if (selection.curr != NULL) { 
	if (selection.pos == 0) { 
	    if (selection.curr->prev == NULL) { 
		return false;
	    }
	    selection.curr = selection.curr->prev;
	    selection.pos = selection.curr->nRows;
	} 
	currId = selection.curr->rows[--selection.pos];
	return true;
    } 
    return false;
}


bool dbAnyCursor::gotoFirst()
{
    if (allRecords) { 
	currId = firstId;
	return (currId != 0);
    } else { 
	selection.curr = selection.first;
	selection.pos = 0;
	if (selection.curr == NULL) { 
	    return (currId != 0);
	} else { 
	    currId = selection.curr->rows[0];
	    return true;
	}
    }
}

bool dbAnyCursor::gotoLast()
{
    if (allRecords) { 
	currId = lastId;
	return (currId != 0);
    } else { 
	selection.curr = selection.last;
	if (selection.curr == NULL) { 
	    return (currId != 0);
	} else { 
	    selection.pos = selection.curr->nRows-1;
	    currId = selection.curr->rows[selection.pos];
	    return true;
	}
    }
}

void dbAnyCursor::reset()
{
    if (db == NULL) {
	db = table->db;
	assert(((void)"cursor associated with online database table",
		table->tableId != 0));
    } else if (table->db != db) {
	table = db->lookupTable(table);
    }
    unlink();
    selection.reset();
    eliminateDuplicates = false;
    allRecords = false;
    currId = 0;
}

void dbAnyCursor::freeze()
{
    unlink();    
}

void dbAnyCursor::unfreeze()
{
    db->beginTransaction(type == dbCursorForUpdate);
    db->threadContext.get()->cursors.link(this);
    if (currId != 0) {
	fetch();
    }
}

dbAnyCursor::~dbAnyCursor() 
{ 
    selection.reset();
    delete[] bitmap;
}




void dbParallelQueryContext::search(int i)
{
    int nThreads = db->parThreads;
    oid_t oid = firstRow;
    int j;
    for (j = i; --j >= 0;) { 
	oid = db->getRow(oid)->next;
    }
    while (oid != 0) { 
	if (db->evaluate(query->tree, oid, table)) { 
	    selection[i].add(oid);
	}
	oid = db->getRow(oid)->next;
	for (j = nThreads; --j > 0 && oid != 0;) { 
	    oid = db->getRow(oid)->next;
	}
    }
    if (query->order != NULL) { 
	selection[i].sort(db, query->order);
    }
}


char* strupper(char* s)
{
    byte* p = (byte*)s;
    while (*p != '\0') { 
	*p = toupper(*p);
	p += 1;
    }
    return s;
}


char* strlower(char* s)
{
    byte* p = (byte*)s;
    while (*p != '\0') { 
	*p = (byte)tolower(*p);
	p += 1;
    }
    return s;
}






