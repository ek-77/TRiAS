//-< SERVER.CPP >----------------------------------------------------*--------*
// GigaBASE                  Version 1.0         (c) 1999  GARRET    *     ?  *
// (Post Relational Database Management System)                      *   /\|  *
//                                                                   *  /  \  *
//                          Created:     13-Jan-2000 K.A. Knizhnik   * / [] \ *
//                          Last update: 13-Jan-2000 K.A. Knizhnik   * GARRET *
//-------------------------------------------------------------------*--------*
// CLI multithreaded server implementation
//-------------------------------------------------------------------*--------*

#include <ctype.h>
#include "gigabase.h"
#include "compiler.h"
#include "subsql.h"
#include "symtab.h"
#include "hashtab.h"
#include "btree.h"
#include "cli.h"
#include "cliproto.h"
#include "server.h"

#if !defined(_WIN32) && !defined(PTHREADS)
#error Server requires multithreading support
#endif

bool dbQueryScanner::initialized; 

int dbColumnBinding::unpackArray(char* dst, size_t offs)
{
    int len = this->len;
    int i;
    if (cliType >= cli_array_of_oid) { 
	switch (sizeof_type[cliType - cli_array_of_oid]) { 
	  case 1:
	    memcpy(dst + offs, ptr + 4, len);
	    break;
	  case 2:
	    for (i = 0; i < len; i++) {
		unpack2(dst + offs + i*2, ptr + 4 + i*2);
	    }
	    break;
	  case 4:
	    for (i = 0; i < len; i++) {
		unpack4(dst + offs + i*4, ptr + 4 + i*4);
	    }
	    break;
	  case 8:
	    for (i = 0; i < len; i++) {
		unpack8(dst + offs + i*8, ptr + 4 + i*8);
	    }
	    break;
	  default:
	    assert(false);
	}
    } else { // string
	memcpy(dst + offs, ptr + 4, len);
    }
    return len;
}

void dbColumnBinding::unpackScalar(char* dst)
{
    switch (fd->type) { 
      case dbField::tpBool:
      case dbField::tpInt1:
	switch (sizeof_type[cliType]) { 
	  case 1:
	    *(dst + fd->dbsOffs) = *ptr;
	    break;
	  case 2:
	    *(dst + fd->dbsOffs) = (char)unpack2(ptr);
	    break;
	  case 4:
	    *(dst + fd->dbsOffs) = (char)unpack4(ptr);
	    break;
	  case 8:
	    *(dst + fd->dbsOffs) = (char)unpack8(ptr);
	    break;
	  default:
	    assert(false);
	}
	break;		
      case dbField::tpInt2:
	switch (sizeof_type[cliType]) { 
	  case 1:
	    *(int2*)(dst+fd->dbsOffs) = *ptr;
	    break;
	  case 2:
	    unpack2(dst+fd->dbsOffs, ptr);
	    break;
	  case 4:
	    *(int2*)(dst+fd->dbsOffs) = (int2)unpack4(ptr);
	    break;
	  case 8:
	    *(int2*)(dst+fd->dbsOffs) = (int2)unpack8(ptr);
	    break;
	  default:
	    assert(false);
	}
	break;		
      case dbField::tpInt4:
	switch (sizeof_type[cliType]) { 
	  case 1:
	    *(int4*)(dst+fd->dbsOffs) = *ptr;
	    break;
	  case 2:
	    *(int4*)(dst+fd->dbsOffs) = unpack2(ptr);
	    break;
	  case 4:
	    unpack4(dst+fd->dbsOffs, ptr);
	    break;
	  case 8:
	    *(int4*)(dst+fd->dbsOffs) = (int4)unpack8(ptr);
	    break;
	  default:
	    assert(false);
	}
	break;		
      case dbField::tpInt8:
	switch (sizeof_type[cliType]) { 
	  case 1:
	    *(int8*)(dst+fd->dbsOffs) = *ptr;
	    break;
	  case 2:
	    *(int8*)(dst+fd->dbsOffs) = unpack2(ptr);
	    break;
	  case 4:
	    *(int8*)(dst+fd->dbsOffs) = unpack4(ptr);
	    break;
	  case 8:
	    unpack8(dst+fd->dbsOffs, ptr);
	    break;
	  default:
	    assert(false);
	}
	break;		
      case dbField::tpReal4:
	switch (cliType) { 
	  case cli_real4:
	    unpack4(dst+fd->dbsOffs, ptr);
	    break;
	  case cli_real8:
	    {
		real8 temp;
		unpack8((char*)&temp, ptr);
		*(real4*)(dst + fd->dbsOffs) = (real4)temp;
	    }
	    break;
	  default:
	    assert(false);
	}
	break;
      case dbField::tpReal8:
	switch (cliType) { 
	  case cli_real4:
	    {
		real4 temp;
		unpack4((char*)&temp, ptr);
		*(real8*)(dst + fd->dbsOffs) = temp;
	    }
	    break;
	  case cli_real8:
	    unpack8(dst+fd->dbsOffs, ptr);
	    break;
	  default:
	    assert(false);
	}
	break;
      default:
	assert(false);
    }
}

