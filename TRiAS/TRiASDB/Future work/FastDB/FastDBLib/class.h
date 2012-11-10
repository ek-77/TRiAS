//-< CLASS.H >-------------------------------------------------------*--------*
// FastDB                    Version 1.0         (c) 1999  GARRET    *     ?  *
// (Main Memory Database Management System)                          *   /\|  *
//                                                                   *  /  \  *
//                          Created:     20-Nov-98    K.A. Knizhnik  * / [] \ *
//                          Last update: 10-Dec-98    K.A. Knizhnik  * GARRET *
//-------------------------------------------------------------------*--------*
// Metaclass information
//-------------------------------------------------------------------*--------*

#ifndef __CLASS_H__
#define __CLASS_H__

#include "stdtp.h"
#include "sync.h"

#ifdef USE_STD_STRING
#include <string>
#endif

#ifndef dbDatabaseOffsetBits 
#define dbDatabaseOffsetBits 32
#endif

#ifndef dbDatabaseOidBits 
#define dbDatabaseOidBits 32
#endif

/**
 * Object indentifier type
 */
#if dbDatabaseOidBits > 32
typedef nat8 oid_t;  // It will work only for 64-bit OS
#else
typedef nat4 oid_t;
#endif

/**
 * Object offset in the file type
 */
#if dbDatabaseOffsetBits > 32
typedef nat8 offs_t; // It will work only for 64-bit OS
#else
typedef nat4 offs_t;
#endif

/**
 * Types of field index
 */
enum dbIndexType { 
    HASHED  = 1, // hash table
    INDEXED = 2, // T-tree

    DB_FIELD_CASCADE_DELETE = 8,   // Used by OWNER macro, do not set it explicitly

    AUTOINCREMENT = 16, // field is assigned automaticall incremented value

    DB_FIELD_INHERITED_MASK = ~(HASHED|INDEXED)
};


/**
 * Macro for describing indexed fields
 */
#define KEY(x, index) \
    *dbDescribeField(new dbFieldDescriptor(#x, (char*)&x-(char*)this, \
                                           sizeof(x), index), x)

/**
 * Macro for describing non-indexed fields
 */
#define FIELD(x) KEY(x, 0)

/**
 * Comparator for user defined raw binary fields
 */
typedef int (*dbUDTComparator)(void*, void*, size_t);

/**
 * Macro used to describe indexed raw binary fields with user-defined comparator
 */
#define UDT(x, index, comparator) \
    *dbDescribeRawField(new dbFieldDescriptor(#x, (char*)&x-(char*)this, \
                                              sizeof(x), index), (dbUDTComparator)comparator)

/**
 * Macro used to describe raw binary field
 */
#define RAWFIELD(x) UDT(x, 0, &memcmp)

/**
 * Macro used to describe indexed raw binary field
 */
#define RAWKEY(x, index) UDT(x, index, &memcmp)

/**
 * Macro for describing relations between two tables. 
 * <code>x</code> should specify name of reference or array of reference field in this table, 
 * and <code>inverse</code> - field in the referenced table contining inverse reference.
 */
