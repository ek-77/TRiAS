// VersionsInfoStruktur fuer TRIAS.EXE ----------------------------------------
// File: TRIAS.RCV

#ifndef VS_FF_DEBUG
// ----------------------------------------------------------------------------
// In VER.H sind die notwendigen Konstantendefinitionen enthalten -------------
#include <ver.h>
#endif

// ----------------------------------------------------------------------------
// Die folgenden Zeilen sollten vom Produktverantwortlichen f�r jedes Build 
// aktualisiert werden 

#define VER_PRODUCTVERSION_STR     "@A.@B.@C\0"
#define VER_PRODUCTVERSION          @A,@B,0,@C

// ----------------------------------------------------------------------------
// Produkt-Spezifische Informationen ------------------------------------------

// Default ist NODEBUG
#ifndef DEBUG
#define VER_DEBUG                   0
#else
#define VER_DEBUG                   VS_FF_DEBUG
#endif

// Default ist PrivateBuild
#ifndef OFFICIAL
#define VER_PRIVATEBUILD            VS_FF_PRIVATEBUILD
#else
#define VER_PRIVATEBUILD            0
#endif

// Default ist PreRelease
#ifndef FINAL
#define VER_PRERELEASE              VS_FF_PRERELEASE
#else
#define VER_PRERELEASE              0
#endif

#define VER_FILEFLAGSMASK    VS_FFI_FILEFLAGSMASK
#define VER_FILEFLAGS        (VER_PRIVATEBUILD|VER_PRERELEASE|VER_DEBUG|VS_FF_SPECIALBUILD)

#define VER_FILEOS           VOS_DOS_WINDOWS32

#define VER_COMPANYNAME_STR  	"@G\0"
#define VER_LEGALCOPYRIGHT_STR	"Copyright � @G 1991 - 2005, #@D\0"
#define VER_PRODUCTNAME_STR  	"TRiAS� - Territoriales Raumbezogenes Informations- und Abfragesystem\0"
#define VER_LEGALTRADEMARKS_STR	"TRiAS� ist ein eingetragenes Warenzeichen von @G.\0"

// ----------------------------------------------------------------------------
// Datei-Spezifische Informationen --------------------------------------------

#define VER_FILETYPE                VFT_APP

#define VER_FILESUBTYPE             VFT2_UNKNOWN
#define VER_FILEVERSION             VER_PRODUCTVERSION

#define VER_FILEVERSION_STR		VER_PRODUCTVERSION_STR
#define VER_FILEDESCRIPTION_STR		\
	"Territoriales Raumbezogenes Informations- und Abfragesystem\0"
#define VER_INTERNALNAME_STR		"TRiAS\0"
#define VER_ORIGINALFILENAME_STR	"TRiAS.EXE\0"
#define VER_SPECIALBUILD_STR		"PersonalisierungsInfo: " 	\
	"@E " "@F\0" 

// Die eigentliche VersionsStruktur -------------------------------------------
#ifdef RC_INVOKED

VS_VERSION_INFO         VERSIONINFO
FILEVERSION     VER_FILEVERSION
PRODUCTVERSION  VER_PRODUCTVERSION
FILEFLAGSMASK   VER_FILEFLAGSMASK
FILEFLAGS       VER_FILEFLAGS
FILEOS          VER_FILEOS
FILETYPE        VER_FILETYPE
FILESUBTYPE     VER_FILESUBTYPE
BEGIN
    BLOCK "StringFileInfo"
    BEGIN
        BLOCK "040704E4"	// Deutsch und multilinguale CodePage
	BEGIN
		VALUE "CompanyName",		VER_COMPANYNAME_STR, "\0"
		VALUE "FileDescription",	VER_FILEDESCRIPTION_STR, "\0"
		VALUE "FileVersion",		VER_FILEVERSION_STR, "\0"
		VALUE "InternalName",    	VER_INTERNALNAME_STR, "\0"
		VALUE "LegalCopyright",		VER_LEGALCOPYRIGHT_STR, "\0"
		VALUE "LegalTrademarks",	VER_LEGALTRADEMARKS_STR, "\0"
		VALUE "OriginalFileName",	VER_ORIGINALFILENAME_STR, "\0"
 		VALUE "ProductName",		VER_PRODUCTNAME_STR, "\0"
		VALUE "ProductVersion",		VER_PRODUCTVERSION_STR, "\0"
	// Hier sollten zus�tzliche Informationen f�r lokale Versionen 
	// enthalten sein.
		VALUE "SpecialBuild",		VER_SPECIALBUILD_STR, "\0"
	END
    END

    BLOCK "VarFileInfo"
    BEGIN
	// Die folgende Informationen werden lediglich f�r lokalisierte 
	// Produktversionen ver�ndert. Jeweils ein WORD, WORD - Paar 
	// definiert eine konkrete Sprache bzw. unterst�tzte CodeSeite.

        VALUE "Translation", 0x407, 1252
    END
END

#endif