void dbStatement::reset()
{
    dbColumnBinding *cb, *next;
    for (cb = columns; cb != NULL; cb = next) { 
	next = cb->next;
	delete cb;
    }
    columns = NULL;
    delete[] params;
    params = NULL;
    delete cursor;
    cursor = NULL;
    query.reset();
    table = NULL;
}

dbQueryScanner::dbQueryScanner() { 
    buf = new char[buf_size = 1024];
    if (!initialized) { 
	initialized = true;
	static struct { 
	    char* name;
	    int   tag;
	} keywords[] = { 
	    {"insert",  tkn_insert},
	    {"into",    tkn_into},
	    {"select",  tkn_select},
	    {"table",   tkn_table}
	};
	for (int i = items(keywords); --i >= 0;) { 
	    dbSymbolTable::add(keywords[i].name, keywords[i].tag, false);    
	}
    } 
}

int dbQueryScanner::get()
{
    int i = 0, ch, digits;
    
    do { 
	if ((ch = *p++) == '\0') { 
	    return tkn_eof;
	}
    } while (isspace(ch));
    
    if (ch == '*') { 
	return tkn_all;
    } else if (isdigit(ch) || ch == '+' || ch == '-') { 
	do { 
	    buf[i++] = ch;
	    if (i == buf_size) { 
	        // Numeric constant too long
		return tkn_error;
	    }
	    ch = *p++;
	} while (ch != '\0' 
		 && (isdigit(ch) || ch == '+' || ch == '-' || ch == 'e' || 
		     ch == 'E' || ch == '.'));
	p -= 1;
	buf[i] = '\0';
	if (sscanf(buf, INT8_FORMAT "%n", &ival, &digits) != 1) { 
	    // Bad integer constant
	    return tkn_error;
	}
	if (digits != i) { 
	    if (sscanf(buf, "%lf%n", &fval, &digits) != 1 || digits != i) {
		// Bad float constant
		return tkn_error;
	    }
	    return tkn_fconst;
	} 
	return tkn_iconst;
    } else if (isalpha(ch) || ch == '$' || ch == '_') { 
	do { 
	    buf[i++] = ch;
	    if (i == buf_size) { 
		// Identifier too long
		return tkn_error;
	    }
	    ch = *p++;
	} while (ch != EOF && (isalnum(ch) || ch == '$' || ch == '_'));
	p -= 1;
	buf[i] = '\0';
	ident = buf;
	return dbSymbolTable::add(ident, tkn_ident);
    } else { 
	// Invalid symbol
	return tkn_error;
    }
}

dbServer* dbServer::chain;

inline dbStatement* dbServer::findStatement(dbSession* session, int stmt_id)
{
    for (dbStatement* stmt = session->stmts; stmt != NULL; stmt = stmt->next)
    {
	if (stmt->id == stmt_id) { 
	    return stmt;
	}
    }
    return NULL;
}

void thread_proc dbServer::serverThread(void* arg)
{
    ((dbServer*)arg)->serveClient();
}

void thread_proc dbServer::acceptLocalThread(void* arg)
{
    dbServer* server = (dbServer*)arg;
    server->acceptConnection(server->localAcceptSock);
}

void thread_proc dbServer::acceptGlobalThread(void* arg)
{
    dbServer* server = (dbServer*)arg;
    server->acceptConnection(server->globalAcceptSock);
}

dbServer::dbServer(dbDatabase* db,
		   char const* serverURL, 
		   int optimalNumberOfThreads, 
		   int connectionQueueLen)
{
    char buf[256];
    next = chain;
    chain = this;
    this->db = db;
    this->optimalNumberOfThreads = optimalNumberOfThreads;
    this->URL = new char[strlen(serverURL)+1];
    strcpy(URL, serverURL);
    globalAcceptSock = 
	socket_t::create_global(serverURL, connectionQueueLen);
    if (!globalAcceptSock->is_ok()) { 
	globalAcceptSock->get_error_text(buf, sizeof buf);
	dbTrace("Failed to create global socket: %s\n", buf);
	delete globalAcceptSock;
	globalAcceptSock = NULL;
    }
    localAcceptSock = 
	socket_t::create_local(serverURL, connectionQueueLen);
    if (!localAcceptSock->is_ok()) { 
	localAcceptSock->get_error_text(buf, sizeof buf);
	dbTrace("Failed to create local socket: %s\n", buf);
	delete localAcceptSock;
	localAcceptSock = NULL;
    }
    freeList = activeList = waitList = NULL;
}
   