#define RELATION(x,inverse) \
    *dbDescribeField(new dbFieldDescriptor(#x, (char*)&x-(char*)this, \
                                           sizeof(x), 0, #inverse), x)

/**
 * Macro used to define relation owner (when owner is deleted, all referenced
 * members are also deleted). Members of of this relation should use 
 * <code>RELATION</code> macro to describe relation with owner.  
 */
#define OWNER(x,member) \
    *dbDescribeField(new dbFieldDescriptor(#x, (char*)&x-(char*)this, \
                                           sizeof(x), DB_FIELD_CASCADE_DELETE, \
                                           #member), x)
/**
 * Macro used to describe method of the class which can be invoked from SubSQL
 */
#define METHOD(x) \
    *dbDescribeMethod(new dbFieldDescriptor(#x), &self::x)

/**
 * Macro used to describe superclass for this class
 */
#define SUPERCLASS(x) \
    x::dbDescribeComponents(NULL)->adjustOffsets((char*)((x*)this)-(char*)this)

/**
 * Macro used to describe fields of the record. Use <code>FIELD, KEY</code>...
 * macros separated by comma inside this macro to describe all fields of the record
 */
#define TYPE_DESCRIPTOR(fields) \
    dbFieldDescriptor* dbDescribeComponents(dbFieldDescriptor*) { \
	return &fields; \
    } \
    static dbTableDescriptor dbDescriptor 


/**
 * Macro used to describe class, the only difference from <code>TYPE_DESCRIPTOR</code>
 * is that name of the class should be specified. This name is needed if you want
 * to describe methods.
 */
#define CLASS_DESCRIPTOR(name, fields) \
    typedef name self; \
    dbFieldDescriptor* dbDescribeComponents(dbFieldDescriptor*) { \
	return &fields; \
    } \
    static dbTableDescriptor dbDescriptor 

/**
 * Register table descriptor and assign it to specified database
 */
#define REGISTER_IN(table, database) \
    dbTableDescriptor* dbGetTableDescriptor(table*) \
      { return &table::dbDescriptor; }            \
    static dbFieldDescriptor* dbDescribeComponentsOf##table() \
      { return ((table*)0)->dbDescribeComponents(NULL); }     \
    dbTableDescriptor table::dbDescriptor(#table, database, sizeof(table), \
                                          &dbDescribeComponentsOf##table)

/**
 * Register table descripttor. It will be assigned to the database when database will be 
 * opened
 */
#define REGISTER(table) REGISTER_IN(table, NULL)

/**
 * Register database and mark it as unsigned. Programmer should explicitly
 * specify database in all operations.
 */
#define DETACHED_TABLE ((dbDatabase*)-1)
#define REGISTER_UNASSIGNED(table) REGISTER_IN(table, DETACHED_TABLE)


class dbDatabase;
class dbAnyArray;
class dbTableDescriptor;
class dbAnyMethodTrampoline;

/**
 * Descriptor of table field
 */
class FASTDB_DLL_ENTRY dbFieldDescriptor { 
  public:
    /**
     * Next file within scope
     */
    dbFieldDescriptor* next;
    /**
     * Previous field within scope
     */
    dbFieldDescriptor* prev;

    /**
     * Next field in the list of all fields in the table
     */
    dbFieldDescriptor* nextField;
    
    /**
     * Next field in the list of all hashed fields in the table
     */
    dbFieldDescriptor* nextHashedField;

    /**
     * Next field in the list of all indexed fields in the table
     */
    dbFieldDescriptor* nextIndexedField;

    /**
     * Next field in the list of all relation fields in the table
     */
    dbFieldDescriptor* nextInverseField;

    /**
     * Column number
     */
    int                fieldNo;
    
    /**
     * Name of the field
     */
    char*              name;

    /**
     * Compound name of field, for example "coord.x"
     */
    char*              longName;

    /**
     * Name of referenced table (for reference fields only)
     */
    char*              refTableName;

    /**
     * Referenced table (for reference fields only)
     */
    dbTableDescriptor* refTable;

    /**
     * Definition of the table to which this field belongs
     */
    dbTableDescriptor* defTable;

    /**
     * Inverse reference (for reference fields only)
     */
    dbFieldDescriptor* inverseRef;

    /**
     * Inverse reference name (for reference fields only)
     */
    char*              inverseRefName;  

    /**
     * Type of the field in the database (dbField::FieldTypes)
     */
    int                type;

    /**
     * Type of the field in application
     */
    int                appType;

    /**
     * Type of field index (bit combination of constants defined in dbIndexType)
     */
    int                indexType;

    /** 
     * Offset to the field in database
     */
    int                dbsOffs;

    /** 
     * Offset to the field in application
     */    
    int                appOffs;

    /**
     * Subcomponents of the field (for structures and arrays)
     */
    dbFieldDescriptor* components;
    
    /**
     * Trampoline used to invoke class method from SubSQL (for method components only)
    void*              trampoline;
     */
    
    /**
     * Hash table (for fields which are indexed by means of hash table
     */
    oid_t              hashTable;

    /**
     * T-Tree (for fields which are indexed by means of T-Ttree)
     */
    oid_t              tTree;

    /**
     * Size of the record in database
     */
    size_t             dbsSize;
    
    /**
     * Size of the object in application
     */
    size_t             appSize;

    /**
     * Alignment of the field (for structures it is equal to the maximum required alignment 
     * of it's components
     */
    size_t             alignment;

    /**
     * Comparator for user defined types
     */
    dbUDTComparator    comparator;

    /**
     * Attributes of the field
     */
    enum FieldAttributes { 
	ComponentOfArray   = 0x01,
	HasArrayComponents = 0x02,
	OneToOneMapping    = 0x04,
	Updated            = 0x08
    };
    int                attr;

    /**
     * Old type of the field in database (before schema evaluation)
     */
    int                oldDbsType;
    /**
     * Old offset of the field in database (before schema evaluation)
     */
    int                oldDbsOffs;
    /**
     * Old size of the field in database (before schema evaluation)
     */
    int                oldDbsSize;

    /**
     * Trampoline used to invoke class method from SubSQL (for method components only)
     */
    dbAnyMethodTrampoline* method;

    /**
     * Allocator of array components
     */
    void (*arrayAllocator)(dbAnyArray* array, void* data, size_t length);
    

    /**
     * Calculate record size in the database.
     * This method performs interation through all components in one scope
     * and recursively invokes itself for structure and array components. 
     * First time this method is invoked by table descriptor with <code>offs</code>
     * equal to size of fixed part of the record.
     * @param base address of the application object 
     * @param offs offset of the end of varying part of the record
     * @return size of the record
     */
    size_t calculateRecordSize(byte* base, size_t offs);

    /**
     * Calculate record size after reformatting record according
     * to the new definition of the application class.
     * This method performs interation thtough all components in one scope
     * and recursively invoke itself for structure and array components. 
     * @param base address of the application object 
     * @param offs offset of the end of varying part of the record
     * @return size of the record
     */
    size_t calculateNewRecordSize(byte* base, size_t offs);
    
    /**
     * Convert of the feild to new format.
     * This method is recursively invoked for array and structure components.     
     * @param dst destination for converted field
     * @param src original field
     * @param offs offset of varying part
     * @param offs offset of the end of varying part of the record
     * @return size of the record
     */
    size_t convertRecord(byte* dst, byte* src, size_t offs);

    /**
     * Size of the record without one field. This method is used to implement 
     * automatically updated inverse references.
     * This method performs interation thtough all components in one scope
     * and recursively invoke itself for structure and array components.      
     * @param field list of the fields in one scope
     * @param base pointer inside database
     * @param size [in/out] size of the record
     * @return offset of last field
     */
    int    sizeWithoutOneField(dbFieldDescriptor* field, 
			       byte* base, size_t& size);
    
    /**
     * Recursively copy record to new location except one field. This method
     * is used for updating inverse references.
     * @param field list of the fields in one scope
     * @param dst destination where record should be copied
     * @param src source of the copy
     * @param offs offset to the end of varying part
     * @return size of the record
     */
    size_t copyRecordExceptOneField(dbFieldDescriptor* field, 
				    byte* dst, byte* src, size_t offs); 

    /**
     * Store record fields in the databases
     * This method performs interation thtough all components in one scope
     * and recursively invoke itself for structure and array components.      
     * @param dst place in the database where record should be stored
     * @param src pointer to the application object
     * @param offset to the end of varying part
     * @param insert flag used to distringuish update fro insert (needed for autoincremented fields)
     * @return size of the record
     */     
    size_t storeRecordFields(byte* dst, byte* src, size_t offs, bool insert);

    /**
     * Mask updated fields.
     * This method performs interation thtough all components in one scope
     * and recursively invoke itself for structure and array components.      
     * @param dst old image of the record in the database
     * @param src updated application object
     */
    void markUpdatedFields(byte* dst, byte* src);

    /**
     * Fetch record from the database
     * This method performs interation thtough all components in one scope
     * and recursively invoke itself for structure and array components.      
     * @param dst pointer to the application object into which record is extract
     * @param src image of the object in the database
     */
    void fetchRecordFields(byte* dst, byte* src);

    /**
     * Adjust references in all fetched records (current records in all opened cursors)
     * when database was reallocated.
     * @param record pointer to the application object which references should be adjusted
     * @param base new address of memory mapping 
     * @param size database isze before extension
     * @paramdifference between old and new addresses of memory mapping obejct location.
     */
    void adjustReferences(byte* record, size_t base, size_t size, long shift);

    /**
     * Find component with specified name (for structures only)
     * @param name component name
     * @return descriptor of the field or <code>NULL</code> if not found
     */
    dbFieldDescriptor* find(const char* name);

    /**
     * Get first component of the field (for structures only)
     * @param return first component of the structure
     */
    dbFieldDescriptor* getFirstComponent() { 
	return components;
    }

    /**
     * Get next component within the scope
     * @return next component within the scope
     */
    dbFieldDescriptor* getNextComponent(dbFieldDescriptor* field) { 
	if (field != NULL) { 
	    field = field->next;
	    if (field == components) { 
		return NULL;
	    }
	}
	return field;
    }
	
    /** 
     * Redefined ',' operator used to form list of components
     */
    dbFieldDescriptor& operator, (dbFieldDescriptor& field) { 
	dbFieldDescriptor* tail = field.prev;
	tail->next = this;
	prev->next = &field;
	field.prev = prev;
	prev = tail;
	return *this;
    }

    void* operator new(size_t size);
    void  operator delete(void* p);

    /**
     * Adjust offsets within application objects for descriptors of base classes.
     */
    dbFieldDescriptor& adjustOffsets(long offs);

    /**
     * Field descriptor constructor
     * @param name name of the field
     * @param offs offset of the field
     * @param size size of the field
     * @param indexType type of index used for this field
     * @param name of inverse field
     * @param components comopnents of structure or array
     */
    dbFieldDescriptor(char* name, int offs, int size, int indexType, 
		      char* inverse = NULL,
		      dbFieldDescriptor* components = NULL);

    /**
     * Constructor of dummy field descriptor 
     * @param  name name of the field
     */
    dbFieldDescriptor(char* name);

    /**
     * Field descriptor destructor
     */
    ~dbFieldDescriptor();
};


/**
 * Table descriptor
 */
class FASTDB_DLL_ENTRY dbTableDescriptor { 
    friend class dbCompiler;
    friend class dbDatabase;
    friend class dbTable;
    friend class dbAnyCursor;
    friend class dbSubSql;
    friend class dbHashTable;
    friend class dbTtreeNode;
    friend class dbServer;
    friend class dbColumnBinding;
    friend class dbFieldDescriptor;
    friend class dbCLI;
  protected:
    /**
     * Chain of all tables in application
     */
    dbTableDescriptor*  next;
    static dbTableDescriptor* chain;

    /**
     * Chain of all tables associated with database
     */
    dbTableDescriptor*  nextDbTable; // next table in the database

    /**
     * Name of the table
     */
    char*               name;

    /**
     * Indetifier of table object in the database
     */
    oid_t               tableId;

    /**
     * List of table columns
     */
    dbFieldDescriptor*  columns; 
    
    /**
     * List of hashed fields
     */
    dbFieldDescriptor*  hashedFields;

    /**
     * List of fields indexed by T-Ttree
     */
    dbFieldDescriptor*  indexedFields;

    /**
     * List of relation fields (firlds, for which inverse references exist)
     */
    dbFieldDescriptor*  inverseFields;

    /**
     * List of all fields
     */
    dbFieldDescriptor*  firstField;

    /**
     * Pointer of next field of the last field (used for list construction)
     */
    dbFieldDescriptor** nextFieldLink;

    /**
     * Attached database
     */
    dbDatabase*         db;
    
    /**
     * Database staticly attached to the table (by means of REGISTER_IN macro)
     */
    bool                fixedDatabase;

    /**
     * Table descriptor is static object created by one of REGISTER macros
     */
    bool                isStatic;

    /**
     * Size of tghe correspondent applciation object
     */
    size_t              appSize;

    /**
     * Size of fixed part of the records (without string and array bodies)
     */
    size_t              fixedSize;

    /**
     * Number of fields in the table
     */
    size_t              nFields;

    /**
     * Number of columns in the table
     */
    size_t              nColumns;

    /**
     * Autoincremented counter for this table
     */
    int4                autoincrementCount;


    /**
     * When unassigned table descriptor is explicitly assigned to the database, 
     * new clone of descriptor is created and  <code>cloneOf</code> field of this descriptor
     * referes to original table descriptor.
     */
    dbTableDescriptor*  cloneOf;


    /**
     * Function returning list of record fields descriptors
     */
    typedef dbFieldDescriptor* (*describeFunc)();
    describeFunc        describeComponentsFunc;

    /**
     * Clone table descriptor
     */
    dbTableDescriptor*  clone();

    /**
     * Calculate total length of all names in table descriptor
     */
    size_t              totalNamesLength();

    /**
     * Recursively set field attributes.
     * @param fieldList list of record fields
     * @param prefix prefix for the field (in case of structures or arrays 
     * this functions is invoked resursively for components of this structure or
     * or array
     * @param offs - offset in application class
     * @param indexMask index mask for the structore containing the field
     * @param attr attributes of the parent field
     * @return alignment of the field
     */
    int calculateFieldsAttributes(dbFieldDescriptor* fieldsList, 
				  char const* prefix, int offs, 
				  int indexMask, int& attr);

    /**
     * Read table definiton from the database and build fields list
     * @param table databsae table descriptor
     * @param prefix prefix for the field (in case of structures or arrays 
     * @param prefixLen length of the prefix
     * @param attr attributes of the parent field
     * @return pointer to the constructed list
     */
    dbFieldDescriptor* buildFieldsList(dbTable* table, char const* prefix, int prefixLen, int& attr);

  public:
    /**
     * Initial value for autoincrement conunt
     */
    static int initialAutoincrementCount;

    /**
     * Find field with specified symbol name
     */    
    dbFieldDescriptor* findSymbol(char const* name);


    /**
     * Find field with specified name
     */    
    dbFieldDescriptor* find(char const* name);


    /**
     * Get first record field
     * @return descriptor of first recropd field
     */
    dbFieldDescriptor* getFirstField() { 
	return columns;
    }

    /**
     * Get next field
     * @param field current  field
     * @return next field after the current in table fields list
     */
    dbFieldDescriptor* getNextField(dbFieldDescriptor* field) { 
	if (field != NULL) { 
	    field = field->next;
	    if (field == columns) { 
		return NULL;
	    }
	}
	return field;
    }

    /**
     * Get table name.
     */
    char* getName() { 
	return name;
    }

    /**
     * Set fields flags.  This method is called after loading table descriptor
     * from database.
     */
    void setFlags();

    /**
     * Check whether table descriptor in the database is the same as
     * table appplication table descriptor
     * @param table database table descriptor
     * @return <code>true</code> if two table descriptors are equal
     */
    bool equal(dbTable* table);

    /**
     * Check whether fprmats of table descriptor in the database 
     * and in application is compatible. This method also prepares 
     * information for performing conversion of record to new format
     * @param table database table descriptor
     * @return <code>true</code> if no reformatting is needed
     */
    bool match(dbTable* table);

    /**
     * Check consuistency of declared realations (check that referenced table 
     * actually contains declared inverse reference field). 
     * This method also resolve references between table.
     */
    void checkRelationship();

    /**
     * Get reference to associated database
     * @return database to which this table is assigned
     */
    dbDatabase* getDatabase() { return db; }

    /**
     * Save table descriptor in the database.
     * @param table place where to store table descriptor
     */
    void storeInDatabase(dbTable* table);

    /**
     * Remove all table descriptors except static ones
     */
    static void cleanup();

    /**
     * Construct table descriptor using information stored in database
     * @param table pointer to database table descriptor
     */
    dbTableDescriptor(dbTable* table);

    /**
     * Constructor of application table descriptor
     * @param tableName name of the table
     * @param db assigned database (may be NULL)
     * @param objSize size of application object
     * @param func function returninglist of field descriptors
     * @param original roiginal table descriptor (for cloned descriptors)
     */
    dbTableDescriptor(char* tableName, dbDatabase* db, size_t objSize, 
		      describeFunc func, dbTableDescriptor* original = NULL);

    /**
     * Table descriptor destructor
     */
    ~dbTableDescriptor();
};

/**
 * Header of database array or string
 */
struct dbVarying { 
    nat4 size; // number of elements in the array
    int4 offs; // offset from the beginning of the record
};

/**
 * Database record for storing field descriptor
 */
struct dbField { 
    enum FieldTypes { 
	tpBool,
	tpInt1,
	tpInt2,
	tpInt4,
	tpInt8,
	tpReal4, 
	tpReal8, 
	tpString,
	tpReference,
	tpArray,
	tpMethodBool,
	tpMethodInt1,
	tpMethodInt2,
	tpMethodInt4,
	tpMethodInt8,
	tpMethodReal4,
	tpMethodReal8,
	tpMethodString,
	tpMethodReference,
	tpStructure,
	tpRawBinary, 
	tpStdString,
	tpUnknown
    };
	
    /**
     * Full name of the field (for example "x.y.z")
     */
    dbVarying name;    

    /**
     * Name of referenced table( only for references)
     */
    dbVarying tableName; 

    /**
     * Name of inverse reference field (only for refereces)
     */
    dbVarying inverse; 
    
    /**
     * Field type: one of <code>dbField::FieldTypes</code> constants
     */
    int4      type;

    /**
     *  Offset of the field in the record
     */
    int4      offset; 

    /**
     * Size of the field
     */
    nat4      size;

    /**
     * Hash table for hashed field
     */
    oid_t     hashTable;

    /**
     * T-Tree for field indexed by means of T-Ttree
     */
    oid_t     tTree;
};     


/**
 * Header of any database record
 */
class dbRecord { 
  public:
    /**
     * Size of the record (including header
     */
    nat4   size;

    /**
     * Next record in the table (0 if it is last record)
     */
    oid_t  next;

    /**
     * Previous record in the table (0 if it is first record)
     */
    oid_t  prev;
};


/**
 * Database recod for storing table descriptor
 */
class dbTable : public dbRecord { 
  public:
    /**
     * Name of the table
     */
    dbVarying name;
    
    /**
     * Array with field descriptors
     */
    dbVarying fields;

    /**
     * Size of fixed part of the record (without string and arrays bodies)
     */
    nat4      fixedSize;

    /**
     * Number of rows in the table
     */
    nat4      nRows;

    /**
     * Number of columns in the table
     */
    nat4      nColumns;
    
    /**
     * Identifier of first row in the table
     */
    oid_t     firstRow;

     /**
     * Identifier of last row in the table
     */
    oid_t     lastRow;
#ifdef AUTOINCREMENT_SUPPORT
    /**
     * Autoincremented counter
     */
    nat4      count;
#endif
};

inline dbFieldDescriptor* dbDescribeRawField(dbFieldDescriptor* fd, dbUDTComparator comparator)
{
    fd->type = fd->appType = dbField::tpRawBinary;
    fd->alignment = 1;
    fd->comparator = comparator;
    return fd;
}


template<class T>
inline dbFieldDescriptor* dbDescribeField(dbFieldDescriptor* fd, T& x) 
{ 
    fd->type = fd->appType = dbField::tpStructure;
    fd->components = x.dbDescribeComponents(fd);
    return fd;
}

inline dbFieldDescriptor* dbDescribeField(dbFieldDescriptor* fd, int1&) 
{ 
    fd->type = fd->appType = dbField::tpInt1; 
    return fd;
}
inline dbFieldDescriptor* dbDescribeField(dbFieldDescriptor* fd, int2&) 
{ 
    fd->type = fd->appType = dbField::tpInt2; 
    return fd;
}
inline dbFieldDescriptor* dbDescribeField(dbFieldDescriptor* fd, int4&) 
{ 
    fd->type = fd->appType = dbField::tpInt4; 
    return fd;
}
inline dbFieldDescriptor* dbDescribeField(dbFieldDescriptor* fd, db_int8&) 
{ 
    fd->type = fd->appType = dbField::tpInt8; 
    return fd;
}
inline dbFieldDescriptor* dbDescribeField(dbFieldDescriptor* fd, nat1&) 
{ 
    fd->type = fd->appType = dbField::tpInt1; 
    return fd;
}
inline dbFieldDescriptor* dbDescribeField(dbFieldDescriptor* fd, nat2&) 
{ 
    fd->type = fd->appType = dbField::tpInt2; 
    return fd;
}
inline dbFieldDescriptor* dbDescribeField(dbFieldDescriptor* fd, nat4&) 
{ 
    fd->type = fd->appType = dbField::tpInt4; 
    return fd;
}
inline dbFieldDescriptor* dbDescribeField(dbFieldDescriptor* fd, nat8&) 
{ 
    fd->type = fd->appType = dbField::tpInt8; 
    return fd;
}
inline dbFieldDescriptor* dbDescribeField(dbFieldDescriptor* fd, bool&) 
{ 
    fd->type = fd->appType = dbField::tpBool; 
    return fd;
}
inline dbFieldDescriptor* dbDescribeField(dbFieldDescriptor* fd, real4&) 
{ 
    fd->type = fd->appType = dbField::tpReal4; 
    return fd;
}
inline dbFieldDescriptor* dbDescribeField(dbFieldDescriptor* fd, real8&) 
{ 
    fd->type = fd->appType = dbField::tpReal8; 
    return fd;
}
#ifdef USE_STD_STRING
inline dbFieldDescriptor* dbDescribeField(dbFieldDescriptor* fd, std::string&)
{
    fd->type = dbField::tpString;
    fd->appType = dbField::tpStdString;
    fd->dbsSize = sizeof(dbVarying);
    fd->alignment = 4;
    fd->components = new dbFieldDescriptor("[]");
    fd->components->type = fd->components->appType = dbField::tpInt1;
    fd->components->dbsSize = fd->components->appSize = fd->components->alignment = 1; 
    return fd;
}
#endif
inline dbFieldDescriptor* dbDescribeField(dbFieldDescriptor* fd, char const*&) 
{ 
    fd->type = fd->appType = dbField::tpString; 
    fd->dbsSize = sizeof(dbVarying); 
    fd->alignment = 4;
    fd->components = new dbFieldDescriptor("[]");
    fd->components->type = fd->components->appType = dbField::tpInt1;
    fd->components->dbsSize = fd->components->appSize = 1;
    fd->components->alignment = 1; 
    return fd;
}
inline dbFieldDescriptor* dbDescribeField(dbFieldDescriptor* fd, char*&) 
{ 
    fd->type = fd->appType = dbField::tpString; 
    fd->dbsSize = sizeof(dbVarying); 
    fd->alignment = 4;
    fd->components = new dbFieldDescriptor("[]");
    fd->components->type = fd->components->appType = dbField::tpInt1;
    fd->components->dbsSize = fd->components->appSize = 1;
    fd->components->alignment = 1; 
    return fd;
}


/** 
 * Trampolinefor invocation of methods from SubSQL
 */
class FASTDB_DLL_ENTRY dbAnyMethodTrampoline { 
  public:
    dbFieldDescriptor* cls;

    /**
     * Invoke method
     * @param data pointer to the record insode database
     * @param result pointer to place result in 
     */
    virtual void invoke(byte* data, void* result) = 0;

    /**
     * Get optimize trampoline. Optimized trampoline can be used for records
     * which format in the database is the same as in application. In this case
     * there is no need to fetch record and pointer insode dataabse can be used intead
     * @return optimized nethod trampoline
     */
    virtual dbAnyMethodTrampoline* optimize() = 0;

    /**
     * Method tramopile constructor
     * @param fd method descriptor
     */
    dbAnyMethodTrampoline(dbFieldDescriptor* fd) { cls = fd; }
    
    /**
     * Trampoline desctructor
     */
    virtual~dbAnyMethodTrampoline();
};
    

/**
 * Template for method trampoline implementation
 */
template<class T, class R>
class dbMethodTrampoline : public dbAnyMethodTrampoline { 
  public:
    typedef R (T::*mfunc)();
    mfunc method;

    void invoke(byte* data, void* result) {
	T rec;
	cls->components->fetchRecordFields((byte*)&rec, data);
	*(R*)result = (rec.*method)();
    }
    dbAnyMethodTrampoline* optimize();
 
    dbMethodTrampoline(dbFieldDescriptor* fd, mfunc f) 
    : dbAnyMethodTrampoline(fd), method(f) {} 
};


/**
 * Optimized method trampoline which doesn't fetch record from the database
 * and use direct pointer to the record inside database
 */
template<class T, class R>
class dbMethodFastTrampoline : public dbMethodTrampoline<T,R> { 
  public:
    void invoke(byte* data, void* result) {
	*(R*)result = (((T*)(data + cls->dbsOffs))->*method)();
    }
    dbMethodFastTrampoline(dbMethodTrampoline<T,R>* mt) 
    : dbMethodTrampoline<T,R>(mt->cls, mt->method) { 
	delete mt;
    }
};

template<class T, class R>
inline dbAnyMethodTrampoline* dbMethodTrampoline<T,R>::optimize() { 
    return new dbMethodFastTrampoline<T,R>(this);
}
    

template<class T, class R>
inline dbFieldDescriptor* dbDescribeMethod(dbFieldDescriptor* fd, R (T::*p)()) 
{ 
    R ret;
    dbDescribeField(fd, ret);
    assert(fd->type <= dbField::tpReference);
    fd->appType = fd->type += dbField::tpMethodBool;
    fd->method = new dbMethodTrampoline<T,R>(fd, p);
    return fd;
}

#endif

