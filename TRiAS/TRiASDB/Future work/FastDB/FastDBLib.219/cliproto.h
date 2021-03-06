//-< CLIPROTO.H >----------------------------------------------------*--------*
// FastDB                    Version 1.0         (c) 1999  GARRET    *     ?  *
// (Main Memory Database Management System)                          *   /\|  *
//                                                                   *  /  \  *
//                          Created:     13-Jan-2000  K.A. Knizhnik  * / [] \ *
//                          Last update: 13-Jan-2000  K.A. Knizhnik  * GARRET *
//-------------------------------------------------------------------*--------*
// Client-server communication protocol
//-------------------------------------------------------------------*--------*

#ifndef __CLIPROTO_H__
#define __CLIPROTO_H__

enum cli_commands { 
    cli_cmd_close_session, 
    cli_cmd_prepare_and_execute,
    cli_cmd_execute,
    cli_cmd_get_first, 
    cli_cmd_get_last, 
    cli_cmd_get_next,
    cli_cmd_get_prev,
    cli_cmd_free_statement,
    cli_cmd_abort,
    cli_cmd_commit,
    cli_cmd_update,
    cli_cmd_remove,
    cli_cmd_insert,
    cli_cmd_prepare_and_insert
};

static const int sizeof_type[] = { 
    sizeof(cli_oid_t), 
    sizeof(cli_bool_t), 
    sizeof(cli_int1_t), 
    sizeof(cli_int2_t), 
    sizeof(cli_int4_t), 
    sizeof(cli_int8_t), 
    sizeof(cli_real4_t), 
    sizeof(cli_real8_t)
};

#if defined(__FreeBSD__)
#include <sys/param.h>
#define USE_HTON_NTOH
#elif defined(__linux__)
//
// At Linux inline assembly declarations of ntohl, htonl... are available
//
#include <netinet/in.h>
#define USE_HTON_NTOH
#else
#if defined(_WIN32) && _M_IX86 >= 400
#pragma warning(disable:4035) // disable "no return" warning
inline int swap_bytes_in_dword(int val) {
    __asm {
          mov eax, val
          bswap eax
    }
}
inline short swap_bytes_in_word(short val) {
    __asm {
          mov ax, val
          xchg al,ah
    }
}
#pragma warning(default:4035)
#define ntohl(w) swap_bytes_in_dword(w)
#define htonl(w) swap_bytes_in_dword(w)
#define ntohs(w) swap_bytes_in_word(w)
#define htons(w) swap_bytes_in_word(w)

#define USE_HTON_NTOH
#endif
#endif




inline char* pack2(char* dst, int2 val) { 
    *dst++ = char(val >> 8);
    *dst++ = char(val);     
    return dst;
}

inline char* pack2(char* dst, char* src) { 
    return pack2(dst, *(int2*)src); 
}

inline void pack2(int2& val) { 
#if BYTE_ORDER != BIG_ENDIAN
#ifdef USE_HTON_NTOH
    val = htons(val);
#else
    pack2((char*)&val, val); 
#endif
#endif
}


inline char* pack4(char* dst, int4 val) { 
    *dst++ = char(val >> 24);
    *dst++ = char(val >> 16);     
    *dst++ = char(val >> 8); 
    *dst++ = char(val);
    return dst;
}

inline char* pack4(char* dst, char* src) { 
    return pack4(dst, *(int4*)src); 
}

inline void pack4(int4& val) { 
#if BYTE_ORDER != BIG_ENDIAN
#ifdef USE_HTON_NTOH
    val = htonl(val);
#else
    pack4((char*)&val, val); 
#endif
#endif
}


inline char* pack8(char* dst, char* src) { 
#if BYTE_ORDER == BIG_ENDIAN
    return pack4( pack4(dst, src), src + 4);
#else
    return pack4( pack4(dst, src + 4), src);
#endif
}

inline char* pack8(char* dst, int8 val) { 
    return pack8(dst, (char*)&val);
}

inline char* pack_oid(char* dst, cli_oid_t oid)
{
    return (sizeof(oid) == 4) ? pack4(dst, oid) : pack8(dst, (char*)&oid);
}

inline int2 unpack2(char* src) { 
    nat1* s = (nat1*)src;
    return (s[0] << 8) + s[1]; 
}

inline char* unpack2(char* dst, char* src) { 
    *(int2*)dst = unpack2(src);
    return src + 2;
}

inline void  unpack2(int2& val) { 
#if BYTE_ORDER != BIG_ENDIAN
#ifdef USE_HTON_NTOH
    val = ntohs(val);
#else
    val = unpack2((char*)&val); 
#endif
#endif
}


inline int4  unpack4(char* src) { 
    nat1* s = (nat1*)src;
    return (((((s[0] << 8) + s[1]) << 8) + s[2]) << 8) + s[3];
} 

inline char* unpack4(char* dst, char* src) { 
    *(int4*)dst = unpack4(src);
    return src + 4;
}

inline void unpack4(int4& val) { 
#if BYTE_ORDER != BIG_ENDIAN
#ifdef USE_HTON_NTOH
    val = ntohl(val);
#else
    val = unpack4((char*)&val); 
#endif
#endif
}

inline char* unpack8(char* dst, char* src) { 
#if BYTE_ORDER == BIG_ENDIAN
    *(int4*)dst = unpack4(src);
    *((int4*)dst+1) = unpack4(src+4);
#else
    *(int4*)dst = unpack4(src+4);
    *((int4*)dst+1) = unpack4(src);
#endif
    return src + 8;
}

inline int8 unpack8(char* src) { 
    int8 val;
    unpack8((char*)&val, src);
    return val;
}

inline cli_oid_t unpack_oid(char* src)
{
    cli_oid_t oid;
    if (sizeof(oid) == 4) {
	oid = unpack4(src);
    } else { 
	unpack8((char*)&oid, src);
    }
    return oid;
}

struct cli_request { 
    int4 length;
    int4 cmd;
    int4 stmt_id;
    
    void pack() { 
	pack4(length);
	pack4(cmd);
	pack4(stmt_id);
    }

    void unpack() { 
	unpack4(length);
	unpack4(cmd);
	unpack4(stmt_id);
    }
};

#endif