dbServer* dbServer::find(char const* URL)
{
    for (dbServer* server = chain; server != NULL; server = server->next) { 
	if (strcmp(URL, server->URL) == 0) { 
	    return server;
	}
    }
    return NULL;
}

void dbServer::cleanup()
{
    dbServer *server, *next;
    for (server = chain; server != NULL; server = next) { 
	next = server->next;
	delete server;
    } 
}

void dbServer::start()
{
    nActiveThreads = nIdleThreads = 0;    
    cancelWait = cancelSession = cancelAccept = false;
    go.open();
    done.open();
    if (globalAcceptSock != NULL) { 
	globalAcceptThread.create(acceptGlobalThread, this);
    }
    if (localAcceptSock != NULL) { 
	localAcceptThread.create(acceptLocalThread, this);
    }
}

void dbServer::stop()
{
    cancelAccept = true;
    if (globalAcceptSock != NULL) {
	globalAcceptSock->cancel_accept();
	globalAcceptThread.join();
    }
    delete globalAcceptSock;
    globalAcceptSock = NULL;

    if (localAcceptSock != NULL) { 
	localAcceptSock->cancel_accept();
	localAcceptThread.join();
    }
    delete localAcceptSock;
    localAcceptSock = NULL;

    dbCriticalSection cs(mutex);
    cancelSession = true;
    while (activeList != NULL) { 
	activeList->sock->shutdown();
	done.wait(mutex);
    }

    cancelWait = true;
    while (nIdleThreads != 0) { 
	go.signal();
	done.wait(mutex);
    }

    while (waitList != NULL) {
	dbSession* next = waitList->next;
	delete waitList->sock;
	waitList->next = freeList;
	freeList = waitList;
	waitList = next;
    }
    assert(nActiveThreads == 0);
    done.close();
    go.close();
}

bool dbServer::get_first(dbSession* session, int stmt_id)
{
    dbStatement* stmt = findStatement(session, stmt_id);
    int4 response;
    if (stmt == NULL || stmt->cursor == NULL) { 
	response = cli_bad_descriptor;
    } else if (!stmt->cursor->gotoFirst()) { 
	response = cli_not_found;
    } else { 
	return fetch(session, stmt);
    }
    pack4(response);
    return session->sock->write(&response, sizeof response);
}

bool dbServer::get_last(dbSession* session, int stmt_id)
{
    dbStatement* stmt = findStatement(session, stmt_id);
    int4 response;
    if (stmt == NULL || stmt->cursor == NULL) { 
	response = cli_bad_descriptor;
    } else if (!stmt->cursor->gotoLast()) { 
	response = cli_not_found;
    } else { 
	return fetch(session, stmt);
    }
    pack4(response);
    return session->sock->write(&response, sizeof response);
}

bool dbServer::get_next(dbSession* session, int stmt_id)
{
    dbStatement* stmt = findStatement(session, stmt_id);
    int4 response;
    if (stmt == NULL || stmt->cursor == NULL) { 
	response = cli_bad_descriptor;
    } 
    else if (!((stmt->firstFetch && stmt->cursor->gotoFirst()) ||
	       (!stmt->firstFetch && stmt->cursor->gotoNext()))) 
    { 
	response = cli_not_found;
    } else { 
	return fetch(session, stmt);
    }
    pack4(response);
    return session->sock->write(&response, sizeof response);
}

bool dbServer::get_prev(dbSession* session, int stmt_id)
{
    dbStatement* stmt = findStatement(session, stmt_id);
    int4 response;
    if (stmt == NULL || stmt->cursor == NULL) { 
	response = cli_bad_descriptor;
    } 
    else if (!((stmt->firstFetch && stmt->cursor->gotoLast()) ||
	       (!stmt->firstFetch && stmt->cursor->gotoPrev()))) 
    { 
	response = cli_not_found;
    } else { 
	return fetch(session, stmt);
    }
    pack4(response);
    return session->sock->write(&response, sizeof response);
}


