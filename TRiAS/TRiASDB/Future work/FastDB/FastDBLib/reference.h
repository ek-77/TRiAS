//-< REFERENCE.H >---------------------------------------------------*--------*
// FastDB                    Version 1.0         (c) 1999  GARRET    *     ?  *
// (Main Memory Database Management System)                          *   /\|  *
//                                                                   *  /  \  *
//                          Created:     20-Nov-98    K.A. Knizhnik  * / [] \ *
//                          Last update: 15-Feb-99    K.A. Knizhnik  * GARRET *
//-------------------------------------------------------------------*--------*
// Database table field reference type
//-------------------------------------------------------------------*--------*

#ifndef __REFERENCE_H__
#define __REFERENCE_H__

/**
 * Base class for all references
 */
class FASTDB_DLL_ENTRY dbAnyReference {  
    friend class dbAnyCursor;
    friend class dbDatabase;
    friend class dbFieldDescriptor;
  protected:
    oid_t       oid;

  public: 
    dbAnyReference(oid_t oid = 0) { 
	this->oid = oid;
    }
    /**
     * Get object idetifier
     * @return object identifier of referenced object 
     */     
    oid_t getOid() const { 
	return oid;
    }

    /**
     * Check whether reference is null
     */
    friend bool isNull(dbAnyReference const& ref) { 
	return ref.oid == 0; 
    }
    
    /**
     * Check whether reference is null
     */    
    bool isNull() const { return oid == 0; }
};

/**
 * Class for null references
 */
class FASTDB_DLL_ENTRY dbNullReference {};

/**
 * Single instance of  dbNullReference class used to pass or asign null reference
 */
extern FASTDB_DLL_ENTRY dbNullReference null;

#if (defined(_MSC_VER) && _MSC_VER+0 <= 1100)
//
// Visual C++ prior to 5.0 version (with applied Service Pack 3)
// didn't support lazy template instantiation. As far as VC has bug
// with treating local function prototypes, we have to use friend function.
//
template<class T>
extern dbTableDescriptor* dbGetTableDescriptor(T*);
#endif


/**
 * Template for reference parameterized by class of referenced records.
 */
template<class T>
class dbReference : public dbAnyReference { 
  public:
    /**
     * Internal method used to describe reference 
     */
    dbFieldDescriptor* dbDescribeComponents(dbFieldDescriptor* fd) { 
        fd->type = fd->appType = dbField::tpReference;
#if defined(_MSC_VER) && _MSC_VER+0 <= 1100 
	fd->refTable = dbGetTableDescriptor((T*)0);
#else
#if defined(__GNUC__) && __GNUC_MINOR__ <= 95
	extern dbTableDescriptor* dbGetTableDescriptor(T*);
	fd->refTable = dbGetTableDescriptor((T*)0);
#else
        fd->refTable = &T::dbDescriptor;
#endif
#endif
	fd->dbsSize = fd->alignment = sizeof(oid_t);
        return NULL;
    }

    /**
     * Assignment operator
     * @param assigned reference of the same type
     * @return this reference
     */
    dbReference& operator = (dbReference const& ref) { 
	oid = ref.oid;
	return *this;
    }

    /**
     * Operator for assigning null to reference
     * @return this reference
     */
    dbReference& operator = (dbNullReference const&) { 
	oid = 0;
	return *this;
    }

    /**
     * Operator for comparision of two references of the same type
     */
    bool operator == (dbReference const& ref) const { 
	return oid == ref.oid; 
    }

    /**
     * Operator for comparision of two references of the same type
     */
    bool operator != (dbReference const& ref) const { 
	return oid != ref.oid; 
    }

    /**
     * Operator for cecking if reference is null
     */
    bool operator == (dbNullReference const&) const { 
	return oid == 0;
    }

    /**
     * Operator for cecking if reference is not null
     */
    bool operator != (dbNullReference const&) const { 
	return oid != 0;
    }

    /**
     * Constructor of null reference
     */
    dbReference(dbNullReference const&) : dbAnyReference(0) {}

    /**
     * Copy constructor from reference of the same type
     */
    dbReference(dbReference const& ref) : dbAnyReference(ref.oid) {}
    
    /**
     * Construstor of reference from OID. Use this constructor with care, because 
     * FastDB is not able to check if asigned OID belongs to the required table.
     * If you assign OID of record friom some other table and then use this reference, results will
     * be unpredicted (even database corruption is possible)
     */
    dbReference(oid_t oid=0) : dbAnyReference(oid) {}
};

#endif