bool dbServer::fetch(dbSession* session, dbStatement* stmt)
{
    int4 response;
    dbColumnBinding* cb;
    
    stmt->firstFetch = false;
    if (stmt->cursor->isEmpty()) { 
	response = cli_not_found;
	pack4(response);
	return session->sock->write(&response, sizeof response);
    }
    int msg_size = sizeof(cli_oid_t) + 4;
    dbGetTie tie;
    char* data = (char*)db->getRow(tie, stmt->cursor->currId);
    for (cb = stmt->columns; cb != NULL; cb = cb->next) { 
	if (cb->cliType >= cli_array_of_oid) { 
	    msg_size += 4 + ((dbVarying*)(data + cb->fd->dbsOffs))->size
		            * sizeof_type[cb->cliType - cli_array_of_oid];
	} else if (cb->cliType >= cli_asciiz) { 
	    msg_size += 4 + ((dbVarying*)(data + cb->fd->dbsOffs))->size;
	} else { 
	    msg_size += sizeof_type[cb->cliType];
	}
    }
    if (stmt->buf_size < msg_size) { 
	delete[] stmt->buf;
	stmt->buf = new char[msg_size];
	stmt->buf_size = msg_size;
    }
    char* p = stmt->buf;
    p = pack4(p, msg_size);
    p = pack_oid(p, stmt->cursor->currId);

    for (cb = stmt->columns; cb != NULL; cb = cb->next) { 
	char* src = data + cb->fd->dbsOffs;
	switch (cb->fd->type) { 
	  case dbField::tpBool:
	  case dbField::tpInt1:
	    switch (sizeof_type[cb->cliType]) { 
	      case 1:
		*p++ = *src;
		break;
	      case 2:
		p = pack2(p, (int2)*(char*)src);
		break;
	      case 4:
		p = pack4(p, (int4)*(char*)src);
		break;
	      case 8:
		p = pack8(p, (int8)*(char*)src);
		break;
	      default:
		assert(false);
	    }
	    break;		
	  case dbField::tpInt2:
	    switch (sizeof_type[cb->cliType]) { 
	      case 1:
		*p++ = (char)*(int2*)src;
		break;
	      case 2:
		p = pack2(p, src);
		break;
	      case 4:
		p = pack4(p, (int4)*(int2*)src);
		break;
	      case 8:
		p = pack8(p, (int8)*(int2*)src);
		break;
	      default:
		assert(false);
	    }
	    break;
	  case dbField::tpInt4:
	    switch (sizeof_type[cb->cliType]) { 
	      case 1:
		*p++ = (char)*(int4*)src;
		break;
	      case 2:
		p = pack2(p, (int2)*(int4*)src);
		break;
	      case 4:
		p = pack4(p, src);
		break;
	      case 8:
		p = pack8(p, (int8)*(int4*)src);
		break;
	      default:
		assert(false);
	    }
	    break;
	  case dbField::tpInt8:
	    switch (sizeof_type[cb->cliType]) { 
	      case 1:
		*p++ = (char)*(int8*)src;
		break;
	      case 2:
		p = pack2(p, (int2)*(int8*)src);
		break;
	      case 4:
		p = pack4(p, (int4)*(int8*)src);
		break;
	      case 8:
		p = pack8(p, src);
		break;
	      default:
		assert(false);
	    }
	    break;
	  case dbField::tpReal4:
	    switch (cb->cliType) { 
	      case cli_real4:
		p = pack4(p, src);
		break;
	      case cli_real8:
		{
		    real8 temp = *(real4*)src;
		    p = pack8(p, (char*)&temp);
		}
		break;
	      default:
		assert(false);
	    }
	    break;
	  case dbField::tpReal8:
	    switch (cb->cliType) { 
	      case cli_real4:
		{
		    real4 temp = (real4)*(real8*)src;
		    p = pack4(p, (char*)&temp);
		}
		break;
	      case cli_real8:
		p = pack8(p, src);
		break;
	      default:
		assert(false);
	    }
	    break;
	  case dbField::tpString:
	    {
		dbVarying* v = (dbVarying*)src;
		p = pack4(p, v->size);
		memcpy(p, data + v->offs, v->size);
		p += v->size;
	    }
	    break;
	  case dbField::tpReference:
	    p = pack_oid(p, *(oid_t*)src);
	    break;
	  case dbField::tpArray:
	    {
		dbVarying* v = (dbVarying*)src;
		int n = v->size;
		p = pack4(p, n);
		src = data + v->offs;
		switch (sizeof_type[cb->cliType-cli_array_of_oid]) { 
		  case 2:
		    while (--n >= 0) { 
			p = pack2(p, src);
			src += 2;
		    }
		    break;
		  case 4:
		    while (--n >= 0) { 
			p = pack4(p, src);
			src += 4;
		    }
		    break;
		  case 8:
		    while (--n >= 0) { 
			p = pack8(p, src);
			src += 8;
		    }
		    break;
		  default:
		    memcpy(p, src, n);
		    p += n;
		}
		break;
	    }
	  default:
	    assert(false);
	}
    }
    assert(p - stmt->buf == msg_size);
    return session->sock->write(stmt->buf, msg_size);
}
    
bool dbServer::remove(dbSession* session, int stmt_id)
{
    dbStatement* stmt = findStatement(session, stmt_id);
    int4 response;
    if (stmt == NULL) { 
	response = cli_bad_descriptor;
    } else { 
	if (stmt->cursor->isEmpty()) { 
	    response = cli_not_found;
	} else { 
	    stmt->cursor->removeAll();
	    response = cli_ok;
	}
    }
    pack4(response);
    return session->sock->write(&response, sizeof response);
}

bool dbServer::update(dbSession* session, int stmt_id, char* new_data)
{
    dbStatement* stmt = findStatement(session, stmt_id);
    dbColumnBinding* cb;
    int4 response;
    if (stmt == NULL) { 
	response = cli_bad_descriptor;
	pack4(response);
	return session->sock->write(&response, sizeof response);
    }
    if (stmt->cursor->isEmpty()) { 
	response = cli_not_found;
	pack4(response);
	return session->sock->write(&response, sizeof response);
    }
    char* old_data = stmt->buf + sizeof(cli_oid_t) + 4;
    for (cb = stmt->columns; cb != NULL; cb = cb->next) { 
	cb->ptr = new_data;
	if (cb->cliType >= cli_asciiz) { 
	    int new_len = unpack4(new_data);
	    int old_len = unpack4(old_data);
	    cb->len = new_len;
	    if (cb->fd->indexType & (HASHED|INDEXED) 
		&& memcmp(new_data, old_data, new_len+4) != 0)
	    {
		cb->fd->attr |= dbFieldDescriptor::Updated;
	    }
	    if (cb->cliType >= cli_array_of_oid) { 
		new_len *= sizeof_type[cb->cliType - cli_array_of_oid];
		old_len *= sizeof_type[cb->cliType - cli_array_of_oid];
	    }
	    new_data += 4 + new_len;
	    old_data += 4 + old_len;
	} else { 
	    int size = sizeof_type[cb->cliType];
	    if (cb->fd->indexType & (HASHED|INDEXED) 
		&& memcmp(new_data, old_data, size) != 0)
	    {
		cb->fd->attr |= dbFieldDescriptor::Updated;
	    }	    
	    new_data += size;
	    old_data += size;
	}
    }
    dbGetTie tie;
    dbRecord* rec = db->getRow(tie, stmt->cursor->currId);
    dbTableDescriptor* table = stmt->query.table;
    dbFieldDescriptor *first = table->columns, *fd = first;
    size_t offs = table->fixedSize;
    do { 
	if (fd->type == dbField::tpArray || fd->type == dbField::tpString) 
	{ 
	    int len = ((dbVarying*)((char*)rec + fd->dbsOffs))->size;
	    for (cb = stmt->columns; cb != NULL; cb = cb->next) { 
		if (cb->fd == fd) { 
		    len = cb->len;
		    break;
		}
	    }
	    offs = DOALIGN(offs, fd->components->alignment)
		+ len*fd->components->dbsSize;
	}
    } while ((fd = fd->next) != first);

    old_data = new char[rec->size];
    memcpy(old_data, rec, rec->size);

    for (cb = stmt->columns; cb != NULL; cb = cb->next) { 
	if (cb->fd->attr & dbFieldDescriptor::Updated) {	    
	    if (cb->fd->indexType & INDEXED) { 
		dbBtree::remove(db, cb->fd->bTree, stmt->cursor->currId, 
				cb->fd->dbsOffs);
	    }
	}
    }
    
    db->modified = true;
    dbPutTie putTie;
    new_data = (char*)db->putRow(putTie, stmt->cursor->currId, offs);    

    fd = first;
    offs = table->fixedSize;
    do { 
	if (fd->type == dbField::tpArray|| fd->type == dbField::tpString) 
	{ 
	    int len = ((dbVarying*)(old_data + fd->dbsOffs))->size;
	    offs = DOALIGN(offs, fd->components->alignment);
	    for (cb = stmt->columns; cb != NULL; cb = cb->next) { 
		if (cb->fd == fd) { 
		    len = cb->unpackArray(new_data, offs);
		    break;
		}
	    }
	    if (cb == NULL) { 
		memcpy(new_data + offs, 
		       old_data + ((dbVarying*)(old_data + fd->dbsOffs))->offs,
		       len*fd->components->dbsSize);
	    }
	    ((dbVarying*)(new_data + fd->dbsOffs))->size = len;
	    ((dbVarying*)(new_data + fd->dbsOffs))->offs = offs;
	    offs += len*fd->components->dbsSize;
	} else { 
	    
	    for (cb = stmt->columns; cb != NULL; cb = cb->next) { 
		if (cb->fd == fd) { 
		    cb->unpackScalar(new_data);
		    break;
		}
	    }
	    if (cb == NULL) { 
		memcpy(new_data + fd->dbsOffs, old_data + fd->dbsOffs, 
		       fd->dbsSize);
	    }
	}
    } while ((fd = fd->next) != first);

    delete[] old_data;

    for (cb = stmt->columns; cb != NULL; cb = cb->next) { 
	if (cb->fd->attr & dbFieldDescriptor::Updated) {	    
	    cb->fd->attr &= ~dbFieldDescriptor::Updated;
	    if (cb->fd->indexType & INDEXED) { 
		dbBtree::insert(db, cb->fd->bTree, stmt->cursor->currId, 
				cb->fd->dbsOffs);
	    }
	}
    }
    response = cli_ok;
    pack4(response);
    return session->sock->write(&response, sizeof response);
}    


	    
char* dbServer::checkColumns(dbStatement* stmt, int n_columns, 
			     dbTableDescriptor* desc, char* data, 
			     int4& response)
{
    dbColumnBinding** cpp = &stmt->columns;
    response = cli_ok;
    while (--n_columns >= 0) {
	int cliType = *data++;
	char* columnName = data;
	dbSymbolTable::add(columnName, tkn_ident, true);    
	dbFieldDescriptor* fd = desc->find(columnName);
	data += strlen(data) + 1;
	if (fd != NULL) { 
	    if ((cliType == cli_oid 
		 && fd->type == dbField::tpReference)
		|| (cliType >= cli_bool && cliType <= cli_int8
		    && fd->type >= dbField::tpBool 
		    && fd->type <= dbField::tpInt8)
		|| (cliType >= cli_real4 && cliType <= cli_real8 
		    && fd->type >= dbField::tpReal4
		    && fd->type <= dbField::tpReal8)
		|| ((cliType == cli_asciiz || cliType == cli_pasciiz) 
		    && fd->type == dbField::tpString)
		|| (cliType == cli_array_of_oid && 
		    fd->type == dbField::tpArray && 
		    fd->components->type == dbField::tpReference)
		|| (cliType >= cli_array_of_bool
		    && fd->type  == dbField::tpArray
		    && cliType-cli_array_of_bool 
		    == fd->components->type-dbField::tpBool))
	    {
		dbColumnBinding* cb = new dbColumnBinding(fd, cliType);
		*cpp = cb;
		cpp = &cb->next;
	    } else { 
		response = cli_incompatible_type;
		break;
	    }
	} else { 
	    TRACE_MSG(("Field '%s' not found\n", columnName));
	    response = cli_column_not_found;
	    break;
	}
    }
    return data;
}


bool dbServer::insert(dbSession* session, int stmt_id, char* data, bool prepare)
{
    dbStatement* stmt = findStatement(session, stmt_id);
    dbTableDescriptor* desc;
    dbColumnBinding* cb;
    int4   response;
    char   reply_buf[sizeof(cli_oid_t) + 4];
    char*  dst;
    oid_t  oid = 0;
    size_t offs;
    int    n_columns;
    dbPutTie tie;

    if (stmt == NULL) { 
	if (!prepare) { 
	    response = cli_bad_statement;
	    goto return_response;
	}
	stmt = new dbStatement(stmt_id);
	stmt->next = session->stmts;
	session->stmts = stmt;
    } else {
	if (prepare) { 
	    stmt->reset();
	} else if ((desc = stmt->table) == NULL) {
	    response = cli_bad_descriptor;
	    goto return_response;
	}
    }
    if (prepare) { 
	session->scanner.reset(data);
	if (session->scanner.get() != tkn_insert 
	    || session->scanner.get() != tkn_into
	    || session->scanner.get() != tkn_ident) 
	{
	    response = cli_bad_statement;
	    goto return_response;
	}
	desc = db->findTable(session->scanner.ident);
	if (desc == NULL) { 	
	    response = cli_table_not_found;
	    goto return_response;
	}
	data += strlen(data)+1;
	n_columns = *data++;
	data = checkColumns(stmt, n_columns, desc, data, response);
	if (response != cli_ok) { 
	    goto return_response;
	}
	stmt->table = desc;
    }
 
    offs = desc->fixedSize;
    for (cb = stmt->columns; cb != NULL; cb = cb->next) { 
	cb->ptr = data;
	if (cb->cliType >= cli_asciiz) { 
	    cb->len = unpack4(data);
	    data += 4 + cb->len*cb->fd->components->dbsSize;
	    offs = DOALIGN(offs, cb->fd->components->alignment)
		 + cb->len*cb->fd->components->dbsSize;
	} else { 
	    data += sizeof_type[cb->cliType];
	}
    }
    db->beginTransaction(true);
    db->modified = true;
    oid = db->allocateRow(desc->tableId, offs, stmt->table);

    dst = (char*)db->putRow(tie, oid);    
    
    offs = desc->fixedSize;
    for (cb = stmt->columns; cb != NULL; cb = cb->next) { 
	dbFieldDescriptor* fd = cb->fd;
	if (fd->type == dbField::tpArray || fd->type == dbField::tpString) {
	    offs = DOALIGN(offs, fd->components->alignment);
	    ((dbVarying*)(dst + fd->dbsOffs))->offs = offs;
	    ((dbVarying*)(dst + fd->dbsOffs))->size = cb->len;
	    offs += cb->unpackArray(dst, offs)*fd->components->dbsSize;
	} else { 
	    cb->unpackScalar(dst);
	}
    }
    for (cb = stmt->columns; cb != NULL; cb = cb->next) { 
	if (cb->fd->indexType & INDEXED) { 
	    dbBtree::insert(db, cb->fd->bTree, oid, cb->fd->dbsOffs);
	}
    }
    response = cli_ok;
  return_response:
    pack4(reply_buf, response);
    pack_oid(reply_buf+4, oid);
    return session->sock->write(reply_buf, sizeof reply_buf);
}    



bool dbServer::select(dbSession* session, int stmt_id, char* msg, bool prepare)
{
    int4 response;
    int i, n_params, tkn, n_columns;
    dbStatement* stmt = findStatement(session, stmt_id);
    dbCursorType cursorType;
    dbTableDescriptor* desc;

    if (prepare) { 
	if (stmt == NULL) { 
	    stmt = new dbStatement(stmt_id);
	    stmt->next = session->stmts;
	    session->stmts = stmt;
	} else { 
	    stmt->reset();
	}
	stmt->n_params = *msg++;
	stmt->n_columns = n_columns = *msg++;
	stmt->params = new dbParameterBinding[stmt->n_params];
	stmt->firstFetch = true;
	int len = unpack2(msg);
	msg += 2;
	session->scanner.reset(msg);
	char *p, *end = msg + len;
	if (session->scanner.get() != tkn_select) { 
	    response = cli_bad_statement;
	    goto return_response;
	}
	if ((tkn = session->scanner.get()) == tkn_all) { 
	    tkn = session->scanner.get();
	}
	if (tkn == tkn_from && session->scanner.get() == tkn_ident) { 
	    if ((desc = db->findTable(session->scanner.ident)) != NULL) { 
		msg = checkColumns(stmt, n_columns, desc, end, response);
		if (response != cli_ok) {
		    goto return_response;
		}
		stmt->cursor = new dbAnyCursor(*desc, dbCursorViewOnly, NULL);
		stmt->cursor->setPrefetchMode(false);
	    } else { 
		response = cli_table_not_found;
		goto return_response;
	    }		
	} else { 
	    response = cli_bad_statement;
	    goto return_response;
	}
	p = session->scanner.p;
	for (i = 0; p < end; i++) { 
	    stmt->query.append(dbQueryElement::qExpression, p);
	    p += strlen(p) + 1;
	    if (p < end) { 
		int cliType = *p++;
		static const dbQueryElement::ElementType type_map[] = { 
		    dbQueryElement::qVarReference, // cli_oid
		    dbQueryElement::qVarBool,      // cli_bool
		    dbQueryElement::qVarInt1,      // cli_int1 
		    dbQueryElement::qVarInt2,      // cli_int2
		    dbQueryElement::qVarInt4,      // cli_int4
		    dbQueryElement::qVarInt8,      // cli_int8
		    dbQueryElement::qVarReal4,     // cli_real4
		    dbQueryElement::qVarReal8,     // cli_real8
		    dbQueryElement::qVarStringPtr, // cli_asciiz
		    dbQueryElement::qVarStringPtr, // cli_pasciiz
		};
		stmt->params[i].type = cliType;
		stmt->query.append(type_map[cliType], &stmt->params[i].u);
	    }
	}
    } else { 
	if (stmt == NULL) { 
	    response = cli_bad_descriptor;
	    goto return_response;
	}
    }
    cursorType = *msg++ ? dbCursorForUpdate : dbCursorViewOnly;
    for (i = 0, n_params = stmt->n_params; i < n_params; i++) { 
	switch (stmt->params[i].type) { 
	  case cli_oid:
	    stmt->params[i].u.oid = unpack_oid(msg);
	    msg += sizeof(cli_oid_t);
	    break;
	  case cli_int1:
	    stmt->params[i].u.i1 = *msg++;
	    break;
	  case cli_int2:
	    msg = unpack2((char*)&stmt->params[i].u.i2, msg);
	    break;
	  case cli_int4:
	    msg = unpack4((char*)&stmt->params[i].u.i4, msg);
	    break;
	  case cli_int8:
	    msg = unpack8((char*)&stmt->params[i].u.i8, msg);
	    break;
	  case cli_real4:
	    msg = unpack4((char*)&stmt->params[i].u.r4, msg);
	    break;
	  case cli_real8:
	    msg = unpack8((char*)&stmt->params[i].u.r8, msg);
	    break;
	  case cli_bool:
	    stmt->params[i].u.b = *msg++;
	    break;
	  case cli_asciiz:
	  case cli_pasciiz:
	    stmt->params[i].u.str = msg;
	    msg += strlen(msg) + 1;
	  default:
	    response = cli_bad_statement;
	    goto return_response;	    
	}
    } 
#ifdef THROW_EXCEPTION_ON_ERROR
    try { 
	response = stmt->cursor->select(stmt->query, cursorType);
    } catch (dbException const& x) { 
	response = (x.getErrorCode() == dbDatabase::QueryError)
	    ? cli_bad_statement : cli_runtime_error;
    }
#else
    { 
	dbDatabaseThreadContext* ctx = db->threadContext.get();
	int errorCode = setjmp(ctx->unwind);
	if (errorCode == 0) { 
	    response = stmt->cursor->select(stmt->query, cursorType);
	} else { 
	    response = (errorCode == dbDatabase::QueryError)
		? cli_bad_statement : cli_runtime_error;
	}
    }
#endif	
  return_response:
    pack4(response);
    return session->sock->write(&response, sizeof response);
}


void dbServer::serveClient()
{
    dbStatement** spp;
    db->attach();
    while (true) {
	dbSession* session; 
	{   
	    dbCriticalSection cs(mutex);
	    do { 
		go.wait(mutex);
		if (cancelWait) { 
		    nIdleThreads -= 1;
		    done.signal();
		    db->detach();
		    return;
		}
	    } while (waitList == NULL);

	    session = waitList;
	    waitList = waitList->next;
	    session->next = activeList;
	    activeList = session;
	    nIdleThreads -= 1;
	    nActiveThreads += 1;
	}
	cli_request req;
	int4 response = cli_ok;
	bool online = true;
	while (online && session->sock->read(&req, sizeof req)) { 
	    req.unpack();
	    int length = req.length - sizeof(req);
	    dbSmallBuffer msg(length);
	    if (length > 0) { 
		if (!session->sock->read(msg, length)) {
		    break;
		}
	    }
	    switch(req.cmd) { 
	      case cli_cmd_close_session:
		db->commit();
		session->in_transaction = false;
		online = false;
		break;
	      case cli_cmd_prepare_and_execute:
		online = select(session, req.stmt_id, msg, true); 
		session->in_transaction = true;
		break;
	      case cli_cmd_execute:
		online = select(session, req.stmt_id, msg, false); 
		break;
	      case cli_cmd_get_first:
		online = get_first(session, req.stmt_id);
		break;
	      case cli_cmd_get_last:
		online = get_last(session, req.stmt_id);
		break;
	      case cli_cmd_get_next:
		online = get_next(session, req.stmt_id);
		break;
	      case cli_cmd_get_prev:
		online = get_prev(session, req.stmt_id);
		break;
	      case cli_cmd_free_statement:
		for (spp = &session->stmts; *spp != NULL; spp = &(*spp)->next)
		{
		    if ((*spp)->id == req.stmt_id) { 
			*spp = (*spp)->next;
			delete *spp;
			break;
		    }
		}
		break;
	      case cli_cmd_abort:
		db->rollback();
		session->in_transaction = false;
		online = session->sock->write(&response, sizeof response);
		break;
	      case cli_cmd_commit:		
		db->commit();
		session->in_transaction = false;
		online = session->sock->write(&response, sizeof response);
		break;
	      case cli_cmd_update:
		update(session, req.stmt_id, msg);
		break;		
	      case cli_cmd_remove:
		remove(session, req.stmt_id);
		break;		
	      case cli_cmd_prepare_and_insert:
		insert(session, req.stmt_id, msg, true);
		session->in_transaction = true;
		break;		
	      case cli_cmd_insert:
		insert(session, req.stmt_id, msg, false);
		break;		
	    }
	}	
	if (session->in_transaction) { 
	    db->rollback();
	}
	// Finish session
	{   
	    dbCriticalSection cs(mutex);
	    dbSession** spp;
	    delete session->sock;
	    for (spp = &activeList; *spp != session; spp = &(*spp)->next); 
	    *spp = session->next;
	    session->next = freeList;
	    freeList = session;
	    nActiveThreads -= 1;
	    if (cancelSession) { 
		done.signal();
		break;
	    }
	    if (nActiveThreads + nIdleThreads >= optimalNumberOfThreads) {
		break;
	    }
	    nIdleThreads += 1;
	} 
    }
    db->detach();
}

void dbServer::acceptConnection(socket_t* acceptSock)
{
    while (true) { 
	socket_t* sock = acceptSock->accept();
	dbCriticalSection cs(mutex);
	if (cancelAccept) { 
	    return;
	}
	if (sock != NULL) { 
	    if (freeList == NULL) { 
		freeList = new dbSession;
		freeList->next = NULL;
	    }
	    dbSession* session = freeList;
	    freeList = session->next;
	    session->sock = sock;
	    session->stmts = NULL;
	    session->next = waitList;
	    session->in_transaction = false;
	    waitList = session;
	    if (nIdleThreads == 0) { 
		dbThread thread;
		nIdleThreads = 1;
		thread.create(serverThread, this);
		thread.detach();
	    }
	    go.signal();
	}
    }
}

dbServer::~dbServer()
{
    dbServer** spp;
    for (spp = &chain; *spp != this; spp = &(*spp)->next);
    *spp = next;
    delete globalAcceptSock;
    delete localAcceptSock;
    delete[] URL;
}





