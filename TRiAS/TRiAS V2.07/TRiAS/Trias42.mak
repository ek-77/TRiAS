# Microsoft Developer Studio Generated NMAKE File, Format Version 4.20
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Application" 0x0101

!IF "$(CFG)" == ""
CFG=Trias32 - Win32 Debug
!MESSAGE No configuration specified.  Defaulting to Trias32 - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "Trias32 - Win32 Release" && "$(CFG)" !=\
 "Trias32 - Win32 Debug" && "$(CFG)" != "Trias32 - Win32 Pseudo Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE on this makefile
!MESSAGE by defining the macro CFG on the command line.  For example:
!MESSAGE 
!MESSAGE NMAKE /f "Trias42.mak" CFG="Trias32 - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "Trias32 - Win32 Release" (based on "Win32 (x86) Application")
!MESSAGE "Trias32 - Win32 Debug" (based on "Win32 (x86) Application")
!MESSAGE "Trias32 - Win32 Pseudo Debug" (based on "Win32 (x86) Application")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 
################################################################################
# Begin Project
# PROP Target_Last_Scanned "Trias32 - Win32 Debug"
MTL=mktyplib.exe
RSC=rc.exe
CPP=cl.exe

!IF  "$(CFG)" == "Trias32 - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "WinRel"
# PROP BASE Intermediate_Dir "WinRel"
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release"
OUTDIR=.\Release
INTDIR=.\Release
# Begin Custom Macros
TargetName=Trias32
# End Custom Macros

ALL : "$(OUTDIR)\Trias32.exe" "c:\trias.mvc\trias200.rel\Trias32.exe"

CLEAN : 
	-@erase "$(INTDIR)\alloprop.obj"
	-@erase "$(INTDIR)\APALWIND.OBJ"
	-@erase "$(INTDIR)\ARRAY.OBJ"
	-@erase "$(INTDIR)\AUSSCHN.OBJ"
	-@erase "$(INTDIR)\BILDOBJ.OBJ"
	-@erase "$(INTDIR)\BMPBOX.OBJ"
	-@erase "$(INTDIR)\CLIPBORD.OBJ"
	-@erase "$(INTDIR)\COLORBOX.OBJ"
	-@erase "$(INTDIR)\DBOARRAY.OBJ"
	-@erase "$(INTDIR)\DBOBJEKT.OBJ"
	-@erase "$(INTDIR)\DBOGETGI.OBJ"
	-@erase "$(INTDIR)\DCOLOR.OBJ"
	-@erase "$(INTDIR)\DdORWnd.obj"
	-@erase "$(INTDIR)\DELVIEWS.OBJ"
	-@erase "$(INTDIR)\docprops.obj"
	-@erase "$(INTDIR)\dragdrop.obj"
	-@erase "$(INTDIR)\Drawobj2.obj"
	-@erase "$(INTDIR)\DRW_OBJ1.OBJ"
	-@erase "$(INTDIR)\eallcprp.obj"
	-@erase "$(INTDIR)\eallprop.obj"
	-@erase "$(INTDIR)\EDITTEXT.OBJ"
	-@erase "$(INTDIR)\ENUMFNAM.OBJ"
	-@erase "$(INTDIR)\enumobj.obj"
	-@erase "$(INTDIR)\EXPDLG.OBJ"
	-@erase "$(INTDIR)\expoprop.obj"
	-@erase "$(INTDIR)\EXPORT.OBJ"
	-@erase "$(INTDIR)\expstat2.obj"
	-@erase "$(INTDIR)\EXPTRANS.OBJ"
	-@erase "$(INTDIR)\Extfcns1.obj"
	-@erase "$(INTDIR)\extfcns2.obj"
	-@erase "$(INTDIR)\ExtFcns3.obj"
	-@erase "$(INTDIR)\Extfcnsn.obj"
	-@erase "$(INTDIR)\extmain3.obj"
	-@erase "$(INTDIR)\Extmmsg2.obj"
	-@erase "$(INTDIR)\Extqnfy2.obj"
	-@erase "$(INTDIR)\FEATURE.OBJ"
	-@erase "$(INTDIR)\frameevt.obj"
	-@erase "$(INTDIR)\IdentCls.obj"
	-@erase "$(INTDIR)\IDENTSEL.OBJ"
	-@erase "$(INTDIR)\IENUMSTR.OBJ"
	-@erase "$(INTDIR)\impdlg.obj"
	-@erase "$(INTDIR)\Irisevt2.obj"
	-@erase "$(INTDIR)\Irismai2.obj"
	-@erase "$(INTDIR)\Irisopn2.obj"
	-@erase "$(INTDIR)\Irisuti2.obj"
	-@erase "$(INTDIR)\LDROPSRC.OBJ"
	-@erase "$(INTDIR)\LDROPTGT.OBJ"
	-@erase "$(INTDIR)\LEGDINFO.OBJ"
	-@erase "$(INTDIR)\LEGEND.OBJ"
	-@erase "$(INTDIR)\LEGMERKM.OBJ"
	-@erase "$(INTDIR)\legmrklp.obj"
	-@erase "$(INTDIR)\legmrkyp.obj"
	-@erase "$(INTDIR)\LEGTXTED.OBJ"
	-@erase "$(INTDIR)\LEGUTILS.OBJ"
	-@erase "$(INTDIR)\LEGWIND.OBJ"
	-@erase "$(INTDIR)\license.obj"
	-@erase "$(INTDIR)\LPALWIND.OBJ"
	-@erase "$(INTDIR)\ManageExtDlg.obj"
	-@erase "$(INTDIR)\masstab2.obj"
	-@erase "$(INTDIR)\MENUITEM.OBJ"
	-@erase "$(INTDIR)\MERKEDIT.OBJ"
	-@erase "$(INTDIR)\MINITPBD.OBJ"
	-@erase "$(INTDIR)\modifyid.obj"
	-@erase "$(INTDIR)\Mru.obj"
	-@erase "$(INTDIR)\OBJEKTE.OBJ"
	-@erase "$(INTDIR)\OBJMENU.OBJ"
	-@erase "$(INTDIR)\OBJMENU1.OBJ"
	-@erase "$(INTDIR)\OBJOWNDR.OBJ"
	-@erase "$(INTDIR)\OBJPROP.OBJ"
	-@erase "$(INTDIR)\OLISTEM.OBJ"
	-@erase "$(INTDIR)\OPENDB.OBJ"
	-@erase "$(INTDIR)\ORIDENTS.OBJ"
	-@erase "$(INTDIR)\OVERVIEW.OBJ"
	-@erase "$(INTDIR)\PALRECT.OBJ"
	-@erase "$(INTDIR)\PALWIND.OBJ"
	-@erase "$(INTDIR)\pntmasks.obj"
	-@erase "$(INTDIR)\ppalwndr.obj"
	-@erase "$(INTDIR)\PRINTER.OBJ"
	-@erase "$(INTDIR)\PRLAYOUT.OBJ"
	-@erase "$(INTDIR)\PRNTABRT.OBJ"
	-@erase "$(INTDIR)\PRNTLAYT.OBJ"
	-@erase "$(INTDIR)\PRNTPROF.OBJ"
	-@erase "$(INTDIR)\PROFILE.OBJ"
	-@erase "$(INTDIR)\RECHRES.OBJ"
	-@erase "$(INTDIR)\RechSheet.obj"
	-@erase "$(INTDIR)\REGTRIAS.OBJ"
	-@erase "$(INTDIR)\RELOBJ.OBJ"
	-@erase "$(INTDIR)\RENDERDB.OBJ"
	-@erase "$(INTDIR)\RESOURCE.OBJ"
	-@erase "$(INTDIR)\RGB_HSB.OBJ"
	-@erase "$(INTDIR)\SAVEOPT.OBJ"
	-@erase "$(INTDIR)\SCHRIFT.OBJ"
	-@erase "$(INTDIR)\Selectid.obj"
	-@erase "$(INTDIR)\selectn.obj"
	-@erase "$(INTDIR)\selnview.obj"
	-@erase "$(INTDIR)\selprio.obj"
	-@erase "$(INTDIR)\SHIFT.OBJ"
	-@erase "$(INTDIR)\SHIFTOVW.OBJ"
	-@erase "$(INTDIR)\SIGHTS.OBJ"
	-@erase "$(INTDIR)\SignOnNew.obj"
	-@erase "$(INTDIR)\strings.obj"
	-@erase "$(INTDIR)\TEXTMENU.OBJ"
	-@erase "$(INTDIR)\TRANSFRM.OBJ"
	-@erase "$(INTDIR)\Trias32.res"
	-@erase "$(INTDIR)\Trias42.pch"
	-@erase "$(INTDIR)\TRIASPRE.OBJ"
	-@erase "$(INTDIR)\undodlg.obj"
	-@erase "$(INTDIR)\viewdrop.obj"
	-@erase "$(INTDIR)\VIEWTREE.OBJ"
	-@erase "$(INTDIR)\Vispara3.obj"
	-@erase "$(OUTDIR)\Trias32.exe"
	-@erase ".\LEGMERKL.CXX"
	-@erase ".\LEGMERKL.HXX"
	-@erase ".\LEGMERKY.CXX"
	-@erase ".\LEGMERKY.HXX"
	-@erase ".\YY_MYREF.H"
	-@erase "c:\trias.mvc\trias200.rel\Trias32.exe"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

$(OUTDIR)/TRIAS32.bsc : $(OUTDIR)  $(BSC32_SBRS)
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /FR /YX /c
# ADD CPP /nologo /MD /W3 /WX /GX /Og /Oi /Os /Ob1 /Gf /Gy /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "__CV__" /D "STRICT" /D "MSWIND" /D "DLL" /D "__TRIASEXE__" /D "OS_WIN_95" /D "OS_STL_ASSERT" /D "OS_NO_WSTRING" /D "OS_ALTERNATIVE_STRING_NAMES" /D "__ATL_USED__" /D "QI_EXCEPTION" /D "OS_NO_STREAM_SUPPORT" /D "_GERMAN_RESOURCES" /D "OS_NO_ALLOCATORS" /D "TRANSPARENT_PATTERNS" /D "_ATL_NEW_CCOMSTRUCT" /Yu"triaspre.hxx" /c
# SUBTRACT CPP /Ox /Oa /Ow /Fr
CPP_PROJ=/nologo /MD /W3 /WX /GX /Og /Oi /Os /Ob1 /Gf /Gy /D "NDEBUG" /D\
 "WIN32" /D "_WINDOWS" /D "__CV__" /D "STRICT" /D "MSWIND" /D "DLL" /D\
 "__TRIASEXE__" /D "OS_WIN_95" /D "OS_STL_ASSERT" /D "OS_NO_WSTRING" /D\
 "OS_ALTERNATIVE_STRING_NAMES" /D "__ATL_USED__" /D "QI_EXCEPTION" /D\
 "OS_NO_STREAM_SUPPORT" /D "_GERMAN_RESOURCES" /D "OS_NO_ALLOCATORS" /D\
 "TRANSPARENT_PATTERNS" /D "_ATL_NEW_CCOMSTRUCT" /Fp"$(INTDIR)/Trias42.pch"\
 /Yu"triaspre.hxx" /Fo"$(INTDIR)/" /c 
CPP_OBJS=.\Release/
CPP_SBRS=.\.
# ADD BASE MTL /nologo /D "NDEBUG" /win32
# ADD MTL /nologo /D "NDEBUG" /win32
MTL_PROJ=/nologo /D "NDEBUG" /win32 
# ADD BASE RSC /l 0x407 /d "NDEBUG"
# ADD RSC /l 0x407 /i ".." /d "NDEBUG" /d "_GERMAN_RESOURCES" /d "_NEWORMENU"
RSC_PROJ=/l 0x407 /fo"$(INTDIR)/Trias32.res" /i ".." /d "NDEBUG" /d\
 "_GERMAN_RESOURCES" /d "_NEWORMENU" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/Trias42.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib /nologo /subsystem:windows /machine:I386
# ADD LINK32 TRiASTlb.lib trias323.lib trias322.lib trias321.lib tfrmwrkl.lib lol.lib tfrmwork.lib cont32r.lib stdcppr.lib ospace2r.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib comctl32.lib /nologo /machine:I386 /out:"Release/Trias32.exe" /SUBSYSTEM:windows,4.0
# SUBTRACT LINK32 /pdb:none /incremental:yes /map /debug
LINK32_FLAGS=TRiASTlb.lib trias323.lib trias322.lib trias321.lib tfrmwrkl.lib\
 lol.lib tfrmwork.lib cont32r.lib stdcppr.lib ospace2r.lib kernel32.lib\
 user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib\
 ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib comctl32.lib /nologo\
 /incremental:no /pdb:"$(OUTDIR)/Trias32.pdb" /machine:I386\
 /def:".\obj32\TRIAS32.DEF" /out:"$(OUTDIR)/Trias32.exe" /SUBSYSTEM:windows,4.0 
DEF_FILE= \
	".\obj32\TRIAS32.DEF"
LINK32_OBJS= \
	"$(INTDIR)\alloprop.obj" \
	"$(INTDIR)\APALWIND.OBJ" \
	"$(INTDIR)\ARRAY.OBJ" \
	"$(INTDIR)\AUSSCHN.OBJ" \
	"$(INTDIR)\BILDOBJ.OBJ" \
	"$(INTDIR)\BMPBOX.OBJ" \
	"$(INTDIR)\CLIPBORD.OBJ" \
	"$(INTDIR)\COLORBOX.OBJ" \
	"$(INTDIR)\DBOARRAY.OBJ" \
	"$(INTDIR)\DBOBJEKT.OBJ" \
	"$(INTDIR)\DBOGETGI.OBJ" \
	"$(INTDIR)\DCOLOR.OBJ" \
	"$(INTDIR)\DdORWnd.obj" \
	"$(INTDIR)\DELVIEWS.OBJ" \
	"$(INTDIR)\docprops.obj" \
	"$(INTDIR)\dragdrop.obj" \
	"$(INTDIR)\Drawobj2.obj" \
	"$(INTDIR)\DRW_OBJ1.OBJ" \
	"$(INTDIR)\eallcprp.obj" \
	"$(INTDIR)\eallprop.obj" \
	"$(INTDIR)\EDITTEXT.OBJ" \
	"$(INTDIR)\ENUMFNAM.OBJ" \
	"$(INTDIR)\enumobj.obj" \
	"$(INTDIR)\EXPDLG.OBJ" \
	"$(INTDIR)\expoprop.obj" \
	"$(INTDIR)\EXPORT.OBJ" \
	"$(INTDIR)\expstat2.obj" \
	"$(INTDIR)\EXPTRANS.OBJ" \
	"$(INTDIR)\Extfcns1.obj" \
	"$(INTDIR)\extfcns2.obj" \
	"$(INTDIR)\ExtFcns3.obj" \
	"$(INTDIR)\Extfcnsn.obj" \
	"$(INTDIR)\extmain3.obj" \
	"$(INTDIR)\Extmmsg2.obj" \
	"$(INTDIR)\Extqnfy2.obj" \
	"$(INTDIR)\FEATURE.OBJ" \
	"$(INTDIR)\frameevt.obj" \
	"$(INTDIR)\IdentCls.obj" \
	"$(INTDIR)\IDENTSEL.OBJ" \
	"$(INTDIR)\IENUMSTR.OBJ" \
	"$(INTDIR)\impdlg.obj" \
	"$(INTDIR)\Irisevt2.obj" \
	"$(INTDIR)\Irismai2.obj" \
	"$(INTDIR)\Irisopn2.obj" \
	"$(INTDIR)\Irisuti2.obj" \
	"$(INTDIR)\LDROPSRC.OBJ" \
	"$(INTDIR)\LDROPTGT.OBJ" \
	"$(INTDIR)\LEGDINFO.OBJ" \
	"$(INTDIR)\LEGEND.OBJ" \
	"$(INTDIR)\LEGMERKM.OBJ" \
	"$(INTDIR)\legmrklp.obj" \
	"$(INTDIR)\legmrkyp.obj" \
	"$(INTDIR)\LEGTXTED.OBJ" \
	"$(INTDIR)\LEGUTILS.OBJ" \
	"$(INTDIR)\LEGWIND.OBJ" \
	"$(INTDIR)\license.obj" \
	"$(INTDIR)\LPALWIND.OBJ" \
	"$(INTDIR)\ManageExtDlg.obj" \
	"$(INTDIR)\masstab2.obj" \
	"$(INTDIR)\MENUITEM.OBJ" \
	"$(INTDIR)\MERKEDIT.OBJ" \
	"$(INTDIR)\MINITPBD.OBJ" \
	"$(INTDIR)\modifyid.obj" \
	"$(INTDIR)\Mru.obj" \
	"$(INTDIR)\OBJEKTE.OBJ" \
	"$(INTDIR)\OBJMENU.OBJ" \
	"$(INTDIR)\OBJMENU1.OBJ" \
	"$(INTDIR)\OBJOWNDR.OBJ" \
	"$(INTDIR)\OBJPROP.OBJ" \
	"$(INTDIR)\OLISTEM.OBJ" \
	"$(INTDIR)\OPENDB.OBJ" \
	"$(INTDIR)\ORIDENTS.OBJ" \
	"$(INTDIR)\OVERVIEW.OBJ" \
	"$(INTDIR)\PALRECT.OBJ" \
	"$(INTDIR)\PALWIND.OBJ" \
	"$(INTDIR)\pntmasks.obj" \
	"$(INTDIR)\ppalwndr.obj" \
	"$(INTDIR)\PRINTER.OBJ" \
	"$(INTDIR)\PRLAYOUT.OBJ" \
	"$(INTDIR)\PRNTABRT.OBJ" \
	"$(INTDIR)\PRNTLAYT.OBJ" \
	"$(INTDIR)\PRNTPROF.OBJ" \
	"$(INTDIR)\PROFILE.OBJ" \
	"$(INTDIR)\RECHRES.OBJ" \
	"$(INTDIR)\RechSheet.obj" \
	"$(INTDIR)\REGTRIAS.OBJ" \
	"$(INTDIR)\RELOBJ.OBJ" \
	"$(INTDIR)\RENDERDB.OBJ" \
	"$(INTDIR)\RESOURCE.OBJ" \
	"$(INTDIR)\RGB_HSB.OBJ" \
	"$(INTDIR)\SAVEOPT.OBJ" \
	"$(INTDIR)\SCHRIFT.OBJ" \
	"$(INTDIR)\Selectid.obj" \
	"$(INTDIR)\selectn.obj" \
	"$(INTDIR)\selnview.obj" \
	"$(INTDIR)\selprio.obj" \
	"$(INTDIR)\SHIFT.OBJ" \
	"$(INTDIR)\SHIFTOVW.OBJ" \
	"$(INTDIR)\SIGHTS.OBJ" \
	"$(INTDIR)\SignOnNew.obj" \
	"$(INTDIR)\strings.obj" \
	"$(INTDIR)\TEXTMENU.OBJ" \
	"$(INTDIR)\TRANSFRM.OBJ" \
	"$(INTDIR)\Trias32.res" \
	"$(INTDIR)\TRIASPRE.OBJ" \
	"$(INTDIR)\undodlg.obj" \
	"$(INTDIR)\viewdrop.obj" \
	"$(INTDIR)\VIEWTREE.OBJ" \
	"$(INTDIR)\Vispara3.obj"

"$(OUTDIR)\Trias32.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

# Begin Custom Build - Copying Target to Destination ...
TargetPath=.\Release\Trias32.exe
TargetName=Trias32
InputPath=.\Release\Trias32.exe
SOURCE=$(InputPath)

"c:\trias.mvc\trias200.rel\$(TargetName).exe" : $(SOURCE) "$(INTDIR)"\
 "$(OUTDIR)"
   copy "$(TargetPath)" c:\trias.mvc\trias200.rel

# End Custom Build

!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "WinDebug"
# PROP BASE Intermediate_Dir "WinDebug"
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "Debug"
OUTDIR=.\Debug
INTDIR=.\Debug
# Begin Custom Macros
TargetName=trias32d
# End Custom Macros

ALL : ".\Obj32\Debug\trias32d.exe" ".\Obj32\Debug\Trias42.bsc"\
 "c:\trias.mvc\trias200\trias32d.exe"

CLEAN : 
	-@erase ".\LEGMERKL.CXX"
	-@erase ".\LEGMERKL.HXX"
	-@erase ".\LEGMERKY.CXX"
	-@erase ".\LEGMERKY.HXX"
	-@erase ".\Obj32\Debug\alloprop.obj"
	-@erase ".\Obj32\Debug\alloprop.sbr"
	-@erase ".\Obj32\Debug\APALWIND.OBJ"
	-@erase ".\Obj32\Debug\APALWIND.SBR"
	-@erase ".\Obj32\Debug\ARRAY.OBJ"
	-@erase ".\Obj32\Debug\ARRAY.SBR"
	-@erase ".\Obj32\Debug\AUSSCHN.OBJ"
	-@erase ".\Obj32\Debug\AUSSCHN.SBR"
	-@erase ".\Obj32\Debug\BILDOBJ.OBJ"
	-@erase ".\Obj32\Debug\BILDOBJ.SBR"
	-@erase ".\Obj32\Debug\BMPBOX.OBJ"
	-@erase ".\Obj32\Debug\BMPBOX.SBR"
	-@erase ".\Obj32\Debug\CLIPBORD.OBJ"
	-@erase ".\Obj32\Debug\CLIPBORD.SBR"
	-@erase ".\Obj32\Debug\COLORBOX.OBJ"
	-@erase ".\Obj32\Debug\COLORBOX.SBR"
	-@erase ".\Obj32\Debug\DBOARRAY.OBJ"
	-@erase ".\Obj32\Debug\DBOARRAY.SBR"
	-@erase ".\Obj32\Debug\DBOBJEKT.OBJ"
	-@erase ".\Obj32\Debug\DBOBJEKT.SBR"
	-@erase ".\Obj32\Debug\DBOGETGI.OBJ"
	-@erase ".\Obj32\Debug\DBOGETGI.SBR"
	-@erase ".\Obj32\Debug\DCOLOR.OBJ"
	-@erase ".\Obj32\Debug\DCOLOR.SBR"
	-@erase ".\Obj32\Debug\DdORWnd.obj"
	-@erase ".\Obj32\Debug\DdORWnd.sbr"
	-@erase ".\Obj32\Debug\DELVIEWS.OBJ"
	-@erase ".\Obj32\Debug\DELVIEWS.SBR"
	-@erase ".\Obj32\Debug\docprops.obj"
	-@erase ".\Obj32\Debug\docprops.sbr"
	-@erase ".\Obj32\Debug\dragdrop.obj"
	-@erase ".\Obj32\Debug\dragdrop.sbr"
	-@erase ".\Obj32\Debug\Drawobj2.obj"
	-@erase ".\Obj32\Debug\Drawobj2.sbr"
	-@erase ".\Obj32\Debug\DRW_OBJ1.OBJ"
	-@erase ".\Obj32\Debug\DRW_OBJ1.SBR"
	-@erase ".\Obj32\Debug\eallcprp.obj"
	-@erase ".\Obj32\Debug\eallcprp.sbr"
	-@erase ".\Obj32\Debug\eallprop.obj"
	-@erase ".\Obj32\Debug\eallprop.sbr"
	-@erase ".\Obj32\Debug\EDITTEXT.OBJ"
	-@erase ".\Obj32\Debug\EDITTEXT.SBR"
	-@erase ".\Obj32\Debug\ENUMFNAM.OBJ"
	-@erase ".\Obj32\Debug\ENUMFNAM.SBR"
	-@erase ".\Obj32\Debug\enumobj.obj"
	-@erase ".\Obj32\Debug\enumobj.sbr"
	-@erase ".\Obj32\Debug\EXPDLG.OBJ"
	-@erase ".\Obj32\Debug\EXPDLG.SBR"
	-@erase ".\Obj32\Debug\expoprop.obj"
	-@erase ".\Obj32\Debug\expoprop.sbr"
	-@erase ".\Obj32\Debug\EXPORT.OBJ"
	-@erase ".\Obj32\Debug\EXPORT.SBR"
	-@erase ".\Obj32\Debug\expstat2.obj"
	-@erase ".\Obj32\Debug\expstat2.sbr"
	-@erase ".\Obj32\Debug\EXPTRANS.OBJ"
	-@erase ".\Obj32\Debug\EXPTRANS.SBR"
	-@erase ".\Obj32\Debug\Extfcns1.obj"
	-@erase ".\Obj32\Debug\Extfcns1.sbr"
	-@erase ".\Obj32\Debug\extfcns2.obj"
	-@erase ".\Obj32\Debug\extfcns2.sbr"
	-@erase ".\Obj32\Debug\ExtFcns3.obj"
	-@erase ".\Obj32\Debug\ExtFcns3.sbr"
	-@erase ".\Obj32\Debug\Extfcnsn.obj"
	-@erase ".\Obj32\Debug\Extfcnsn.sbr"
	-@erase ".\Obj32\Debug\extmain3.obj"
	-@erase ".\Obj32\Debug\extmain3.sbr"
	-@erase ".\Obj32\Debug\Extmmsg2.obj"
	-@erase ".\Obj32\Debug\Extmmsg2.sbr"
	-@erase ".\Obj32\Debug\Extqnfy2.obj"
	-@erase ".\Obj32\Debug\Extqnfy2.sbr"
	-@erase ".\Obj32\Debug\FEATURE.OBJ"
	-@erase ".\Obj32\Debug\FEATURE.SBR"
	-@erase ".\Obj32\Debug\frameevt.obj"
	-@erase ".\Obj32\Debug\frameevt.sbr"
	-@erase ".\Obj32\Debug\IdentCls.obj"
	-@erase ".\Obj32\Debug\IdentCls.sbr"
	-@erase ".\Obj32\Debug\IDENTSEL.OBJ"
	-@erase ".\Obj32\Debug\IDENTSEL.SBR"
	-@erase ".\Obj32\Debug\IENUMSTR.OBJ"
	-@erase ".\Obj32\Debug\IENUMSTR.SBR"
	-@erase ".\Obj32\Debug\impdlg.obj"
	-@erase ".\Obj32\Debug\impdlg.sbr"
	-@erase ".\Obj32\Debug\Irisevt2.obj"
	-@erase ".\Obj32\Debug\Irisevt2.sbr"
	-@erase ".\Obj32\Debug\Irismai2.obj"
	-@erase ".\Obj32\Debug\Irismai2.sbr"
	-@erase ".\Obj32\Debug\Irisopn2.obj"
	-@erase ".\Obj32\Debug\Irisopn2.sbr"
	-@erase ".\Obj32\Debug\Irisuti2.obj"
	-@erase ".\Obj32\Debug\Irisuti2.sbr"
	-@erase ".\Obj32\Debug\LDROPSRC.OBJ"
	-@erase ".\Obj32\Debug\LDROPSRC.SBR"
	-@erase ".\Obj32\Debug\LDROPTGT.OBJ"
	-@erase ".\Obj32\Debug\LDROPTGT.SBR"
	-@erase ".\Obj32\Debug\LEGDINFO.OBJ"
	-@erase ".\Obj32\Debug\LEGDINFO.SBR"
	-@erase ".\Obj32\Debug\LEGEND.OBJ"
	-@erase ".\Obj32\Debug\LEGEND.SBR"
	-@erase ".\Obj32\Debug\LEGMERKM.OBJ"
	-@erase ".\Obj32\Debug\LEGMERKM.SBR"
	-@erase ".\Obj32\Debug\legmrklp.obj"
	-@erase ".\Obj32\Debug\legmrklp.sbr"
	-@erase ".\Obj32\Debug\legmrkyp.obj"
	-@erase ".\Obj32\Debug\legmrkyp.sbr"
	-@erase ".\Obj32\Debug\LEGTXTED.OBJ"
	-@erase ".\Obj32\Debug\LEGTXTED.SBR"
	-@erase ".\Obj32\Debug\LEGUTILS.OBJ"
	-@erase ".\Obj32\Debug\LEGUTILS.SBR"
	-@erase ".\Obj32\Debug\LEGWIND.OBJ"
	-@erase ".\Obj32\Debug\LEGWIND.SBR"
	-@erase ".\Obj32\Debug\license.obj"
	-@erase ".\Obj32\Debug\license.sbr"
	-@erase ".\Obj32\Debug\LPALWIND.OBJ"
	-@erase ".\Obj32\Debug\LPALWIND.SBR"
	-@erase ".\Obj32\Debug\ManageExtDlg.obj"
	-@erase ".\Obj32\Debug\ManageExtDlg.sbr"
	-@erase ".\Obj32\Debug\masstab2.obj"
	-@erase ".\Obj32\Debug\masstab2.sbr"
	-@erase ".\Obj32\Debug\MENUITEM.OBJ"
	-@erase ".\Obj32\Debug\MENUITEM.SBR"
	-@erase ".\Obj32\Debug\MERKEDIT.OBJ"
	-@erase ".\Obj32\Debug\MERKEDIT.SBR"
	-@erase ".\Obj32\Debug\MINITPBD.OBJ"
	-@erase ".\Obj32\Debug\MINITPBD.SBR"
	-@erase ".\Obj32\Debug\modifyid.obj"
	-@erase ".\Obj32\Debug\modifyid.sbr"
	-@erase ".\Obj32\Debug\Mru.obj"
	-@erase ".\Obj32\Debug\Mru.sbr"
	-@erase ".\Obj32\Debug\MsgDumper.obj"
	-@erase ".\Obj32\Debug\MsgDumper.sbr"
	-@erase ".\Obj32\Debug\OBJEKTE.OBJ"
	-@erase ".\Obj32\Debug\OBJEKTE.SBR"
	-@erase ".\Obj32\Debug\OBJMENU.OBJ"
	-@erase ".\Obj32\Debug\OBJMENU.SBR"
	-@erase ".\Obj32\Debug\OBJMENU1.OBJ"
	-@erase ".\Obj32\Debug\OBJMENU1.SBR"
	-@erase ".\Obj32\Debug\OBJOWNDR.OBJ"
	-@erase ".\Obj32\Debug\OBJOWNDR.SBR"
	-@erase ".\Obj32\Debug\OBJPROP.OBJ"
	-@erase ".\Obj32\Debug\OBJPROP.SBR"
	-@erase ".\Obj32\Debug\OLISTEM.OBJ"
	-@erase ".\Obj32\Debug\OLISTEM.SBR"
	-@erase ".\Obj32\Debug\OPENDB.OBJ"
	-@erase ".\Obj32\Debug\OPENDB.SBR"
	-@erase ".\Obj32\Debug\ORIDENTS.OBJ"
	-@erase ".\Obj32\Debug\ORIDENTS.SBR"
	-@erase ".\Obj32\Debug\OVERVIEW.OBJ"
	-@erase ".\Obj32\Debug\OVERVIEW.SBR"
	-@erase ".\Obj32\Debug\PALRECT.OBJ"
	-@erase ".\Obj32\Debug\PALRECT.SBR"
	-@erase ".\Obj32\Debug\PALWIND.OBJ"
	-@erase ".\Obj32\Debug\PALWIND.SBR"
	-@erase ".\Obj32\Debug\pntmasks.obj"
	-@erase ".\Obj32\Debug\pntmasks.sbr"
	-@erase ".\Obj32\Debug\ppalwndr.obj"
	-@erase ".\Obj32\Debug\ppalwndr.sbr"
	-@erase ".\Obj32\Debug\PRINTER.OBJ"
	-@erase ".\Obj32\Debug\PRINTER.SBR"
	-@erase ".\Obj32\Debug\PRLAYOUT.OBJ"
	-@erase ".\Obj32\Debug\PRLAYOUT.SBR"
	-@erase ".\Obj32\Debug\PRNTABRT.OBJ"
	-@erase ".\Obj32\Debug\PRNTABRT.SBR"
	-@erase ".\Obj32\Debug\PRNTLAYT.OBJ"
	-@erase ".\Obj32\Debug\PRNTLAYT.SBR"
	-@erase ".\Obj32\Debug\PRNTPROF.OBJ"
	-@erase ".\Obj32\Debug\PRNTPROF.SBR"
	-@erase ".\Obj32\Debug\PROFILE.OBJ"
	-@erase ".\Obj32\Debug\PROFILE.SBR"
	-@erase ".\Obj32\Debug\RECHRES.OBJ"
	-@erase ".\Obj32\Debug\RECHRES.SBR"
	-@erase ".\Obj32\Debug\RechSheet.obj"
	-@erase ".\Obj32\Debug\RechSheet.sbr"
	-@erase ".\Obj32\Debug\REGTRIAS.OBJ"
	-@erase ".\Obj32\Debug\REGTRIAS.SBR"
	-@erase ".\Obj32\Debug\RELOBJ.OBJ"
	-@erase ".\Obj32\Debug\RELOBJ.SBR"
	-@erase ".\Obj32\Debug\RENDERDB.OBJ"
	-@erase ".\Obj32\Debug\RENDERDB.SBR"
	-@erase ".\Obj32\Debug\RESOURCE.OBJ"
	-@erase ".\Obj32\Debug\RESOURCE.SBR"
	-@erase ".\Obj32\Debug\RGB_HSB.OBJ"
	-@erase ".\Obj32\Debug\RGB_HSB.SBR"
	-@erase ".\Obj32\Debug\SAVEOPT.OBJ"
	-@erase ".\Obj32\Debug\SAVEOPT.SBR"
	-@erase ".\Obj32\Debug\SCHRIFT.OBJ"
	-@erase ".\Obj32\Debug\SCHRIFT.SBR"
	-@erase ".\Obj32\Debug\Selectid.obj"
	-@erase ".\Obj32\Debug\Selectid.sbr"
	-@erase ".\Obj32\Debug\selectn.obj"
	-@erase ".\Obj32\Debug\selectn.sbr"
	-@erase ".\Obj32\Debug\selnview.obj"
	-@erase ".\Obj32\Debug\selnview.sbr"
	-@erase ".\Obj32\Debug\selprio.obj"
	-@erase ".\Obj32\Debug\selprio.sbr"
	-@erase ".\Obj32\Debug\SHIFT.OBJ"
	-@erase ".\Obj32\Debug\SHIFT.SBR"
	-@erase ".\Obj32\Debug\SHIFTOVW.OBJ"
	-@erase ".\Obj32\Debug\SHIFTOVW.SBR"
	-@erase ".\Obj32\Debug\SIGHTS.OBJ"
	-@erase ".\Obj32\Debug\SIGHTS.SBR"
	-@erase ".\Obj32\Debug\SignOnNew.obj"
	-@erase ".\Obj32\Debug\SignOnNew.sbr"
	-@erase ".\Obj32\Debug\strings.obj"
	-@erase ".\Obj32\Debug\strings.sbr"
	-@erase ".\Obj32\Debug\TEXTMENU.OBJ"
	-@erase ".\Obj32\Debug\TEXTMENU.SBR"
	-@erase ".\Obj32\Debug\TRANSFRM.OBJ"
	-@erase ".\Obj32\Debug\TRANSFRM.SBR"
	-@erase ".\Obj32\Debug\TRIAS32.res"
	-@erase ".\Obj32\Debug\trias32d.exe"
	-@erase ".\Obj32\Debug\trias32d.idb"
	-@erase ".\Obj32\Debug\trias32d.ilk"
	-@erase ".\Obj32\Debug\trias32d.pch"
	-@erase ".\Obj32\Debug\trias32d.pdb"
	-@erase ".\Obj32\Debug\Trias42.bsc"
	-@erase ".\Obj32\Debug\TRIASPRE.OBJ"
	-@erase ".\Obj32\Debug\TRIASPRE.SBR"
	-@erase ".\Obj32\Debug\undodlg.obj"
	-@erase ".\Obj32\Debug\undodlg.sbr"
	-@erase ".\Obj32\Debug\UndoRedoDetails.obj"
	-@erase ".\Obj32\Debug\UndoRedoDetails.sbr"
	-@erase ".\Obj32\Debug\viewdrop.obj"
	-@erase ".\Obj32\Debug\viewdrop.sbr"
	-@erase ".\Obj32\Debug\VIEWTREE.OBJ"
	-@erase ".\Obj32\Debug\VIEWTREE.SBR"
	-@erase ".\Obj32\Debug\Vispara3.obj"
	-@erase ".\Obj32\Debug\Vispara3.sbr"
	-@erase ".\YY_MYREF.H"
	-@erase "c:\trias.mvc\trias200\trias32d.exe"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

$(OUTDIR)/TRIAS32.bsc : $(OUTDIR)  $(BSC32_SBRS)
# ADD BASE CPP /nologo /W3 /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /FR /YX /c
# ADD CPP /nologo /MDd /W3 /WX /Gm /GX /Zi /Od /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "__CV__" /D "STRICT" /D "MSWIND" /D "DLL" /D "__TRIASEXE__" /D "OS_WIN_95" /D "OS_STL_ASSERT" /D "OS_NO_WSTRING" /D "OS_ALTERNATIVE_STRING_NAMES" /D "__ATL_USED__" /D "QI_EXCEPTION" /D "OS_NO_STREAM_SUPPORT" /D "_GERMAN_RESOURCES" /D "OS_NO_ALLOCATORS" /D "TRANSPARENT_PATTERNS" /D "_ATL_NEW_CCOMSTRUCT" /FR"Obj32/Debug/" /Fp"Obj32/Debug/trias32d.pch" /Yu"triaspre.hxx" /Fo"Obj32/Debug/" /Fd"Obj32/Debug/trias32d.pdb" /c
CPP_PROJ=/nologo /MDd /W3 /WX /Gm /GX /Zi /Od /D "_DEBUG" /D "WIN32" /D\
 "_WINDOWS" /D "__CV__" /D "STRICT" /D "MSWIND" /D "DLL" /D "__TRIASEXE__" /D\
 "OS_WIN_95" /D "OS_STL_ASSERT" /D "OS_NO_WSTRING" /D\
 "OS_ALTERNATIVE_STRING_NAMES" /D "__ATL_USED__" /D "QI_EXCEPTION" /D\
 "OS_NO_STREAM_SUPPORT" /D "_GERMAN_RESOURCES" /D "OS_NO_ALLOCATORS" /D\
 "TRANSPARENT_PATTERNS" /D "_ATL_NEW_CCOMSTRUCT" /FR"Obj32/Debug/"\
 /Fp"Obj32/Debug/trias32d.pch" /Yu"triaspre.hxx" /Fo"Obj32/Debug/"\
 /Fd"Obj32/Debug/trias32d.pdb" /c 
CPP_OBJS=.\Obj32/Debug/
CPP_SBRS=.\Obj32/Debug/
# ADD BASE MTL /nologo /D "_DEBUG" /win32
# ADD MTL /nologo /D "_DEBUG" /win32
MTL_PROJ=/nologo /D "_DEBUG" /win32 
# ADD BASE RSC /l 0x407 /d "_DEBUG"
# ADD RSC /l 0x407 /fo"Obj32/Debug/TRIAS32.res" /i ".." /d "_DEBUG" /d "_GERMAN_RESOURCES" /d "_NEWORMENU"
RSC_PROJ=/l 0x407 /fo"Obj32/Debug/TRIAS32.res" /i ".." /d "_DEBUG" /d\
 "_GERMAN_RESOURCES" /d "_NEWORMENU" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo /o"Obj32/Debug/Trias42.bsc"
BSC32_FLAGS=/nologo /o"Obj32/Debug/Trias42.bsc" 
BSC32_SBRS= \
	".\Obj32\Debug\alloprop.sbr" \
	".\Obj32\Debug\APALWIND.SBR" \
	".\Obj32\Debug\ARRAY.SBR" \
	".\Obj32\Debug\AUSSCHN.SBR" \
	".\Obj32\Debug\BILDOBJ.SBR" \
	".\Obj32\Debug\BMPBOX.SBR" \
	".\Obj32\Debug\CLIPBORD.SBR" \
	".\Obj32\Debug\COLORBOX.SBR" \
	".\Obj32\Debug\DBOARRAY.SBR" \
	".\Obj32\Debug\DBOBJEKT.SBR" \
	".\Obj32\Debug\DBOGETGI.SBR" \
	".\Obj32\Debug\DCOLOR.SBR" \
	".\Obj32\Debug\DdORWnd.sbr" \
	".\Obj32\Debug\DELVIEWS.SBR" \
	".\Obj32\Debug\docprops.sbr" \
	".\Obj32\Debug\dragdrop.sbr" \
	".\Obj32\Debug\Drawobj2.sbr" \
	".\Obj32\Debug\DRW_OBJ1.SBR" \
	".\Obj32\Debug\eallcprp.sbr" \
	".\Obj32\Debug\eallprop.sbr" \
	".\Obj32\Debug\EDITTEXT.SBR" \
	".\Obj32\Debug\ENUMFNAM.SBR" \
	".\Obj32\Debug\enumobj.sbr" \
	".\Obj32\Debug\EXPDLG.SBR" \
	".\Obj32\Debug\expoprop.sbr" \
	".\Obj32\Debug\EXPORT.SBR" \
	".\Obj32\Debug\expstat2.sbr" \
	".\Obj32\Debug\EXPTRANS.SBR" \
	".\Obj32\Debug\Extfcns1.sbr" \
	".\Obj32\Debug\extfcns2.sbr" \
	".\Obj32\Debug\ExtFcns3.sbr" \
	".\Obj32\Debug\Extfcnsn.sbr" \
	".\Obj32\Debug\extmain3.sbr" \
	".\Obj32\Debug\Extmmsg2.sbr" \
	".\Obj32\Debug\Extqnfy2.sbr" \
	".\Obj32\Debug\FEATURE.SBR" \
	".\Obj32\Debug\frameevt.sbr" \
	".\Obj32\Debug\IdentCls.sbr" \
	".\Obj32\Debug\IDENTSEL.SBR" \
	".\Obj32\Debug\IENUMSTR.SBR" \
	".\Obj32\Debug\impdlg.sbr" \
	".\Obj32\Debug\Irisevt2.sbr" \
	".\Obj32\Debug\Irismai2.sbr" \
	".\Obj32\Debug\Irisopn2.sbr" \
	".\Obj32\Debug\Irisuti2.sbr" \
	".\Obj32\Debug\LDROPSRC.SBR" \
	".\Obj32\Debug\LDROPTGT.SBR" \
	".\Obj32\Debug\LEGDINFO.SBR" \
	".\Obj32\Debug\LEGEND.SBR" \
	".\Obj32\Debug\LEGMERKM.SBR" \
	".\Obj32\Debug\legmrklp.sbr" \
	".\Obj32\Debug\legmrkyp.sbr" \
	".\Obj32\Debug\LEGTXTED.SBR" \
	".\Obj32\Debug\LEGUTILS.SBR" \
	".\Obj32\Debug\LEGWIND.SBR" \
	".\Obj32\Debug\license.sbr" \
	".\Obj32\Debug\LPALWIND.SBR" \
	".\Obj32\Debug\ManageExtDlg.sbr" \
	".\Obj32\Debug\masstab2.sbr" \
	".\Obj32\Debug\MENUITEM.SBR" \
	".\Obj32\Debug\MERKEDIT.SBR" \
	".\Obj32\Debug\MINITPBD.SBR" \
	".\Obj32\Debug\modifyid.sbr" \
	".\Obj32\Debug\Mru.sbr" \
	".\Obj32\Debug\MsgDumper.sbr" \
	".\Obj32\Debug\OBJEKTE.SBR" \
	".\Obj32\Debug\OBJMENU.SBR" \
	".\Obj32\Debug\OBJMENU1.SBR" \
	".\Obj32\Debug\OBJOWNDR.SBR" \
	".\Obj32\Debug\OBJPROP.SBR" \
	".\Obj32\Debug\OLISTEM.SBR" \
	".\Obj32\Debug\OPENDB.SBR" \
	".\Obj32\Debug\ORIDENTS.SBR" \
	".\Obj32\Debug\OVERVIEW.SBR" \
	".\Obj32\Debug\PALRECT.SBR" \
	".\Obj32\Debug\PALWIND.SBR" \
	".\Obj32\Debug\pntmasks.sbr" \
	".\Obj32\Debug\ppalwndr.sbr" \
	".\Obj32\Debug\PRINTER.SBR" \
	".\Obj32\Debug\PRLAYOUT.SBR" \
	".\Obj32\Debug\PRNTABRT.SBR" \
	".\Obj32\Debug\PRNTLAYT.SBR" \
	".\Obj32\Debug\PRNTPROF.SBR" \
	".\Obj32\Debug\PROFILE.SBR" \
	".\Obj32\Debug\RECHRES.SBR" \
	".\Obj32\Debug\RechSheet.sbr" \
	".\Obj32\Debug\REGTRIAS.SBR" \
	".\Obj32\Debug\RELOBJ.SBR" \
	".\Obj32\Debug\RENDERDB.SBR" \
	".\Obj32\Debug\RESOURCE.SBR" \
	".\Obj32\Debug\RGB_HSB.SBR" \
	".\Obj32\Debug\SAVEOPT.SBR" \
	".\Obj32\Debug\SCHRIFT.SBR" \
	".\Obj32\Debug\Selectid.sbr" \
	".\Obj32\Debug\selectn.sbr" \
	".\Obj32\Debug\selnview.sbr" \
	".\Obj32\Debug\selprio.sbr" \
	".\Obj32\Debug\SHIFT.SBR" \
	".\Obj32\Debug\SHIFTOVW.SBR" \
	".\Obj32\Debug\SIGHTS.SBR" \
	".\Obj32\Debug\SignOnNew.sbr" \
	".\Obj32\Debug\strings.sbr" \
	".\Obj32\Debug\TEXTMENU.SBR" \
	".\Obj32\Debug\TRANSFRM.SBR" \
	".\Obj32\Debug\TRIASPRE.SBR" \
	".\Obj32\Debug\undodlg.sbr" \
	".\Obj32\Debug\UndoRedoDetails.sbr" \
	".\Obj32\Debug\viewdrop.sbr" \
	".\Obj32\Debug\VIEWTREE.SBR" \
	".\Obj32\Debug\Vispara3.sbr"

".\Obj32\Debug\Trias42.bsc" : "$(OUTDIR)" $(BSC32_SBRS)
    $(BSC32) @<<
  $(BSC32_FLAGS) $(BSC32_SBRS)
<<

LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib /nologo /subsystem:windows /debug /machine:I386
# ADD LINK32 TRiASTld.lib tfrm32ld.lib lold.lib trias33d.lib trias32d.lib trias31d.lib tfrm32d.lib cont32d.lib stdcppd.lib ospace2d.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /pdb:"Obj32/Debug/trias32d.pdb" /debug /machine:I386 /out:"Obj32/Debug/trias32d.exe" /VERSION:2,0 /SUBSYSTEM:windows,4.0
# SUBTRACT LINK32 /pdb:none /incremental:no
LINK32_FLAGS=TRiASTld.lib tfrm32ld.lib lold.lib trias33d.lib trias32d.lib\
 trias31d.lib tfrm32d.lib cont32d.lib stdcppd.lib ospace2d.lib kernel32.lib\
 user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib\
 ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo\
 /incremental:yes /pdb:"Obj32/Debug/trias32d.pdb" /debug /machine:I386\
 /def:".\obj32\TRIAS32.DEF" /out:"Obj32/Debug/trias32d.exe" /VERSION:2,0\
 /SUBSYSTEM:windows,4.0 
DEF_FILE= \
	".\obj32\TRIAS32.DEF"
LINK32_OBJS= \
	".\Obj32\Debug\alloprop.obj" \
	".\Obj32\Debug\APALWIND.OBJ" \
	".\Obj32\Debug\ARRAY.OBJ" \
	".\Obj32\Debug\AUSSCHN.OBJ" \
	".\Obj32\Debug\BILDOBJ.OBJ" \
	".\Obj32\Debug\BMPBOX.OBJ" \
	".\Obj32\Debug\CLIPBORD.OBJ" \
	".\Obj32\Debug\COLORBOX.OBJ" \
	".\Obj32\Debug\DBOARRAY.OBJ" \
	".\Obj32\Debug\DBOBJEKT.OBJ" \
	".\Obj32\Debug\DBOGETGI.OBJ" \
	".\Obj32\Debug\DCOLOR.OBJ" \
	".\Obj32\Debug\DdORWnd.obj" \
	".\Obj32\Debug\DELVIEWS.OBJ" \
	".\Obj32\Debug\docprops.obj" \
	".\Obj32\Debug\dragdrop.obj" \
	".\Obj32\Debug\Drawobj2.obj" \
	".\Obj32\Debug\DRW_OBJ1.OBJ" \
	".\Obj32\Debug\eallcprp.obj" \
	".\Obj32\Debug\eallprop.obj" \
	".\Obj32\Debug\EDITTEXT.OBJ" \
	".\Obj32\Debug\ENUMFNAM.OBJ" \
	".\Obj32\Debug\enumobj.obj" \
	".\Obj32\Debug\EXPDLG.OBJ" \
	".\Obj32\Debug\expoprop.obj" \
	".\Obj32\Debug\EXPORT.OBJ" \
	".\Obj32\Debug\expstat2.obj" \
	".\Obj32\Debug\EXPTRANS.OBJ" \
	".\Obj32\Debug\Extfcns1.obj" \
	".\Obj32\Debug\extfcns2.obj" \
	".\Obj32\Debug\ExtFcns3.obj" \
	".\Obj32\Debug\Extfcnsn.obj" \
	".\Obj32\Debug\extmain3.obj" \
	".\Obj32\Debug\Extmmsg2.obj" \
	".\Obj32\Debug\Extqnfy2.obj" \
	".\Obj32\Debug\FEATURE.OBJ" \
	".\Obj32\Debug\frameevt.obj" \
	".\Obj32\Debug\IdentCls.obj" \
	".\Obj32\Debug\IDENTSEL.OBJ" \
	".\Obj32\Debug\IENUMSTR.OBJ" \
	".\Obj32\Debug\impdlg.obj" \
	".\Obj32\Debug\Irisevt2.obj" \
	".\Obj32\Debug\Irismai2.obj" \
	".\Obj32\Debug\Irisopn2.obj" \
	".\Obj32\Debug\Irisuti2.obj" \
	".\Obj32\Debug\LDROPSRC.OBJ" \
	".\Obj32\Debug\LDROPTGT.OBJ" \
	".\Obj32\Debug\LEGDINFO.OBJ" \
	".\Obj32\Debug\LEGEND.OBJ" \
	".\Obj32\Debug\LEGMERKM.OBJ" \
	".\Obj32\Debug\legmrklp.obj" \
	".\Obj32\Debug\legmrkyp.obj" \
	".\Obj32\Debug\LEGTXTED.OBJ" \
	".\Obj32\Debug\LEGUTILS.OBJ" \
	".\Obj32\Debug\LEGWIND.OBJ" \
	".\Obj32\Debug\license.obj" \
	".\Obj32\Debug\LPALWIND.OBJ" \
	".\Obj32\Debug\ManageExtDlg.obj" \
	".\Obj32\Debug\masstab2.obj" \
	".\Obj32\Debug\MENUITEM.OBJ" \
	".\Obj32\Debug\MERKEDIT.OBJ" \
	".\Obj32\Debug\MINITPBD.OBJ" \
	".\Obj32\Debug\modifyid.obj" \
	".\Obj32\Debug\Mru.obj" \
	".\Obj32\Debug\MsgDumper.obj" \
	".\Obj32\Debug\OBJEKTE.OBJ" \
	".\Obj32\Debug\OBJMENU.OBJ" \
	".\Obj32\Debug\OBJMENU1.OBJ" \
	".\Obj32\Debug\OBJOWNDR.OBJ" \
	".\Obj32\Debug\OBJPROP.OBJ" \
	".\Obj32\Debug\OLISTEM.OBJ" \
	".\Obj32\Debug\OPENDB.OBJ" \
	".\Obj32\Debug\ORIDENTS.OBJ" \
	".\Obj32\Debug\OVERVIEW.OBJ" \
	".\Obj32\Debug\PALRECT.OBJ" \
	".\Obj32\Debug\PALWIND.OBJ" \
	".\Obj32\Debug\pntmasks.obj" \
	".\Obj32\Debug\ppalwndr.obj" \
	".\Obj32\Debug\PRINTER.OBJ" \
	".\Obj32\Debug\PRLAYOUT.OBJ" \
	".\Obj32\Debug\PRNTABRT.OBJ" \
	".\Obj32\Debug\PRNTLAYT.OBJ" \
	".\Obj32\Debug\PRNTPROF.OBJ" \
	".\Obj32\Debug\PROFILE.OBJ" \
	".\Obj32\Debug\RECHRES.OBJ" \
	".\Obj32\Debug\RechSheet.obj" \
	".\Obj32\Debug\REGTRIAS.OBJ" \
	".\Obj32\Debug\RELOBJ.OBJ" \
	".\Obj32\Debug\RENDERDB.OBJ" \
	".\Obj32\Debug\RESOURCE.OBJ" \
	".\Obj32\Debug\RGB_HSB.OBJ" \
	".\Obj32\Debug\SAVEOPT.OBJ" \
	".\Obj32\Debug\SCHRIFT.OBJ" \
	".\Obj32\Debug\Selectid.obj" \
	".\Obj32\Debug\selectn.obj" \
	".\Obj32\Debug\selnview.obj" \
	".\Obj32\Debug\selprio.obj" \
	".\Obj32\Debug\SHIFT.OBJ" \
	".\Obj32\Debug\SHIFTOVW.OBJ" \
	".\Obj32\Debug\SIGHTS.OBJ" \
	".\Obj32\Debug\SignOnNew.obj" \
	".\Obj32\Debug\strings.obj" \
	".\Obj32\Debug\TEXTMENU.OBJ" \
	".\Obj32\Debug\TRANSFRM.OBJ" \
	".\Obj32\Debug\TRIAS32.res" \
	".\Obj32\Debug\TRIASPRE.OBJ" \
	".\Obj32\Debug\undodlg.obj" \
	".\Obj32\Debug\UndoRedoDetails.obj" \
	".\Obj32\Debug\viewdrop.obj" \
	".\Obj32\Debug\VIEWTREE.OBJ" \
	".\Obj32\Debug\Vispara3.obj"

".\Obj32\Debug\trias32d.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

# Begin Custom Build - Copying Target to Destination ...
TargetPath=.\Obj32\Debug\trias32d.exe
TargetName=trias32d
InputPath=.\Obj32\Debug\trias32d.exe
SOURCE=$(InputPath)

"rem c:\trias.mvc\trias200\$(TargetName).exe" : $(SOURCE) "$(INTDIR)"\
 "$(OUTDIR)"
   rem copy "$(TargetPath)" c:\trias.mvc\trias200

# End Custom Build

!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Trias32_"
# PROP BASE Intermediate_Dir "Trias32_"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Pseudo"
# PROP Intermediate_Dir "Pseudo"
# PROP Target_Dir ""
OUTDIR=.\Pseudo
INTDIR=.\Pseudo

ALL : "$(OUTDIR)\Trias32.exe"

CLEAN : 
	-@erase "$(INTDIR)\alloprop.obj"
	-@erase "$(INTDIR)\APALWIND.OBJ"
	-@erase "$(INTDIR)\ARRAY.OBJ"
	-@erase "$(INTDIR)\AUSSCHN.OBJ"
	-@erase "$(INTDIR)\BILDOBJ.OBJ"
	-@erase "$(INTDIR)\BMPBOX.OBJ"
	-@erase "$(INTDIR)\CLIPBORD.OBJ"
	-@erase "$(INTDIR)\COLORBOX.OBJ"
	-@erase "$(INTDIR)\DBOARRAY.OBJ"
	-@erase "$(INTDIR)\DBOBJEKT.OBJ"
	-@erase "$(INTDIR)\DBOGETGI.OBJ"
	-@erase "$(INTDIR)\DCOLOR.OBJ"
	-@erase "$(INTDIR)\DdORWnd.obj"
	-@erase "$(INTDIR)\DELVIEWS.OBJ"
	-@erase "$(INTDIR)\docprops.obj"
	-@erase "$(INTDIR)\dragdrop.obj"
	-@erase "$(INTDIR)\Drawobj2.obj"
	-@erase "$(INTDIR)\DRW_OBJ1.OBJ"
	-@erase "$(INTDIR)\eallcprp.obj"
	-@erase "$(INTDIR)\eallprop.obj"
	-@erase "$(INTDIR)\EDITTEXT.OBJ"
	-@erase "$(INTDIR)\ENUMFNAM.OBJ"
	-@erase "$(INTDIR)\enumobj.obj"
	-@erase "$(INTDIR)\EXPDLG.OBJ"
	-@erase "$(INTDIR)\expoprop.obj"
	-@erase "$(INTDIR)\EXPORT.OBJ"
	-@erase "$(INTDIR)\expstat2.obj"
	-@erase "$(INTDIR)\EXPTRANS.OBJ"
	-@erase "$(INTDIR)\Extfcns1.obj"
	-@erase "$(INTDIR)\extfcns2.obj"
	-@erase "$(INTDIR)\ExtFcns3.obj"
	-@erase "$(INTDIR)\Extfcnsn.obj"
	-@erase "$(INTDIR)\extmain3.obj"
	-@erase "$(INTDIR)\Extmmsg2.obj"
	-@erase "$(INTDIR)\Extqnfy2.obj"
	-@erase "$(INTDIR)\FEATURE.OBJ"
	-@erase "$(INTDIR)\frameevt.obj"
	-@erase "$(INTDIR)\IdentCls.obj"
	-@erase "$(INTDIR)\IDENTSEL.OBJ"
	-@erase "$(INTDIR)\IENUMSTR.OBJ"
	-@erase "$(INTDIR)\impdlg.obj"
	-@erase "$(INTDIR)\Irisevt2.obj"
	-@erase "$(INTDIR)\Irismai2.obj"
	-@erase "$(INTDIR)\Irisopn2.obj"
	-@erase "$(INTDIR)\Irisuti2.obj"
	-@erase "$(INTDIR)\LDROPSRC.OBJ"
	-@erase "$(INTDIR)\LDROPTGT.OBJ"
	-@erase "$(INTDIR)\LEGDINFO.OBJ"
	-@erase "$(INTDIR)\LEGEND.OBJ"
	-@erase "$(INTDIR)\LEGMERKM.OBJ"
	-@erase "$(INTDIR)\legmrklp.obj"
	-@erase "$(INTDIR)\legmrkyp.obj"
	-@erase "$(INTDIR)\LEGTXTED.OBJ"
	-@erase "$(INTDIR)\LEGUTILS.OBJ"
	-@erase "$(INTDIR)\LEGWIND.OBJ"
	-@erase "$(INTDIR)\license.obj"
	-@erase "$(INTDIR)\LPALWIND.OBJ"
	-@erase "$(INTDIR)\ManageExtDlg.obj"
	-@erase "$(INTDIR)\masstab2.obj"
	-@erase "$(INTDIR)\MENUITEM.OBJ"
	-@erase "$(INTDIR)\MERKEDIT.OBJ"
	-@erase "$(INTDIR)\MINITPBD.OBJ"
	-@erase "$(INTDIR)\modifyid.obj"
	-@erase "$(INTDIR)\Mru.obj"
	-@erase "$(INTDIR)\OBJEKTE.OBJ"
	-@erase "$(INTDIR)\OBJMENU.OBJ"
	-@erase "$(INTDIR)\OBJMENU1.OBJ"
	-@erase "$(INTDIR)\OBJOWNDR.OBJ"
	-@erase "$(INTDIR)\OBJPROP.OBJ"
	-@erase "$(INTDIR)\OLISTEM.OBJ"
	-@erase "$(INTDIR)\OPENDB.OBJ"
	-@erase "$(INTDIR)\ORIDENTS.OBJ"
	-@erase "$(INTDIR)\OVERVIEW.OBJ"
	-@erase "$(INTDIR)\PALRECT.OBJ"
	-@erase "$(INTDIR)\PALWIND.OBJ"
	-@erase "$(INTDIR)\pntmasks.obj"
	-@erase "$(INTDIR)\ppalwndr.obj"
	-@erase "$(INTDIR)\PRINTER.OBJ"
	-@erase "$(INTDIR)\PRLAYOUT.OBJ"
	-@erase "$(INTDIR)\PRNTABRT.OBJ"
	-@erase "$(INTDIR)\PRNTLAYT.OBJ"
	-@erase "$(INTDIR)\PRNTPROF.OBJ"
	-@erase "$(INTDIR)\PROFILE.OBJ"
	-@erase "$(INTDIR)\RECHRES.OBJ"
	-@erase "$(INTDIR)\RechSheet.obj"
	-@erase "$(INTDIR)\REGTRIAS.OBJ"
	-@erase "$(INTDIR)\RELOBJ.OBJ"
	-@erase "$(INTDIR)\RENDERDB.OBJ"
	-@erase "$(INTDIR)\RESOURCE.OBJ"
	-@erase "$(INTDIR)\RGB_HSB.OBJ"
	-@erase "$(INTDIR)\SAVEOPT.OBJ"
	-@erase "$(INTDIR)\SCHRIFT.OBJ"
	-@erase "$(INTDIR)\Selectid.obj"
	-@erase "$(INTDIR)\selectn.obj"
	-@erase "$(INTDIR)\selnview.obj"
	-@erase "$(INTDIR)\selprio.obj"
	-@erase "$(INTDIR)\SHIFT.OBJ"
	-@erase "$(INTDIR)\SHIFTOVW.OBJ"
	-@erase "$(INTDIR)\SIGHTS.OBJ"
	-@erase "$(INTDIR)\SignOnNew.obj"
	-@erase "$(INTDIR)\strings.obj"
	-@erase "$(INTDIR)\TEXTMENU.OBJ"
	-@erase "$(INTDIR)\TRANSFRM.OBJ"
	-@erase "$(INTDIR)\Trias32.res"
	-@erase "$(INTDIR)\Trias42.pch"
	-@erase "$(INTDIR)\TRIASPRE.OBJ"
	-@erase "$(INTDIR)\undodlg.obj"
	-@erase "$(INTDIR)\vc40.pdb"
	-@erase "$(INTDIR)\viewdrop.obj"
	-@erase "$(INTDIR)\VIEWTREE.OBJ"
	-@erase "$(INTDIR)\Vispara3.obj"
	-@erase "$(OUTDIR)\Trias32.exe"
	-@erase "$(OUTDIR)\Trias32.pdb"
	-@erase ".\LEGMERKL.CXX"
	-@erase ".\LEGMERKL.HXX"
	-@erase ".\LEGMERKY.CXX"
	-@erase ".\LEGMERKY.HXX"
	-@erase ".\YY_MYREF.H"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

# ADD BASE CPP /nologo /MD /W3 /WX /GX /Og /Oi /Os /Ob1 /Gf /Gy /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "__CV__" /D "STRICT" /D "MSWIND" /D "DLL" /D "__TRIASEXE__" /D "OS_WIN_95" /D "OS_STL_ASSERT" /D "OS_NO_WSTRING" /D "OS_ALTERNATIVE_STRING_NAMES" /D "__ATL_USED__" /D "QI_EXCEPTION" /D "OS_NO_STREAM_SUPPORT" /D "_GERMAN_RESOURCES" /D "OS_NO_ALLOCATORS" /D "TRANSPARENT_PATTERNS" /Yu"triaspre.hxx" /c
# SUBTRACT BASE CPP /Ox /Oa /Ow /Fr
# ADD CPP /nologo /MD /W3 /WX /GX /Zi /Og /Oi /Os /Ob1 /Gf /Gy /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "__CV__" /D "STRICT" /D "MSWIND" /D "DLL" /D "__TRIASEXE__" /D "OS_WIN_95" /D "OS_STL_ASSERT" /D "OS_NO_WSTRING" /D "OS_ALTERNATIVE_STRING_NAMES" /D "__ATL_USED__" /D "QI_EXCEPTION" /D "OS_NO_STREAM_SUPPORT" /D "_GERMAN_RESOURCES" /D "OS_NO_ALLOCATORS" /D "TRANSPARENT_PATTERNS" /D "_ATL_NEW_CCOMSTRUCT" /Yu"triaspre.hxx" /c
# SUBTRACT CPP /Ox /Oa /Ow /Fr
CPP_PROJ=/nologo /MD /W3 /WX /GX /Zi /Og /Oi /Os /Ob1 /Gf /Gy /D "NDEBUG" /D\
 "WIN32" /D "_WINDOWS" /D "__CV__" /D "STRICT" /D "MSWIND" /D "DLL" /D\
 "__TRIASEXE__" /D "OS_WIN_95" /D "OS_STL_ASSERT" /D "OS_NO_WSTRING" /D\
 "OS_ALTERNATIVE_STRING_NAMES" /D "__ATL_USED__" /D "QI_EXCEPTION" /D\
 "OS_NO_STREAM_SUPPORT" /D "_GERMAN_RESOURCES" /D "OS_NO_ALLOCATORS" /D\
 "TRANSPARENT_PATTERNS" /D "_ATL_NEW_CCOMSTRUCT" /Fp"$(INTDIR)/Trias42.pch"\
 /Yu"triaspre.hxx" /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c 
CPP_OBJS=.\Pseudo/
CPP_SBRS=.\.
# ADD BASE MTL /nologo /D "NDEBUG" /win32
# ADD MTL /nologo /D "NDEBUG" /win32
MTL_PROJ=/nologo /D "NDEBUG" /win32 
# ADD BASE RSC /l 0x407 /i ".." /d "NDEBUG" /d "_GERMAN_RESOURCES" /d "_NEWORMENU"
# ADD RSC /l 0x407 /i ".." /d "NDEBUG" /d "_GERMAN_RESOURCES" /d "_NEWORMENU"
RSC_PROJ=/l 0x407 /fo"$(INTDIR)/Trias32.res" /i ".." /d "NDEBUG" /d\
 "_GERMAN_RESOURCES" /d "_NEWORMENU" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/Trias42.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
# ADD BASE LINK32 TRiASTlb.lib trias323.lib trias322.lib trias321.lib tfrmwrkl.lib lol.lib tfrmwork.lib cont32r.lib stdcppr.lib ospace2r.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib comctl32.lib /nologo /machine:I386 /out:"Release/Trias32.exe" /SUBSYSTEM:windows,4.0
# SUBTRACT BASE LINK32 /pdb:none /incremental:yes /map /debug
# ADD LINK32 TRiASTlb.lib trias323.lib trias322.lib trias321.lib tfrmwrkl.lib lol.lib tfrmwork.lib cont32r.lib stdcppr.lib ospace2r.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib comctl32.lib /nologo /debug /machine:I386 /out:"Pseudo/Trias32.exe" /SUBSYSTEM:windows,4.0
# SUBTRACT LINK32 /pdb:none /incremental:yes /map
LINK32_FLAGS=TRiASTlb.lib trias323.lib trias322.lib trias321.lib tfrmwrkl.lib\
 lol.lib tfrmwork.lib cont32r.lib stdcppr.lib ospace2r.lib kernel32.lib\
 user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib\
 ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib comctl32.lib /nologo\
 /incremental:no /pdb:"$(OUTDIR)/Trias32.pdb" /debug /machine:I386\
 /def:".\obj32\TRIAS32.DEF" /out:"$(OUTDIR)/Trias32.exe" /SUBSYSTEM:windows,4.0 
DEF_FILE= \
	".\obj32\TRIAS32.DEF"
LINK32_OBJS= \
	"$(INTDIR)\alloprop.obj" \
	"$(INTDIR)\APALWIND.OBJ" \
	"$(INTDIR)\ARRAY.OBJ" \
	"$(INTDIR)\AUSSCHN.OBJ" \
	"$(INTDIR)\BILDOBJ.OBJ" \
	"$(INTDIR)\BMPBOX.OBJ" \
	"$(INTDIR)\CLIPBORD.OBJ" \
	"$(INTDIR)\COLORBOX.OBJ" \
	"$(INTDIR)\DBOARRAY.OBJ" \
	"$(INTDIR)\DBOBJEKT.OBJ" \
	"$(INTDIR)\DBOGETGI.OBJ" \
	"$(INTDIR)\DCOLOR.OBJ" \
	"$(INTDIR)\DdORWnd.obj" \
	"$(INTDIR)\DELVIEWS.OBJ" \
	"$(INTDIR)\docprops.obj" \
	"$(INTDIR)\dragdrop.obj" \
	"$(INTDIR)\Drawobj2.obj" \
	"$(INTDIR)\DRW_OBJ1.OBJ" \
	"$(INTDIR)\eallcprp.obj" \
	"$(INTDIR)\eallprop.obj" \
	"$(INTDIR)\EDITTEXT.OBJ" \
	"$(INTDIR)\ENUMFNAM.OBJ" \
	"$(INTDIR)\enumobj.obj" \
	"$(INTDIR)\EXPDLG.OBJ" \
	"$(INTDIR)\expoprop.obj" \
	"$(INTDIR)\EXPORT.OBJ" \
	"$(INTDIR)\expstat2.obj" \
	"$(INTDIR)\EXPTRANS.OBJ" \
	"$(INTDIR)\Extfcns1.obj" \
	"$(INTDIR)\extfcns2.obj" \
	"$(INTDIR)\ExtFcns3.obj" \
	"$(INTDIR)\Extfcnsn.obj" \
	"$(INTDIR)\extmain3.obj" \
	"$(INTDIR)\Extmmsg2.obj" \
	"$(INTDIR)\Extqnfy2.obj" \
	"$(INTDIR)\FEATURE.OBJ" \
	"$(INTDIR)\frameevt.obj" \
	"$(INTDIR)\IdentCls.obj" \
	"$(INTDIR)\IDENTSEL.OBJ" \
	"$(INTDIR)\IENUMSTR.OBJ" \
	"$(INTDIR)\impdlg.obj" \
	"$(INTDIR)\Irisevt2.obj" \
	"$(INTDIR)\Irismai2.obj" \
	"$(INTDIR)\Irisopn2.obj" \
	"$(INTDIR)\Irisuti2.obj" \
	"$(INTDIR)\LDROPSRC.OBJ" \
	"$(INTDIR)\LDROPTGT.OBJ" \
	"$(INTDIR)\LEGDINFO.OBJ" \
	"$(INTDIR)\LEGEND.OBJ" \
	"$(INTDIR)\LEGMERKM.OBJ" \
	"$(INTDIR)\legmrklp.obj" \
	"$(INTDIR)\legmrkyp.obj" \
	"$(INTDIR)\LEGTXTED.OBJ" \
	"$(INTDIR)\LEGUTILS.OBJ" \
	"$(INTDIR)\LEGWIND.OBJ" \
	"$(INTDIR)\license.obj" \
	"$(INTDIR)\LPALWIND.OBJ" \
	"$(INTDIR)\ManageExtDlg.obj" \
	"$(INTDIR)\masstab2.obj" \
	"$(INTDIR)\MENUITEM.OBJ" \
	"$(INTDIR)\MERKEDIT.OBJ" \
	"$(INTDIR)\MINITPBD.OBJ" \
	"$(INTDIR)\modifyid.obj" \
	"$(INTDIR)\Mru.obj" \
	"$(INTDIR)\OBJEKTE.OBJ" \
	"$(INTDIR)\OBJMENU.OBJ" \
	"$(INTDIR)\OBJMENU1.OBJ" \
	"$(INTDIR)\OBJOWNDR.OBJ" \
	"$(INTDIR)\OBJPROP.OBJ" \
	"$(INTDIR)\OLISTEM.OBJ" \
	"$(INTDIR)\OPENDB.OBJ" \
	"$(INTDIR)\ORIDENTS.OBJ" \
	"$(INTDIR)\OVERVIEW.OBJ" \
	"$(INTDIR)\PALRECT.OBJ" \
	"$(INTDIR)\PALWIND.OBJ" \
	"$(INTDIR)\pntmasks.obj" \
	"$(INTDIR)\ppalwndr.obj" \
	"$(INTDIR)\PRINTER.OBJ" \
	"$(INTDIR)\PRLAYOUT.OBJ" \
	"$(INTDIR)\PRNTABRT.OBJ" \
	"$(INTDIR)\PRNTLAYT.OBJ" \
	"$(INTDIR)\PRNTPROF.OBJ" \
	"$(INTDIR)\PROFILE.OBJ" \
	"$(INTDIR)\RECHRES.OBJ" \
	"$(INTDIR)\RechSheet.obj" \
	"$(INTDIR)\REGTRIAS.OBJ" \
	"$(INTDIR)\RELOBJ.OBJ" \
	"$(INTDIR)\RENDERDB.OBJ" \
	"$(INTDIR)\RESOURCE.OBJ" \
	"$(INTDIR)\RGB_HSB.OBJ" \
	"$(INTDIR)\SAVEOPT.OBJ" \
	"$(INTDIR)\SCHRIFT.OBJ" \
	"$(INTDIR)\Selectid.obj" \
	"$(INTDIR)\selectn.obj" \
	"$(INTDIR)\selnview.obj" \
	"$(INTDIR)\selprio.obj" \
	"$(INTDIR)\SHIFT.OBJ" \
	"$(INTDIR)\SHIFTOVW.OBJ" \
	"$(INTDIR)\SIGHTS.OBJ" \
	"$(INTDIR)\SignOnNew.obj" \
	"$(INTDIR)\strings.obj" \
	"$(INTDIR)\TEXTMENU.OBJ" \
	"$(INTDIR)\TRANSFRM.OBJ" \
	"$(INTDIR)\Trias32.res" \
	"$(INTDIR)\TRIASPRE.OBJ" \
	"$(INTDIR)\undodlg.obj" \
	"$(INTDIR)\viewdrop.obj" \
	"$(INTDIR)\VIEWTREE.OBJ" \
	"$(INTDIR)\Vispara3.obj"

"$(OUTDIR)\Trias32.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ENDIF 

.c{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.c{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

################################################################################
# Begin Target

# Name "Trias32 - Win32 Release"
# Name "Trias32 - Win32 Debug"
# Name "Trias32 - Win32 Pseudo Debug"

!IF  "$(CFG)" == "Trias32 - Win32 Release"

!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"

!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"

!ENDIF 

################################################################################
# Begin Source File

SOURCE=.\OLISTEM.CXX
DEP_CPP_OLIST=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\RELOBJ.HXX"\
	".\SAVEOPT.H"\
	".\SCHRIFT.HXX"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\triaspre.hxx"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	

!IF  "$(CFG)" == "Trias32 - Win32 Release"


"$(INTDIR)\OLISTEM.OBJ" : $(SOURCE) $(DEP_CPP_OLIST) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"


".\Obj32\Debug\OLISTEM.OBJ" : $(SOURCE) $(DEP_CPP_OLIST) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\OLISTEM.SBR" : $(SOURCE) $(DEP_CPP_OLIST) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"


"$(INTDIR)\OLISTEM.OBJ" : $(SOURCE) $(DEP_CPP_OLIST) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\RENDERDB.CXX
DEP_CPP_RENDE=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\CPTriastlb.h"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\extfcnsn.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\extmain3.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\RENDERDB.HXX"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\strings.h"\
	".\triaspre.hxx"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\Dirisole.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TRiASHelper.h"\
	{$(INCLUDE)}"\triasprv.h"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	

!IF  "$(CFG)" == "Trias32 - Win32 Release"


"$(INTDIR)\RENDERDB.OBJ" : $(SOURCE) $(DEP_CPP_RENDE) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"


".\Obj32\Debug\RENDERDB.OBJ" : $(SOURCE) $(DEP_CPP_RENDE) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\RENDERDB.SBR" : $(SOURCE) $(DEP_CPP_RENDE) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"


"$(INTDIR)\RENDERDB.OBJ" : $(SOURCE) $(DEP_CPP_RENDE) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\TRIASPRE.CXX
DEP_CPP_TRIAS=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\triaspre.hxx"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TRIAS03M.HXX"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	

!IF  "$(CFG)" == "Trias32 - Win32 Release"

# ADD CPP /Yc"triaspre.hxx"

BuildCmds= \
	$(CPP) /nologo /MD /W3 /WX /GX /Og /Oi /Os /Ob1 /Gf /Gy /D "NDEBUG" /D "WIN32"\
 /D "_WINDOWS" /D "__CV__" /D "STRICT" /D "MSWIND" /D "DLL" /D "__TRIASEXE__" /D\
 "OS_WIN_95" /D "OS_STL_ASSERT" /D "OS_NO_WSTRING" /D\
 "OS_ALTERNATIVE_STRING_NAMES" /D "__ATL_USED__" /D "QI_EXCEPTION" /D\
 "OS_NO_STREAM_SUPPORT" /D "_GERMAN_RESOURCES" /D "OS_NO_ALLOCATORS" /D\
 "TRANSPARENT_PATTERNS" /D "_ATL_NEW_CCOMSTRUCT" /Fp"$(INTDIR)/Trias42.pch"\
 /Yc"triaspre.hxx" /Fo"$(INTDIR)/" /c $(SOURCE) \
	

"$(INTDIR)\TRIASPRE.OBJ" : $(SOURCE) $(DEP_CPP_TRIAS) "$(INTDIR)"
   $(BuildCmds)

"$(INTDIR)\Trias42.pch" : $(SOURCE) $(DEP_CPP_TRIAS) "$(INTDIR)"
   $(BuildCmds)

!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"

# ADD CPP /Yc"triaspre.hxx"

BuildCmds= \
	$(CPP) /nologo /MDd /W3 /WX /Gm /GX /Zi /Od /D "_DEBUG" /D "WIN32" /D\
 "_WINDOWS" /D "__CV__" /D "STRICT" /D "MSWIND" /D "DLL" /D "__TRIASEXE__" /D\
 "OS_WIN_95" /D "OS_STL_ASSERT" /D "OS_NO_WSTRING" /D\
 "OS_ALTERNATIVE_STRING_NAMES" /D "__ATL_USED__" /D "QI_EXCEPTION" /D\
 "OS_NO_STREAM_SUPPORT" /D "_GERMAN_RESOURCES" /D "OS_NO_ALLOCATORS" /D\
 "TRANSPARENT_PATTERNS" /D "_ATL_NEW_CCOMSTRUCT" /FR"Obj32/Debug/"\
 /Fp"Obj32/Debug/trias32d.pch" /Yc"triaspre.hxx" /Fo"Obj32/Debug/"\
 /Fd"Obj32/Debug/trias32d.pdb" /c $(SOURCE) \
	

".\Obj32\Debug\TRIASPRE.OBJ" : $(SOURCE) $(DEP_CPP_TRIAS) "$(INTDIR)"
   $(BuildCmds)

".\Obj32\Debug\TRIASPRE.SBR" : $(SOURCE) $(DEP_CPP_TRIAS) "$(INTDIR)"
   $(BuildCmds)

".\Obj32\Debug\trias32d.pch" : $(SOURCE) $(DEP_CPP_TRIAS) "$(INTDIR)"
   $(BuildCmds)

!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"

# ADD BASE CPP /Yc"triaspre.hxx"
# ADD CPP /Yc"triaspre.hxx"

BuildCmds= \
	$(CPP) /nologo /MD /W3 /WX /GX /Zi /Og /Oi /Os /Ob1 /Gf /Gy /D "NDEBUG" /D\
 "WIN32" /D "_WINDOWS" /D "__CV__" /D "STRICT" /D "MSWIND" /D "DLL" /D\
 "__TRIASEXE__" /D "OS_WIN_95" /D "OS_STL_ASSERT" /D "OS_NO_WSTRING" /D\
 "OS_ALTERNATIVE_STRING_NAMES" /D "__ATL_USED__" /D "QI_EXCEPTION" /D\
 "OS_NO_STREAM_SUPPORT" /D "_GERMAN_RESOURCES" /D "OS_NO_ALLOCATORS" /D\
 "TRANSPARENT_PATTERNS" /D "_ATL_NEW_CCOMSTRUCT" /Fp"$(INTDIR)/Trias42.pch"\
 /Yc"triaspre.hxx" /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c $(SOURCE) \
	

"$(INTDIR)\TRIASPRE.OBJ" : $(SOURCE) $(DEP_CPP_TRIAS) "$(INTDIR)"
   $(BuildCmds)

"$(INTDIR)\Trias42.pch" : $(SOURCE) $(DEP_CPP_TRIAS) "$(INTDIR)"
   $(BuildCmds)

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\DRW_OBJ1.CXX
DEP_CPP_DRW_O=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\triaspre.hxx"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\XTENSND.H"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	

!IF  "$(CFG)" == "Trias32 - Win32 Release"


"$(INTDIR)\DRW_OBJ1.OBJ" : $(SOURCE) $(DEP_CPP_DRW_O) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"


".\Obj32\Debug\DRW_OBJ1.OBJ" : $(SOURCE) $(DEP_CPP_DRW_O) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\DRW_OBJ1.SBR" : $(SOURCE) $(DEP_CPP_DRW_O) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"


"$(INTDIR)\DRW_OBJ1.OBJ" : $(SOURCE) $(DEP_CPP_DRW_O) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\DBOBJEKT.CXX
DEP_CPP_DBOBJ=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\RELOBJ.HXX"\
	".\SAVEOPT.H"\
	".\SCHRIFT.HXX"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\strings.h"\
	".\triaspre.hxx"\
	".\triasres.h"\
	".\Viewtree.hxx"\
	".\VIEWTREE.INL"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\Dirisole.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\iunredo.hxx"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\registry.hxx"\
	{$(INCLUDE)}"\RELLISTE.HXX"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\UNDOGUID.H"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\XTENSND.H"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	
NODEP_CPP_DBOBJ=\
	".\trias16r.h"\
	

!IF  "$(CFG)" == "Trias32 - Win32 Release"


"$(INTDIR)\DBOBJEKT.OBJ" : $(SOURCE) $(DEP_CPP_DBOBJ) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"


".\Obj32\Debug\DBOBJEKT.OBJ" : $(SOURCE) $(DEP_CPP_DBOBJ) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\DBOBJEKT.SBR" : $(SOURCE) $(DEP_CPP_DBOBJ) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"


"$(INTDIR)\DBOBJEKT.OBJ" : $(SOURCE) $(DEP_CPP_DBOBJ) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\TRANSFRM.CXX
DEP_CPP_TRANS=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\triaspre.hxx"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	

!IF  "$(CFG)" == "Trias32 - Win32 Release"


"$(INTDIR)\TRANSFRM.OBJ" : $(SOURCE) $(DEP_CPP_TRANS) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"


".\Obj32\Debug\TRANSFRM.OBJ" : $(SOURCE) $(DEP_CPP_TRANS) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\TRANSFRM.SBR" : $(SOURCE) $(DEP_CPP_TRANS) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"


"$(INTDIR)\TRANSFRM.OBJ" : $(SOURCE) $(DEP_CPP_TRANS) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\RELOBJ.CXX
DEP_CPP_RELOB=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\RELOBJ.HXX"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\triaspre.hxx"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	

!IF  "$(CFG)" == "Trias32 - Win32 Release"


"$(INTDIR)\RELOBJ.OBJ" : $(SOURCE) $(DEP_CPP_RELOB) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"


".\Obj32\Debug\RELOBJ.OBJ" : $(SOURCE) $(DEP_CPP_RELOB) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\RELOBJ.SBR" : $(SOURCE) $(DEP_CPP_RELOB) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"


"$(INTDIR)\RELOBJ.OBJ" : $(SOURCE) $(DEP_CPP_RELOB) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\DBOGETGI.CXX
DEP_CPP_DBOGE=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\Minitpbd.hxx"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\RELOBJ.HXX"\
	".\SAVEOPT.H"\
	".\SCHRIFT.HXX"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\triaspre.hxx"\
	".\triasres.h"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	
NODEP_CPP_DBOGE=\
	".\trias16r.h"\
	

!IF  "$(CFG)" == "Trias32 - Win32 Release"


"$(INTDIR)\DBOGETGI.OBJ" : $(SOURCE) $(DEP_CPP_DBOGE) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"


".\Obj32\Debug\DBOGETGI.OBJ" : $(SOURCE) $(DEP_CPP_DBOGE) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\DBOGETGI.SBR" : $(SOURCE) $(DEP_CPP_DBOGE) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"


"$(INTDIR)\DBOGETGI.OBJ" : $(SOURCE) $(DEP_CPP_DBOGE) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\SHIFT.CXX
DEP_CPP_SHIFT=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\Shift.hxx"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\triaspre.hxx"\
	".\triasres.h"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	
NODEP_CPP_SHIFT=\
	".\trias16r.h"\
	

!IF  "$(CFG)" == "Trias32 - Win32 Release"


"$(INTDIR)\SHIFT.OBJ" : $(SOURCE) $(DEP_CPP_SHIFT) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"


".\Obj32\Debug\SHIFT.OBJ" : $(SOURCE) $(DEP_CPP_SHIFT) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\SHIFT.SBR" : $(SOURCE) $(DEP_CPP_SHIFT) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"


"$(INTDIR)\SHIFT.OBJ" : $(SOURCE) $(DEP_CPP_SHIFT) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\SCHRIFT.CXX
DEP_CPP_SCHRI=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SCHRIFT.HXX"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\triaspre.hxx"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\XTENSND.H"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	

!IF  "$(CFG)" == "Trias32 - Win32 Release"


"$(INTDIR)\SCHRIFT.OBJ" : $(SOURCE) $(DEP_CPP_SCHRI) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"


".\Obj32\Debug\SCHRIFT.OBJ" : $(SOURCE) $(DEP_CPP_SCHRI) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\SCHRIFT.SBR" : $(SOURCE) $(DEP_CPP_SCHRI) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"


"$(INTDIR)\SCHRIFT.OBJ" : $(SOURCE) $(DEP_CPP_SCHRI) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\CLIPBORD.CXX
DEP_CPP_CLIPB=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\strings.h"\
	".\triaspre.hxx"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\prntpars.hxx"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	

!IF  "$(CFG)" == "Trias32 - Win32 Release"


"$(INTDIR)\CLIPBORD.OBJ" : $(SOURCE) $(DEP_CPP_CLIPB) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"


".\Obj32\Debug\CLIPBORD.OBJ" : $(SOURCE) $(DEP_CPP_CLIPB) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\CLIPBORD.SBR" : $(SOURCE) $(DEP_CPP_CLIPB) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"


"$(INTDIR)\CLIPBORD.OBJ" : $(SOURCE) $(DEP_CPP_CLIPB) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\SHIFTOVW.CXX
DEP_CPP_SHIFTO=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SHIFTOVW.HXX"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\triaspre.hxx"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	

!IF  "$(CFG)" == "Trias32 - Win32 Release"


"$(INTDIR)\SHIFTOVW.OBJ" : $(SOURCE) $(DEP_CPP_SHIFTO) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"


".\Obj32\Debug\SHIFTOVW.OBJ" : $(SOURCE) $(DEP_CPP_SHIFTO) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\SHIFTOVW.SBR" : $(SOURCE) $(DEP_CPP_SHIFTO) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"


"$(INTDIR)\SHIFTOVW.OBJ" : $(SOURCE) $(DEP_CPP_SHIFTO) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\TEXTMENU.CXX
DEP_CPP_TEXTM=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\editro.hxx"\
	".\EDITTEXT.H"\
	".\EDITTEXT.HXX"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SCHRIFT.HXX"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\triaspre.hxx"\
	".\triasres.h"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\iunredo.hxx"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\UNDOGUID.H"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	
NODEP_CPP_TEXTM=\
	".\trias16r.h"\
	

!IF  "$(CFG)" == "Trias32 - Win32 Release"


"$(INTDIR)\TEXTMENU.OBJ" : $(SOURCE) $(DEP_CPP_TEXTM) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"


".\Obj32\Debug\TEXTMENU.OBJ" : $(SOURCE) $(DEP_CPP_TEXTM) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\TEXTMENU.SBR" : $(SOURCE) $(DEP_CPP_TEXTM) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"


"$(INTDIR)\TEXTMENU.OBJ" : $(SOURCE) $(DEP_CPP_TEXTM) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\DBOARRAY.CXX
DEP_CPP_DBOAR=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\triaspre.hxx"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	

!IF  "$(CFG)" == "Trias32 - Win32 Release"


"$(INTDIR)\DBOARRAY.OBJ" : $(SOURCE) $(DEP_CPP_DBOAR) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"


".\Obj32\Debug\DBOARRAY.OBJ" : $(SOURCE) $(DEP_CPP_DBOAR) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\DBOARRAY.SBR" : $(SOURCE) $(DEP_CPP_DBOAR) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"


"$(INTDIR)\DBOARRAY.OBJ" : $(SOURCE) $(DEP_CPP_DBOAR) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\EXPDLG.CXX

!IF  "$(CFG)" == "Trias32 - Win32 Release"

DEP_CPP_EXPDL=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\cordprop.hxx"\
	".\CPTriastlb.h"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\Expdlg.hxx"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\extfcnsn.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\extmain3.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\strings.h"\
	".\triaspre.hxx"\
	".\triasres.h"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\Dirisole.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\Eonrguid.h"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\Impexp.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\IXTNEXT.HXX"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\regprop.hxx"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TRiASHelper.h"\
	{$(INCLUDE)}"\triasprv.h"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\xtsnguid.h"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	
NODEP_CPP_EXPDL=\
	".\trias16r.h"\
	

"$(INTDIR)\EXPDLG.OBJ" : $(SOURCE) $(DEP_CPP_EXPDL) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"

DEP_CPP_EXPDL=\
	".\cordprop.hxx"\
	".\CPTriastlb.h"\
	".\Expdlg.hxx"\
	".\extfcns.hxx"\
	".\extfcnsn.hxx"\
	".\extmain3.hxx"\
	".\strings.h"\
	".\triaspre.hxx"\
	".\triasres.h"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dirisole.h"\
	{$(INCLUDE)}"\Eonrguid.h"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\Impexp.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\IXTNEXT.HXX"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\regprop.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\TRiASHelper.h"\
	{$(INCLUDE)}"\triasprv.h"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\xtsnguid.h"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	
NODEP_CPP_EXPDL=\
	".\trias16r.h"\
	

".\Obj32\Debug\EXPDLG.OBJ" : $(SOURCE) $(DEP_CPP_EXPDL) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\EXPDLG.SBR" : $(SOURCE) $(DEP_CPP_EXPDL) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"

DEP_CPP_EXPDL=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\cordprop.hxx"\
	".\CPTriastlb.h"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\Expdlg.hxx"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\extfcnsn.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\extmain3.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\strings.h"\
	".\triaspre.hxx"\
	".\triasres.h"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\Dirisole.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\Eonrguid.h"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\Impexp.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\IXTNEXT.HXX"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\regprop.hxx"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TRiASHelper.h"\
	{$(INCLUDE)}"\triasprv.h"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\xtsnguid.h"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	
NODEP_CPP_EXPDL=\
	".\trias16r.h"\
	

"$(INTDIR)\EXPDLG.OBJ" : $(SOURCE) $(DEP_CPP_EXPDL) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\EXPORT.CXX
DEP_CPP_EXPOR=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\CPTriastlb.h"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\Expdlg.hxx"\
	".\EXPORT.H"\
	".\Export.hxx"\
	".\EXPSTAT.HXX"\
	".\EXPTRANS.H"\
	".\EXPTRANS.HXX"\
	".\extfcns.hxx"\
	".\extfcnsn.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\extmain3.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\strings.h"\
	".\triaspre.hxx"\
	".\triasres.h"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\Dirisole.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\Impexp.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\statguid.h"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TRiASHelper.h"\
	{$(INCLUDE)}"\triasprv.h"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	
NODEP_CPP_EXPOR=\
	".\trias16r.h"\
	

!IF  "$(CFG)" == "Trias32 - Win32 Release"


"$(INTDIR)\EXPORT.OBJ" : $(SOURCE) $(DEP_CPP_EXPOR) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"


".\Obj32\Debug\EXPORT.OBJ" : $(SOURCE) $(DEP_CPP_EXPOR) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\EXPORT.SBR" : $(SOURCE) $(DEP_CPP_EXPOR) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"


"$(INTDIR)\EXPORT.OBJ" : $(SOURCE) $(DEP_CPP_EXPOR) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\EXPTRANS.CXX
DEP_CPP_EXPTR=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\EXPTRANS.HXX"\
	".\extfcns.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\triaspre.hxx"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	

!IF  "$(CFG)" == "Trias32 - Win32 Release"


"$(INTDIR)\EXPTRANS.OBJ" : $(SOURCE) $(DEP_CPP_EXPTR) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"


".\Obj32\Debug\EXPTRANS.OBJ" : $(SOURCE) $(DEP_CPP_EXPTR) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\EXPTRANS.SBR" : $(SOURCE) $(DEP_CPP_EXPTR) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"


"$(INTDIR)\EXPTRANS.OBJ" : $(SOURCE) $(DEP_CPP_EXPTR) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\expstat2.cxx
DEP_CPP_EXPST=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPSTAT.HXX"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\triaspre.hxx"\
	".\triasres.h"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\statguid.h"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	
NODEP_CPP_EXPST=\
	".\trias16r.h"\
	

!IF  "$(CFG)" == "Trias32 - Win32 Release"


"$(INTDIR)\expstat2.obj" : $(SOURCE) $(DEP_CPP_EXPST) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"


".\Obj32\Debug\expstat2.obj" : $(SOURCE) $(DEP_CPP_EXPST) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\expstat2.sbr" : $(SOURCE) $(DEP_CPP_EXPST) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"


"$(INTDIR)\expstat2.obj" : $(SOURCE) $(DEP_CPP_EXPST) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\expoprop.cxx
DEP_CPP_EXPOP=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\Expdlg.hxx"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\triaspre.hxx"\
	".\triasres.h"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\Impexp.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	
NODEP_CPP_EXPOP=\
	".\trias16r.h"\
	

!IF  "$(CFG)" == "Trias32 - Win32 Release"


"$(INTDIR)\expoprop.obj" : $(SOURCE) $(DEP_CPP_EXPOP) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"


".\Obj32\Debug\expoprop.obj" : $(SOURCE) $(DEP_CPP_EXPOP) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\expoprop.sbr" : $(SOURCE) $(DEP_CPP_EXPOP) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"


"$(INTDIR)\expoprop.obj" : $(SOURCE) $(DEP_CPP_EXPOP) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\LDROPSRC.CXX
DEP_CPP_LDROP=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LDROPSRC.HXX"\
	".\Legdinfo.hxx"\
	".\LEGENDE.H"\
	".\LEGWIND.HXX"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\triaspre.hxx"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	

!IF  "$(CFG)" == "Trias32 - Win32 Release"


"$(INTDIR)\LDROPSRC.OBJ" : $(SOURCE) $(DEP_CPP_LDROP) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"


".\Obj32\Debug\LDROPSRC.OBJ" : $(SOURCE) $(DEP_CPP_LDROP) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\LDROPSRC.SBR" : $(SOURCE) $(DEP_CPP_LDROP) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"


"$(INTDIR)\LDROPSRC.OBJ" : $(SOURCE) $(DEP_CPP_LDROP) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\LDROPTGT.CXX
DEP_CPP_LDROPT=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LDROPTGT.HXX"\
	".\Legdinfo.hxx"\
	".\LEGENDE.H"\
	".\LEGWIND.HXX"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\triaspre.hxx"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	

!IF  "$(CFG)" == "Trias32 - Win32 Release"


"$(INTDIR)\LDROPTGT.OBJ" : $(SOURCE) $(DEP_CPP_LDROPT) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"


".\Obj32\Debug\LDROPTGT.OBJ" : $(SOURCE) $(DEP_CPP_LDROPT) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\LDROPTGT.SBR" : $(SOURCE) $(DEP_CPP_LDROPT) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"


"$(INTDIR)\LDROPTGT.OBJ" : $(SOURCE) $(DEP_CPP_LDROPT) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\LEGDINFO.CXX
DEP_CPP_LEGDI=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\Legdinfo.hxx"\
	".\LEGDINFO.INL"\
	".\LEGENDE.H"\
	".\LEGMERKM.HXX"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\triaspre.hxx"\
	".\triasres.h"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	
NODEP_CPP_LEGDI=\
	".\trias16r.h"\
	

!IF  "$(CFG)" == "Trias32 - Win32 Release"


"$(INTDIR)\LEGDINFO.OBJ" : $(SOURCE) $(DEP_CPP_LEGDI) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"


".\Obj32\Debug\LEGDINFO.OBJ" : $(SOURCE) $(DEP_CPP_LEGDI) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\LEGDINFO.SBR" : $(SOURCE) $(DEP_CPP_LEGDI) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"


"$(INTDIR)\LEGDINFO.OBJ" : $(SOURCE) $(DEP_CPP_LEGDI) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\LEGEND.CXX
DEP_CPP_LEGEN=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\Legdinfo.hxx"\
	".\LEGDINFO.INL"\
	".\LEGENDE.H"\
	".\Legende.hxx"\
	".\LEGMERKM.HXX"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\Prlayout.hxx"\
	".\prlaytyp.hxx"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\triaspre.hxx"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	

!IF  "$(CFG)" == "Trias32 - Win32 Release"


"$(INTDIR)\LEGEND.OBJ" : $(SOURCE) $(DEP_CPP_LEGEN) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"


".\Obj32\Debug\LEGEND.OBJ" : $(SOURCE) $(DEP_CPP_LEGEN) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\LEGEND.SBR" : $(SOURCE) $(DEP_CPP_LEGEN) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"


"$(INTDIR)\LEGEND.OBJ" : $(SOURCE) $(DEP_CPP_LEGEN) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\LEGMERKM.CXX
DEP_CPP_LEGME=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\Legdinfo.hxx"\
	".\LEGDINFO.INL"\
	".\LEGENDE.H"\
	".\LEGMERKA.HXX"\
	".\LEGMERKL.HXX"\
	".\LEGMERKM.HXX"\
	".\LEGMERKY.HXX"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\triaspre.hxx"\
	".\VISPARAM.H"\
	".\YY_MYREF.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	

!IF  "$(CFG)" == "Trias32 - Win32 Release"


"$(INTDIR)\LEGMERKM.OBJ" : $(SOURCE) $(DEP_CPP_LEGME) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch" ".\LEGMERKL.HXX" ".\LEGMERKY.HXX" ".\YY_MYREF.H"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"


".\Obj32\Debug\LEGMERKM.OBJ" : $(SOURCE) $(DEP_CPP_LEGME) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch" ".\LEGMERKL.HXX" ".\LEGMERKY.HXX" ".\YY_MYREF.H"

".\Obj32\Debug\LEGMERKM.SBR" : $(SOURCE) $(DEP_CPP_LEGME) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch" ".\LEGMERKL.HXX" ".\LEGMERKY.HXX" ".\YY_MYREF.H"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"


"$(INTDIR)\LEGMERKM.OBJ" : $(SOURCE) $(DEP_CPP_LEGME) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch" ".\LEGMERKL.HXX" ".\LEGMERKY.HXX" ".\YY_MYREF.H"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\LEGTXTED.CXX
DEP_CPP_LEGTX=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\LEGTXTED.HXX"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\triaspre.hxx"\
	".\triasres.h"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	
NODEP_CPP_LEGTX=\
	".\trias16r.h"\
	

!IF  "$(CFG)" == "Trias32 - Win32 Release"


"$(INTDIR)\LEGTXTED.OBJ" : $(SOURCE) $(DEP_CPP_LEGTX) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"


".\Obj32\Debug\LEGTXTED.OBJ" : $(SOURCE) $(DEP_CPP_LEGTX) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\LEGTXTED.SBR" : $(SOURCE) $(DEP_CPP_LEGTX) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"


"$(INTDIR)\LEGTXTED.OBJ" : $(SOURCE) $(DEP_CPP_LEGTX) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\LEGUTILS.CXX
DEP_CPP_LEGUT=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\strings.h"\
	".\triaspre.hxx"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	

!IF  "$(CFG)" == "Trias32 - Win32 Release"


"$(INTDIR)\LEGUTILS.OBJ" : $(SOURCE) $(DEP_CPP_LEGUT) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"


".\Obj32\Debug\LEGUTILS.OBJ" : $(SOURCE) $(DEP_CPP_LEGUT) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\LEGUTILS.SBR" : $(SOURCE) $(DEP_CPP_LEGUT) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"


"$(INTDIR)\LEGUTILS.OBJ" : $(SOURCE) $(DEP_CPP_LEGUT) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\LEGWIND.CXX
DEP_CPP_LEGWI=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\CPTriastlb.h"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\extfcnsn.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\extmain3.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LDROPSRC.HXX"\
	".\LDROPTGT.HXX"\
	".\Legdinfo.hxx"\
	".\LEGENDE.H"\
	".\Legende.hxx"\
	".\LEGTXTED.HXX"\
	".\LEGWIND.HXX"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\Prlayout.hxx"\
	".\prlaytyp.hxx"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\strings.h"\
	".\triaspre.hxx"\
	".\triasres.h"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\Dirisole.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TRiASHelper.h"\
	{$(INCLUDE)}"\triasprv.h"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	
NODEP_CPP_LEGWI=\
	".\trias16r.h"\
	

!IF  "$(CFG)" == "Trias32 - Win32 Release"


"$(INTDIR)\LEGWIND.OBJ" : $(SOURCE) $(DEP_CPP_LEGWI) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"


".\Obj32\Debug\LEGWIND.OBJ" : $(SOURCE) $(DEP_CPP_LEGWI) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\LEGWIND.SBR" : $(SOURCE) $(DEP_CPP_LEGWI) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"


"$(INTDIR)\LEGWIND.OBJ" : $(SOURCE) $(DEP_CPP_LEGWI) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\OBJEKTE.CXX
DEP_CPP_OBJEK=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\CPTriastlb.h"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\editro.hxx"\
	".\EDITTEXT.H"\
	".\EDITTEXT.HXX"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\extfcnsn.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\extmain3.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MENUITEM.HXX"\
	".\MERKEDIT.H"\
	".\Merkedit.hxx"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJOWNDR.HXX"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\ORIDENTS.HXX"\
	".\ORIDENTS.INL"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\RELOBJ.HXX"\
	".\SAVEOPT.H"\
	".\SCHRIFT.HXX"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\strings.h"\
	".\triaspre.hxx"\
	".\triasres.h"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\Dirisole.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\Eonrguid.h"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TRiASHelper.h"\
	{$(INCLUDE)}"\triasprv.h"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\xtsnguid.h"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	
NODEP_CPP_OBJEK=\
	".\trias16r.h"\
	

!IF  "$(CFG)" == "Trias32 - Win32 Release"


"$(INTDIR)\OBJEKTE.OBJ" : $(SOURCE) $(DEP_CPP_OBJEK) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"


".\Obj32\Debug\OBJEKTE.OBJ" : $(SOURCE) $(DEP_CPP_OBJEK) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\OBJEKTE.SBR" : $(SOURCE) $(DEP_CPP_OBJEK) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"


"$(INTDIR)\OBJEKTE.OBJ" : $(SOURCE) $(DEP_CPP_OBJEK) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\OBJMENU.CXX

!IF  "$(CFG)" == "Trias32 - Win32 Release"

DEP_CPP_OBJME=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\CPTriastlb.h"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\editro.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\extfcnsn.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\extmain3.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\Merkedit.hxx"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJOWNDR.HXX"\
	".\OBJPROP.H"\
	".\OBJPROP.HXX"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\queryfld.hxx"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\strings.h"\
	".\TENUMS.H"\
	".\triaspre.hxx"\
	".\triasres.h"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\Dirisole.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\dstobwnd.h"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\Eonrguid.h"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\Ipropseq.hxx"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\iunredo.hxx"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\Modidprp.h"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\ObjekteDoppelnGuid.h"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Iterenum.h"\
	{$(INCLUDE)}"\ospace\COM\Iterenum.wobase.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\header.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\rtti\class.h"\
	{$(INCLUDE)}"\ospace\rtti\class.ipp"\
	{$(INCLUDE)}"\ospace\rtti\hmacros.h"\
	{$(INCLUDE)}"\ospace\rtti\hmacros1.h"\
	{$(INCLUDE)}"\ospace\rtti\hmacros3.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\std\typeinfo"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\stream\hmacros.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\propactn.h"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\selobwnd.h"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\statguid.h"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TRiASHelper.h"\
	{$(INCLUDE)}"\triasprv.h"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\UNDOGUID.H"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\xtsnguid.h"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	
NODEP_CPP_OBJME=\
	".\trias16r.h"\
	

"$(INTDIR)\OBJMENU.OBJ" : $(SOURCE) $(DEP_CPP_OBJME) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"

DEP_CPP_OBJME=\
	".\CPTriastlb.h"\
	".\editro.hxx"\
	".\extfcns.hxx"\
	".\extfcnsn.hxx"\
	".\extmain3.hxx"\
	".\Merkedit.hxx"\
	".\OBJOWNDR.HXX"\
	".\OBJPROP.HXX"\
	".\queryfld.hxx"\
	".\strings.h"\
	".\TENUMS.H"\
	".\triaspre.hxx"\
	".\triasres.h"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dirisole.h"\
	{$(INCLUDE)}"\dstobwnd.h"\
	{$(INCLUDE)}"\Eonrguid.h"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\Ipropseq.hxx"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\iunredo.hxx"\
	{$(INCLUDE)}"\Modidprp.h"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\ObjekteDoppelnGuid.h"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Iterenum.h"\
	{$(INCLUDE)}"\ospace\COM\Iterenum.wobase.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\header.h"\
	{$(INCLUDE)}"\ospace\rtti\class.h"\
	{$(INCLUDE)}"\ospace\rtti\class.ipp"\
	{$(INCLUDE)}"\ospace\rtti\hmacros.h"\
	{$(INCLUDE)}"\ospace\rtti\hmacros1.h"\
	{$(INCLUDE)}"\ospace\rtti\hmacros3.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\typeinfo"\
	{$(INCLUDE)}"\ospace\stream\hmacros.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\propactn.h"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\selobwnd.h"\
	{$(INCLUDE)}"\statguid.h"\
	{$(INCLUDE)}"\TRiASHelper.h"\
	{$(INCLUDE)}"\triasprv.h"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\UNDOGUID.H"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\xtsnguid.h"\
	{$(INCLUDE)}"\YVALS.H"\
	
NODEP_CPP_OBJME=\
	".\trias16r.h"\
	

".\Obj32\Debug\OBJMENU.OBJ" : $(SOURCE) $(DEP_CPP_OBJME) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\OBJMENU.SBR" : $(SOURCE) $(DEP_CPP_OBJME) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"

DEP_CPP_OBJME=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\CPTriastlb.h"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\editro.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\extfcnsn.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\extmain3.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\Merkedit.hxx"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJOWNDR.HXX"\
	".\OBJPROP.H"\
	".\OBJPROP.HXX"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\queryfld.hxx"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\strings.h"\
	".\TENUMS.H"\
	".\triaspre.hxx"\
	".\triasres.h"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\Dirisole.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\dstobwnd.h"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\Eonrguid.h"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\Ipropseq.hxx"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\iunredo.hxx"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\Modidprp.h"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\ObjekteDoppelnGuid.h"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Iterenum.h"\
	{$(INCLUDE)}"\ospace\COM\Iterenum.wobase.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\header.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\rtti\class.h"\
	{$(INCLUDE)}"\ospace\rtti\class.ipp"\
	{$(INCLUDE)}"\ospace\rtti\hmacros.h"\
	{$(INCLUDE)}"\ospace\rtti\hmacros1.h"\
	{$(INCLUDE)}"\ospace\rtti\hmacros3.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\std\typeinfo"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\stream\hmacros.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\propactn.h"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\selobwnd.h"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\statguid.h"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TRiASHelper.h"\
	{$(INCLUDE)}"\triasprv.h"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\UNDOGUID.H"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\xtsnguid.h"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	
NODEP_CPP_OBJME=\
	".\trias16r.h"\
	

"$(INTDIR)\OBJMENU.OBJ" : $(SOURCE) $(DEP_CPP_OBJME) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\OBJMENU1.CXX
DEP_CPP_OBJMEN=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\editro.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\Merkedit.hxx"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\NEWID.HXX"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJOWNDR.HXX"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\Selectid.hxx"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\Tools.hxx"\
	".\triaspre.hxx"\
	".\triasres.h"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\Selidlvc.hxx"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	
NODEP_CPP_OBJMEN=\
	".\Selident.hxx"\
	".\trias16r.h"\
	

!IF  "$(CFG)" == "Trias32 - Win32 Release"


"$(INTDIR)\OBJMENU1.OBJ" : $(SOURCE) $(DEP_CPP_OBJMEN) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"


".\Obj32\Debug\OBJMENU1.OBJ" : $(SOURCE) $(DEP_CPP_OBJMEN) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\OBJMENU1.SBR" : $(SOURCE) $(DEP_CPP_OBJMEN) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"


"$(INTDIR)\OBJMENU1.OBJ" : $(SOURCE) $(DEP_CPP_OBJMEN) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\OBJOWNDR.CXX
DEP_CPP_OBJOW=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJOWNDR.HXX"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\triaspre.hxx"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	

!IF  "$(CFG)" == "Trias32 - Win32 Release"


"$(INTDIR)\OBJOWNDR.OBJ" : $(SOURCE) $(DEP_CPP_OBJOW) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"


".\Obj32\Debug\OBJOWNDR.OBJ" : $(SOURCE) $(DEP_CPP_OBJOW) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\OBJOWNDR.SBR" : $(SOURCE) $(DEP_CPP_OBJOW) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"


"$(INTDIR)\OBJOWNDR.OBJ" : $(SOURCE) $(DEP_CPP_OBJOW) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\DELVIEWS.CXX
DEP_CPP_DELVI=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\CPTriastlb.h"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\DELVIEWS.HXX"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\extfcnsn.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\extmain3.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\strings.h"\
	".\triaspre.hxx"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\Dirisole.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TRiASHelper.h"\
	{$(INCLUDE)}"\triasprv.h"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	

!IF  "$(CFG)" == "Trias32 - Win32 Release"


"$(INTDIR)\DELVIEWS.OBJ" : $(SOURCE) $(DEP_CPP_DELVI) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"


".\Obj32\Debug\DELVIEWS.OBJ" : $(SOURCE) $(DEP_CPP_DELVI) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\DELVIEWS.SBR" : $(SOURCE) $(DEP_CPP_DELVI) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"


"$(INTDIR)\DELVIEWS.OBJ" : $(SOURCE) $(DEP_CPP_DELVI) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\IDENTSEL.CXX

!IF  "$(CFG)" == "Trias32 - Win32 Release"

DEP_CPP_IDENT=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\CPTriastlb.h"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\extfcnsn.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\extmain3.hxx"\
	".\IDENTSEL.H"\
	".\IDENTSEL.HXX"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\Legdinfo.hxx"\
	".\LEGENDE.H"\
	".\Legende.hxx"\
	".\LEGWIND.HXX"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\Minitpbd.hxx"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\Prlayout.hxx"\
	".\prlaytyp.hxx"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\strings.h"\
	".\triaspre.hxx"\
	".\triasres.h"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\Dirisole.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TRiASHelper.h"\
	{$(INCLUDE)}"\triasprv.h"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	
NODEP_CPP_IDENT=\
	".\trias16r.h"\
	

"$(INTDIR)\IDENTSEL.OBJ" : $(SOURCE) $(DEP_CPP_IDENT) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"

DEP_CPP_IDENT=\
	".\CPTriastlb.h"\
	".\extfcns.hxx"\
	".\extfcnsn.hxx"\
	".\extmain3.hxx"\
	".\IDENTSEL.HXX"\
	".\Legdinfo.hxx"\
	".\Legende.hxx"\
	".\LEGWIND.HXX"\
	".\Minitpbd.hxx"\
	".\Prlayout.hxx"\
	".\prlaytyp.hxx"\
	".\strings.h"\
	".\triaspre.hxx"\
	".\triasres.h"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dirisole.h"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\TRiASHelper.h"\
	{$(INCLUDE)}"\triasprv.h"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	
NODEP_CPP_IDENT=\
	".\trias16r.h"\
	

".\Obj32\Debug\IDENTSEL.OBJ" : $(SOURCE) $(DEP_CPP_IDENT) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\IDENTSEL.SBR" : $(SOURCE) $(DEP_CPP_IDENT) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"

DEP_CPP_IDENT=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\CPTriastlb.h"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\extfcnsn.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\extmain3.hxx"\
	".\IDENTSEL.H"\
	".\IDENTSEL.HXX"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\Legdinfo.hxx"\
	".\LEGENDE.H"\
	".\Legende.hxx"\
	".\LEGWIND.HXX"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\Minitpbd.hxx"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\Prlayout.hxx"\
	".\prlaytyp.hxx"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\strings.h"\
	".\triaspre.hxx"\
	".\triasres.h"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\Dirisole.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TRiASHelper.h"\
	{$(INCLUDE)}"\triasprv.h"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	
NODEP_CPP_IDENT=\
	".\trias16r.h"\
	

"$(INTDIR)\IDENTSEL.OBJ" : $(SOURCE) $(DEP_CPP_IDENT) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\ORIDENTS.CXX
DEP_CPP_ORIDE=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\ORIDENTS.HXX"\
	".\ORIDENTS.INL"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\triaspre.hxx"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	

!IF  "$(CFG)" == "Trias32 - Win32 Release"


"$(INTDIR)\ORIDENTS.OBJ" : $(SOURCE) $(DEP_CPP_ORIDE) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"


".\Obj32\Debug\ORIDENTS.OBJ" : $(SOURCE) $(DEP_CPP_ORIDE) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\ORIDENTS.SBR" : $(SOURCE) $(DEP_CPP_ORIDE) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"


"$(INTDIR)\ORIDENTS.OBJ" : $(SOURCE) $(DEP_CPP_ORIDE) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\SIGHTS.CXX

!IF  "$(CFG)" == "Trias32 - Win32 Release"

DEP_CPP_SIGHT=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\CPTriastlb.h"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\extfcnsn.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\extmain3.hxx"\
	".\IDENTSEL.H"\
	".\IDENTSEL.HXX"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\Legdinfo.hxx"\
	".\LEGENDE.H"\
	".\Legende.hxx"\
	".\LEGWIND.HXX"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\Prlayout.hxx"\
	".\prlaytyp.hxx"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\strings.h"\
	".\triaspre.hxx"\
	".\triasres.h"\
	".\Viewtree.hxx"\
	".\VIEWTREE.INL"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\Dirisole.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TRiASHelper.h"\
	{$(INCLUDE)}"\triasprv.h"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	
NODEP_CPP_SIGHT=\
	".\trias16r.h"\
	

"$(INTDIR)\SIGHTS.OBJ" : $(SOURCE) $(DEP_CPP_SIGHT) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"

DEP_CPP_SIGHT=\
	".\CPTriastlb.h"\
	".\extfcns.hxx"\
	".\extfcnsn.hxx"\
	".\extmain3.hxx"\
	".\IDENTSEL.HXX"\
	".\Legdinfo.hxx"\
	".\Legende.hxx"\
	".\LEGWIND.HXX"\
	".\Prlayout.hxx"\
	".\prlaytyp.hxx"\
	".\strings.h"\
	".\triaspre.hxx"\
	".\triasres.h"\
	".\Viewtree.hxx"\
	".\VIEWTREE.INL"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dirisole.h"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\TRiASHelper.h"\
	{$(INCLUDE)}"\triasprv.h"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	
NODEP_CPP_SIGHT=\
	".\trias16r.h"\
	

".\Obj32\Debug\SIGHTS.OBJ" : $(SOURCE) $(DEP_CPP_SIGHT) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\SIGHTS.SBR" : $(SOURCE) $(DEP_CPP_SIGHT) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"

DEP_CPP_SIGHT=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\CPTriastlb.h"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\extfcnsn.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\extmain3.hxx"\
	".\IDENTSEL.H"\
	".\IDENTSEL.HXX"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\Legdinfo.hxx"\
	".\LEGENDE.H"\
	".\Legende.hxx"\
	".\LEGWIND.HXX"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\Prlayout.hxx"\
	".\prlaytyp.hxx"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\strings.h"\
	".\triaspre.hxx"\
	".\triasres.h"\
	".\Viewtree.hxx"\
	".\VIEWTREE.INL"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\Dirisole.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TRiASHelper.h"\
	{$(INCLUDE)}"\triasprv.h"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	
NODEP_CPP_SIGHT=\
	".\trias16r.h"\
	

"$(INTDIR)\SIGHTS.OBJ" : $(SOURCE) $(DEP_CPP_SIGHT) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\APALWIND.CXX
DEP_CPP_APALW=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\COLORBOX.HXX"\
	".\Dboarray.hxx"\
	".\DCOLOR.HXX"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\FEATURE.HXX"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALRECT.HXX"\
	".\PALWIND.H"\
	".\PALWIND.HXX"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\triaspre.hxx"\
	".\triasres.h"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\DLGHELP.H"\
	{$(INCLUDE)}"\DLGHLPID.H"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNCOMBO.HXX"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\RGB_HSB.HXX"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	
NODEP_CPP_APALW=\
	".\trias16r.h"\
	

!IF  "$(CFG)" == "Trias32 - Win32 Release"


"$(INTDIR)\APALWIND.OBJ" : $(SOURCE) $(DEP_CPP_APALW) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"


".\Obj32\Debug\APALWIND.OBJ" : $(SOURCE) $(DEP_CPP_APALW) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\APALWIND.SBR" : $(SOURCE) $(DEP_CPP_APALW) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"


"$(INTDIR)\APALWIND.OBJ" : $(SOURCE) $(DEP_CPP_APALW) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\COLORBOX.CXX
DEP_CPP_COLOR=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\COLORBOX.HXX"\
	".\CPTriastlb.h"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\extfcnsn.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\extmain3.hxx"\
	".\FEATURE.HXX"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALRECT.HXX"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\strings.h"\
	".\triaspre.hxx"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\Dirisole.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TRiASHelper.h"\
	{$(INCLUDE)}"\triasprv.h"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	

!IF  "$(CFG)" == "Trias32 - Win32 Release"


"$(INTDIR)\COLORBOX.OBJ" : $(SOURCE) $(DEP_CPP_COLOR) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"


".\Obj32\Debug\COLORBOX.OBJ" : $(SOURCE) $(DEP_CPP_COLOR) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\COLORBOX.SBR" : $(SOURCE) $(DEP_CPP_COLOR) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"


"$(INTDIR)\COLORBOX.OBJ" : $(SOURCE) $(DEP_CPP_COLOR) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\DCOLOR.CXX
DEP_CPP_DCOLO=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\Dboarray.hxx"\
	".\DCOLOR.HXX"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\FEATURE.HXX"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\punktstr.h"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\triaspre.hxx"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNCOMBO.HXX"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	

!IF  "$(CFG)" == "Trias32 - Win32 Release"


"$(INTDIR)\DCOLOR.OBJ" : $(SOURCE) $(DEP_CPP_DCOLO) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"


".\Obj32\Debug\DCOLOR.OBJ" : $(SOURCE) $(DEP_CPP_DCOLO) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\DCOLOR.SBR" : $(SOURCE) $(DEP_CPP_DCOLO) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"


"$(INTDIR)\DCOLOR.OBJ" : $(SOURCE) $(DEP_CPP_DCOLO) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\FEATURE.CXX
DEP_CPP_FEATU=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\FEATURE.HXX"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\triaspre.hxx"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNCOMBO.HXX"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	

!IF  "$(CFG)" == "Trias32 - Win32 Release"


"$(INTDIR)\FEATURE.OBJ" : $(SOURCE) $(DEP_CPP_FEATU) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"


".\Obj32\Debug\FEATURE.OBJ" : $(SOURCE) $(DEP_CPP_FEATU) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\FEATURE.SBR" : $(SOURCE) $(DEP_CPP_FEATU) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"


"$(INTDIR)\FEATURE.OBJ" : $(SOURCE) $(DEP_CPP_FEATU) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\LPALWIND.CXX
DEP_CPP_LPALW=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\COLORBOX.HXX"\
	".\Dboarray.hxx"\
	".\DCOLOR.HXX"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\FEATURE.HXX"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALRECT.HXX"\
	".\PALWIND.H"\
	".\PALWIND.HXX"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\triaspre.hxx"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNCOMBO.HXX"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	

!IF  "$(CFG)" == "Trias32 - Win32 Release"


"$(INTDIR)\LPALWIND.OBJ" : $(SOURCE) $(DEP_CPP_LPALW) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"


".\Obj32\Debug\LPALWIND.OBJ" : $(SOURCE) $(DEP_CPP_LPALW) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\LPALWIND.SBR" : $(SOURCE) $(DEP_CPP_LPALW) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"


"$(INTDIR)\LPALWIND.OBJ" : $(SOURCE) $(DEP_CPP_LPALW) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\PALRECT.CXX
DEP_CPP_PALRE=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALRECT.HXX"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\triaspre.hxx"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	

!IF  "$(CFG)" == "Trias32 - Win32 Release"


"$(INTDIR)\PALRECT.OBJ" : $(SOURCE) $(DEP_CPP_PALRE) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"


".\Obj32\Debug\PALRECT.OBJ" : $(SOURCE) $(DEP_CPP_PALRE) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\PALRECT.SBR" : $(SOURCE) $(DEP_CPP_PALRE) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"


"$(INTDIR)\PALRECT.OBJ" : $(SOURCE) $(DEP_CPP_PALRE) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\PALWIND.CXX
DEP_CPP_PALWI=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\COLORBOX.HXX"\
	".\Dboarray.hxx"\
	".\DCOLOR.HXX"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\FEATURE.HXX"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALRECT.HXX"\
	".\PALWIND.H"\
	".\PALWIND.HXX"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\triaspre.hxx"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNCOMBO.HXX"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\RGB_HSB.HXX"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	

!IF  "$(CFG)" == "Trias32 - Win32 Release"


"$(INTDIR)\PALWIND.OBJ" : $(SOURCE) $(DEP_CPP_PALWI) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"


".\Obj32\Debug\PALWIND.OBJ" : $(SOURCE) $(DEP_CPP_PALWI) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\PALWIND.SBR" : $(SOURCE) $(DEP_CPP_PALWI) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"


"$(INTDIR)\PALWIND.OBJ" : $(SOURCE) $(DEP_CPP_PALWI) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\RGB_HSB.CXX
DEP_CPP_RGB_H=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\triaspre.hxx"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\RGB_HSB.HXX"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	

!IF  "$(CFG)" == "Trias32 - Win32 Release"


"$(INTDIR)\RGB_HSB.OBJ" : $(SOURCE) $(DEP_CPP_RGB_H) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"

# PROP Exclude_From_Build 0

".\Obj32\Debug\RGB_HSB.OBJ" : $(SOURCE) $(DEP_CPP_RGB_H) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\RGB_HSB.SBR" : $(SOURCE) $(DEP_CPP_RGB_H) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"


"$(INTDIR)\RGB_HSB.OBJ" : $(SOURCE) $(DEP_CPP_RGB_H) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\VIEWTREE.CXX
DEP_CPP_VIEWT=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\triaspre.hxx"\
	".\triasres.h"\
	".\Viewtree.hxx"\
	".\VIEWTREE.INL"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	
NODEP_CPP_VIEWT=\
	".\trias16r.h"\
	

!IF  "$(CFG)" == "Trias32 - Win32 Release"


"$(INTDIR)\VIEWTREE.OBJ" : $(SOURCE) $(DEP_CPP_VIEWT) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"


".\Obj32\Debug\VIEWTREE.OBJ" : $(SOURCE) $(DEP_CPP_VIEWT) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\VIEWTREE.SBR" : $(SOURCE) $(DEP_CPP_VIEWT) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"


"$(INTDIR)\VIEWTREE.OBJ" : $(SOURCE) $(DEP_CPP_VIEWT) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\selnview.cxx
DEP_CPP_SELNV=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\selnview.hxx"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\triaspre.hxx"\
	".\triasres.h"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\DLGHELP.H"\
	{$(INCLUDE)}"\DLGHLPID.H"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	
NODEP_CPP_SELNV=\
	".\trias16r.h"\
	

!IF  "$(CFG)" == "Trias32 - Win32 Release"


"$(INTDIR)\selnview.obj" : $(SOURCE) $(DEP_CPP_SELNV) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"


".\Obj32\Debug\selnview.obj" : $(SOURCE) $(DEP_CPP_SELNV) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\selnview.sbr" : $(SOURCE) $(DEP_CPP_SELNV) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"


"$(INTDIR)\selnview.obj" : $(SOURCE) $(DEP_CPP_SELNV) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\ppalwndr.cxx
DEP_CPP_PPALW=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\COLORBOX.HXX"\
	".\Dboarray.hxx"\
	".\dcbmpwnd.hxx"\
	".\DCOLOR.HXX"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\FEATURE.HXX"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALRECT.HXX"\
	".\PALWIND.H"\
	".\PALWIND.HXX"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\triaspre.hxx"\
	".\triasres.h"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNCOMBO.HXX"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\RGB_HSB.HXX"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	
NODEP_CPP_PPALW=\
	".\trias16r.h"\
	

!IF  "$(CFG)" == "Trias32 - Win32 Release"


"$(INTDIR)\ppalwndr.obj" : $(SOURCE) $(DEP_CPP_PPALW) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"


".\Obj32\Debug\ppalwndr.obj" : $(SOURCE) $(DEP_CPP_PPALW) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\ppalwndr.sbr" : $(SOURCE) $(DEP_CPP_PPALW) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"


"$(INTDIR)\ppalwndr.obj" : $(SOURCE) $(DEP_CPP_PPALW) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\PRINTER.CXX

!IF  "$(CFG)" == "Trias32 - Win32 Release"

DEP_CPP_PRINT=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\CPTriastlb.h"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\extfcnsn.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\extmain3.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\Legdinfo.hxx"\
	".\LEGENDE.H"\
	".\Legende.hxx"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\Prlayout.hxx"\
	".\prlaytyp.hxx"\
	".\PRNTABRT.H"\
	".\PRNTABRT.HXX"\
	".\PRNTLAYT.H"\
	".\PRNTLAYT.HXX"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\strings.h"\
	".\triaspre.hxx"\
	".\triasres.h"\
	".\updnedit.h"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\Dirisole.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\Eonrguid.h"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\IXTNEXT.HXX"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Printer.hxx"\
	{$(INCLUDE)}"\prntpars.hxx"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RECT.HXX"\
	{$(INCLUDE)}"\regprop.hxx"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TRiASHelper.h"\
	{$(INCLUDE)}"\triasprv.h"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\xtsnguid.h"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	
NODEP_CPP_PRINT=\
	".\trias16r.h"\
	

"$(INTDIR)\PRINTER.OBJ" : $(SOURCE) $(DEP_CPP_PRINT) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"

DEP_CPP_PRINT=\
	".\CPTriastlb.h"\
	".\extfcns.hxx"\
	".\extfcnsn.hxx"\
	".\extmain3.hxx"\
	".\Legdinfo.hxx"\
	".\Legende.hxx"\
	".\Prlayout.hxx"\
	".\prlaytyp.hxx"\
	".\PRNTABRT.HXX"\
	".\PRNTLAYT.HXX"\
	".\strings.h"\
	".\triaspre.hxx"\
	".\triasres.h"\
	".\updnedit.h"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\Dirisole.h"\
	{$(INCLUDE)}"\Eonrguid.h"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\IXTNEXT.HXX"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\Printer.hxx"\
	{$(INCLUDE)}"\prntpars.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RECT.HXX"\
	{$(INCLUDE)}"\regprop.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\TRiASHelper.h"\
	{$(INCLUDE)}"\triasprv.h"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\xtsnguid.h"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	
NODEP_CPP_PRINT=\
	".\trias16r.h"\
	

".\Obj32\Debug\PRINTER.OBJ" : $(SOURCE) $(DEP_CPP_PRINT) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\PRINTER.SBR" : $(SOURCE) $(DEP_CPP_PRINT) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"

DEP_CPP_PRINT=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\CPTriastlb.h"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\extfcnsn.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\extmain3.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\Legdinfo.hxx"\
	".\LEGENDE.H"\
	".\Legende.hxx"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\Prlayout.hxx"\
	".\prlaytyp.hxx"\
	".\PRNTABRT.H"\
	".\PRNTABRT.HXX"\
	".\PRNTLAYT.H"\
	".\PRNTLAYT.HXX"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\strings.h"\
	".\triaspre.hxx"\
	".\triasres.h"\
	".\updnedit.h"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\Dirisole.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\Eonrguid.h"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\IXTNEXT.HXX"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Printer.hxx"\
	{$(INCLUDE)}"\prntpars.hxx"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RECT.HXX"\
	{$(INCLUDE)}"\regprop.hxx"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TRiASHelper.h"\
	{$(INCLUDE)}"\triasprv.h"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\xtsnguid.h"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	
NODEP_CPP_PRINT=\
	".\trias16r.h"\
	

"$(INTDIR)\PRINTER.OBJ" : $(SOURCE) $(DEP_CPP_PRINT) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\PRLAYOUT.CXX
DEP_CPP_PRLAY=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\Prlayhlp.hxx"\
	".\Prlayout.hxx"\
	".\prlaytyp.hxx"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\triaspre.hxx"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Printer.hxx"\
	{$(INCLUDE)}"\prntpars.hxx"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	

!IF  "$(CFG)" == "Trias32 - Win32 Release"


"$(INTDIR)\PRLAYOUT.OBJ" : $(SOURCE) $(DEP_CPP_PRLAY) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"
   $(CPP) /nologo /MD /W3 /WX /GX /Og /Oi /Os /Ob1 /Gf /Gy /D "NDEBUG" /D\
 "WIN32" /D "_WINDOWS" /D "__CV__" /D "STRICT" /D "MSWIND" /D "DLL" /D\
 "__TRIASEXE__" /D "OS_WIN_95" /D "OS_STL_ASSERT" /D "OS_NO_WSTRING" /D\
 "OS_ALTERNATIVE_STRING_NAMES" /D "__ATL_USED__" /D "QI_EXCEPTION" /D\
 "OS_NO_STREAM_SUPPORT" /D "_GERMAN_RESOURCES" /D "OS_NO_ALLOCATORS" /D\
 "TRANSPARENT_PATTERNS" /D "_ATL_NEW_CCOMSTRUCT" /Fp"$(INTDIR)/Trias42.pch"\
 /Yu"triaspre.hxx" /Fo"$(INTDIR)/" /c $(SOURCE)


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"

# ADD CPP /Ob1

BuildCmds= \
	$(CPP) /nologo /MDd /W3 /WX /Gm /GX /Zi /Od /Ob1 /D "_DEBUG" /D "WIN32" /D\
 "_WINDOWS" /D "__CV__" /D "STRICT" /D "MSWIND" /D "DLL" /D "__TRIASEXE__" /D\
 "OS_WIN_95" /D "OS_STL_ASSERT" /D "OS_NO_WSTRING" /D\
 "OS_ALTERNATIVE_STRING_NAMES" /D "__ATL_USED__" /D "QI_EXCEPTION" /D\
 "OS_NO_STREAM_SUPPORT" /D "_GERMAN_RESOURCES" /D "OS_NO_ALLOCATORS" /D\
 "TRANSPARENT_PATTERNS" /D "_ATL_NEW_CCOMSTRUCT" /FR"Obj32/Debug/"\
 /Fp"Obj32/Debug/trias32d.pch" /Yu"triaspre.hxx" /Fo"Obj32/Debug/"\
 /Fd"Obj32/Debug/trias32d.pdb" /c $(SOURCE) \
	

".\Obj32\Debug\PRLAYOUT.OBJ" : $(SOURCE) $(DEP_CPP_PRLAY) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"
   $(BuildCmds)

".\Obj32\Debug\PRLAYOUT.SBR" : $(SOURCE) $(DEP_CPP_PRLAY) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"
   $(BuildCmds)

!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"


"$(INTDIR)\PRLAYOUT.OBJ" : $(SOURCE) $(DEP_CPP_PRLAY) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"
   $(CPP) /nologo /MD /W3 /WX /GX /Zi /Og /Oi /Os /Ob1 /Gf /Gy /D "NDEBUG" /D\
 "WIN32" /D "_WINDOWS" /D "__CV__" /D "STRICT" /D "MSWIND" /D "DLL" /D\
 "__TRIASEXE__" /D "OS_WIN_95" /D "OS_STL_ASSERT" /D "OS_NO_WSTRING" /D\
 "OS_ALTERNATIVE_STRING_NAMES" /D "__ATL_USED__" /D "QI_EXCEPTION" /D\
 "OS_NO_STREAM_SUPPORT" /D "_GERMAN_RESOURCES" /D "OS_NO_ALLOCATORS" /D\
 "TRANSPARENT_PATTERNS" /D "_ATL_NEW_CCOMSTRUCT" /Fp"$(INTDIR)/Trias42.pch"\
 /Yu"triaspre.hxx" /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c $(SOURCE)


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\PRNTABRT.CXX
DEP_CPP_PRNTA=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTABRT.HXX"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\triaspre.hxx"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	

!IF  "$(CFG)" == "Trias32 - Win32 Release"


"$(INTDIR)\PRNTABRT.OBJ" : $(SOURCE) $(DEP_CPP_PRNTA) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"


".\Obj32\Debug\PRNTABRT.OBJ" : $(SOURCE) $(DEP_CPP_PRNTA) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\PRNTABRT.SBR" : $(SOURCE) $(DEP_CPP_PRNTA) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"


"$(INTDIR)\PRNTABRT.OBJ" : $(SOURCE) $(DEP_CPP_PRNTA) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\PRNTLAYT.CXX

!IF  "$(CFG)" == "Trias32 - Win32 Release"

DEP_CPP_PRNTL=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\CPTriastlb.h"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\extfcnsn.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\extmain3.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\Prlayout.hxx"\
	".\prlaytyp.hxx"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\PRNTLAYT.HXX"\
	".\PRNTPROF.HXX"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\strings.h"\
	".\triaspre.hxx"\
	".\triasres.h"\
	".\updnedit.h"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\ActPrint.h"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\Dirisole.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\Eonrguid.h"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\IXTNEXT.HXX"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNCOMBO.HXX"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Printer.hxx"\
	{$(INCLUDE)}"\prntpars.hxx"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\regprop.hxx"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TRiASHelper.h"\
	{$(INCLUDE)}"\triasprv.h"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\xtsnguid.h"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	
NODEP_CPP_PRNTL=\
	".\trias16r.h"\
	

"$(INTDIR)\PRNTLAYT.OBJ" : $(SOURCE) $(DEP_CPP_PRNTL) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"

DEP_CPP_PRNTL=\
	".\CPTriastlb.h"\
	".\extfcns.hxx"\
	".\extfcnsn.hxx"\
	".\extmain3.hxx"\
	".\Prlayout.hxx"\
	".\prlaytyp.hxx"\
	".\PRNTLAYT.HXX"\
	".\PRNTPROF.HXX"\
	".\strings.h"\
	".\triaspre.hxx"\
	".\triasres.h"\
	".\updnedit.h"\
	{$(INCLUDE)}"\ActPrint.h"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\Dirisole.h"\
	{$(INCLUDE)}"\Eonrguid.h"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\IXTNEXT.HXX"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNCOMBO.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\Printer.hxx"\
	{$(INCLUDE)}"\prntpars.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\regprop.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\TRiASHelper.h"\
	{$(INCLUDE)}"\triasprv.h"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\xtsnguid.h"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	
NODEP_CPP_PRNTL=\
	".\trias16r.h"\
	

".\Obj32\Debug\PRNTLAYT.OBJ" : $(SOURCE) $(DEP_CPP_PRNTL) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\PRNTLAYT.SBR" : $(SOURCE) $(DEP_CPP_PRNTL) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"

DEP_CPP_PRNTL=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\CPTriastlb.h"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\extfcnsn.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\extmain3.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\Prlayout.hxx"\
	".\prlaytyp.hxx"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\PRNTLAYT.HXX"\
	".\PRNTPROF.HXX"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\strings.h"\
	".\triaspre.hxx"\
	".\triasres.h"\
	".\updnedit.h"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\ActPrint.h"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\Dirisole.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\Eonrguid.h"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\IXTNEXT.HXX"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNCOMBO.HXX"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Printer.hxx"\
	{$(INCLUDE)}"\prntpars.hxx"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\regprop.hxx"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TRiASHelper.h"\
	{$(INCLUDE)}"\triasprv.h"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\xtsnguid.h"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	
NODEP_CPP_PRNTL=\
	".\trias16r.h"\
	

"$(INTDIR)\PRNTLAYT.OBJ" : $(SOURCE) $(DEP_CPP_PRNTL) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\PRNTPROF.CXX
DEP_CPP_PRNTP=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\PRNTPROF.HXX"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\triaspre.hxx"\
	".\triasres.h"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	
NODEP_CPP_PRNTP=\
	".\trias16r.h"\
	

!IF  "$(CFG)" == "Trias32 - Win32 Release"


"$(INTDIR)\PRNTPROF.OBJ" : $(SOURCE) $(DEP_CPP_PRNTP) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"


".\Obj32\Debug\PRNTPROF.OBJ" : $(SOURCE) $(DEP_CPP_PRNTP) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\PRNTPROF.SBR" : $(SOURCE) $(DEP_CPP_PRNTP) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"


"$(INTDIR)\PRNTPROF.OBJ" : $(SOURCE) $(DEP_CPP_PRNTP) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\alloprop.cxx
DEP_CPP_ALLOP=\
	".\alloprop.hxx"\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\CPTriastlb.h"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\eallcprp.hxx"\
	".\EALLPROP.HXX"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\extfcnsn.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\extmain3.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OBJPROP.HXX"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\queryfld.hxx"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\strings.h"\
	".\triaspre.hxx"\
	".\triasres.h"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\Dirisole.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\Eonrguid.h"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\ioprpini.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\oprpguid.h"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Propname.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TRiASHelper.h"\
	{$(INCLUDE)}"\triasprv.h"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\xtsnguid.h"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	
NODEP_CPP_ALLOP=\
	".\trias16r.h"\
	

!IF  "$(CFG)" == "Trias32 - Win32 Release"


"$(INTDIR)\alloprop.obj" : $(SOURCE) $(DEP_CPP_ALLOP) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"


".\Obj32\Debug\alloprop.obj" : $(SOURCE) $(DEP_CPP_ALLOP) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\alloprop.sbr" : $(SOURCE) $(DEP_CPP_ALLOP) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"


"$(INTDIR)\alloprop.obj" : $(SOURCE) $(DEP_CPP_ALLOP) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\eallprop.cxx
DEP_CPP_EALLP=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EALLPROP.HXX"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\triaspre.hxx"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\Eonrguid.h"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Propname.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\xtsnguid.h"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	

!IF  "$(CFG)" == "Trias32 - Win32 Release"


"$(INTDIR)\eallprop.obj" : $(SOURCE) $(DEP_CPP_EALLP) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"


".\Obj32\Debug\eallprop.obj" : $(SOURCE) $(DEP_CPP_EALLP) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\eallprop.sbr" : $(SOURCE) $(DEP_CPP_EALLP) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"


"$(INTDIR)\eallprop.obj" : $(SOURCE) $(DEP_CPP_EALLP) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\enumobj.cxx

!IF  "$(CFG)" == "Trias32 - Win32 Release"

DEP_CPP_ENUMO=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\TENUMS.H"\
	".\triaspre.hxx"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\Eonrguid.h"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Iterenum.h"\
	{$(INCLUDE)}"\ospace\COM\Iterenum.wobase.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\header.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\rtti\class.h"\
	{$(INCLUDE)}"\ospace\rtti\class.ipp"\
	{$(INCLUDE)}"\ospace\rtti\hmacros.h"\
	{$(INCLUDE)}"\ospace\rtti\hmacros1.h"\
	{$(INCLUDE)}"\ospace\rtti\hmacros3.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\std\typeinfo"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\stream\hmacros.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	

"$(INTDIR)\enumobj.obj" : $(SOURCE) $(DEP_CPP_ENUMO) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"

DEP_CPP_ENUMO=\
	".\TENUMS.H"\
	".\triaspre.hxx"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Eonrguid.h"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Iterenum.h"\
	{$(INCLUDE)}"\ospace\COM\Iterenum.wobase.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\header.h"\
	{$(INCLUDE)}"\ospace\rtti\class.h"\
	{$(INCLUDE)}"\ospace\rtti\class.ipp"\
	{$(INCLUDE)}"\ospace\rtti\hmacros.h"\
	{$(INCLUDE)}"\ospace\rtti\hmacros1.h"\
	{$(INCLUDE)}"\ospace\rtti\hmacros3.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\typeinfo"\
	{$(INCLUDE)}"\ospace\stream\hmacros.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\YVALS.H"\
	

".\Obj32\Debug\enumobj.obj" : $(SOURCE) $(DEP_CPP_ENUMO) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\enumobj.sbr" : $(SOURCE) $(DEP_CPP_ENUMO) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"

DEP_CPP_ENUMO=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\TENUMS.H"\
	".\triaspre.hxx"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\Eonrguid.h"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Iterenum.h"\
	{$(INCLUDE)}"\ospace\COM\Iterenum.wobase.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\header.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\rtti\class.h"\
	{$(INCLUDE)}"\ospace\rtti\class.ipp"\
	{$(INCLUDE)}"\ospace\rtti\hmacros.h"\
	{$(INCLUDE)}"\ospace\rtti\hmacros1.h"\
	{$(INCLUDE)}"\ospace\rtti\hmacros3.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\std\typeinfo"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\stream\hmacros.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	

"$(INTDIR)\enumobj.obj" : $(SOURCE) $(DEP_CPP_ENUMO) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\OBJPROP.CXX

!IF  "$(CFG)" == "Trias32 - Win32 Release"

DEP_CPP_OBJPR=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\CPTriastlb.h"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\extfcnsn.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\extmain3.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OBJPROP.HXX"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\queryfld.hxx"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\strings.h"\
	".\triaspre.hxx"\
	".\triasres.h"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\Dirisole.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\iunredo.hxx"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Iterenum.h"\
	{$(INCLUDE)}"\ospace\COM\Iterenum.wobase.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\header.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\rtti\class.h"\
	{$(INCLUDE)}"\ospace\rtti\class.ipp"\
	{$(INCLUDE)}"\ospace\rtti\hmacros.h"\
	{$(INCLUDE)}"\ospace\rtti\hmacros1.h"\
	{$(INCLUDE)}"\ospace\rtti\hmacros3.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\std\typeinfo"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\stream\hmacros.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\registry.hxx"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\statguid.h"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TRiASHelper.h"\
	{$(INCLUDE)}"\triasprv.h"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\UNDOGUID.H"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	
NODEP_CPP_OBJPR=\
	".\trias16r.h"\
	

"$(INTDIR)\OBJPROP.OBJ" : $(SOURCE) $(DEP_CPP_OBJPR) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"

DEP_CPP_OBJPR=\
	".\CPTriastlb.h"\
	".\extfcns.hxx"\
	".\extfcnsn.hxx"\
	".\extmain3.hxx"\
	".\OBJPROP.H"\
	".\OBJPROP.HXX"\
	".\queryfld.hxx"\
	".\strings.h"\
	".\triaspre.hxx"\
	".\triasres.h"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dirisole.h"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\iunredo.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Iterenum.h"\
	{$(INCLUDE)}"\ospace\COM\Iterenum.wobase.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\header.h"\
	{$(INCLUDE)}"\ospace\rtti\class.h"\
	{$(INCLUDE)}"\ospace\rtti\class.ipp"\
	{$(INCLUDE)}"\ospace\rtti\hmacros.h"\
	{$(INCLUDE)}"\ospace\rtti\hmacros1.h"\
	{$(INCLUDE)}"\ospace\rtti\hmacros3.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\typeinfo"\
	{$(INCLUDE)}"\ospace\stream\hmacros.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\registry.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\statguid.h"\
	{$(INCLUDE)}"\TRiASHelper.h"\
	{$(INCLUDE)}"\triasprv.h"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\UNDOGUID.H"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\YVALS.H"\
	
NODEP_CPP_OBJPR=\
	".\trias16r.h"\
	

".\Obj32\Debug\OBJPROP.OBJ" : $(SOURCE) $(DEP_CPP_OBJPR) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\OBJPROP.SBR" : $(SOURCE) $(DEP_CPP_OBJPR) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"

DEP_CPP_OBJPR=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\CPTriastlb.h"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\extfcnsn.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\extmain3.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OBJPROP.HXX"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\queryfld.hxx"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\strings.h"\
	".\triaspre.hxx"\
	".\triasres.h"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\Dirisole.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\iunredo.hxx"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Iterenum.h"\
	{$(INCLUDE)}"\ospace\COM\Iterenum.wobase.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\header.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\rtti\class.h"\
	{$(INCLUDE)}"\ospace\rtti\class.ipp"\
	{$(INCLUDE)}"\ospace\rtti\hmacros.h"\
	{$(INCLUDE)}"\ospace\rtti\hmacros1.h"\
	{$(INCLUDE)}"\ospace\rtti\hmacros3.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\std\typeinfo"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\stream\hmacros.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\registry.hxx"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\statguid.h"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TRiASHelper.h"\
	{$(INCLUDE)}"\triasprv.h"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\UNDOGUID.H"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	
NODEP_CPP_OBJPR=\
	".\trias16r.h"\
	

"$(INTDIR)\OBJPROP.OBJ" : $(SOURCE) $(DEP_CPP_OBJPR) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\eallcprp.cxx
DEP_CPP_EALLC=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\eallcprp.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\triaspre.hxx"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\Eonrguid.h"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Propname.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\xtsnguid.h"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	

!IF  "$(CFG)" == "Trias32 - Win32 Release"


"$(INTDIR)\eallcprp.obj" : $(SOURCE) $(DEP_CPP_EALLC) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"


".\Obj32\Debug\eallcprp.obj" : $(SOURCE) $(DEP_CPP_EALLC) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\eallcprp.sbr" : $(SOURCE) $(DEP_CPP_EALLC) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"


"$(INTDIR)\eallcprp.obj" : $(SOURCE) $(DEP_CPP_EALLC) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\ENUMFNAM.CXX

!IF  "$(CFG)" == "Trias32 - Win32 Release"

DEP_CPP_ENUMF=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\CPTriastlb.h"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\ENUMFNAM.HXX"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\extfcnsn.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\extmain3.hxx"\
	".\IDENTSEL.H"\
	".\ienumstr.hxx"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\strings.h"\
	".\TENUMS.H"\
	".\triaspre.hxx"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\Dirisole.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TRiASHelper.h"\
	{$(INCLUDE)}"\triasprv.h"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	

"$(INTDIR)\ENUMFNAM.OBJ" : $(SOURCE) $(DEP_CPP_ENUMF) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"

DEP_CPP_ENUMF=\
	".\CPTriastlb.h"\
	".\ENUMFNAM.HXX"\
	".\extfcns.hxx"\
	".\extfcnsn.hxx"\
	".\extmain3.hxx"\
	".\ienumstr.hxx"\
	".\strings.h"\
	".\TENUMS.H"\
	".\triaspre.hxx"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dirisole.h"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\TRiASHelper.h"\
	{$(INCLUDE)}"\triasprv.h"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\YVALS.H"\
	

".\Obj32\Debug\ENUMFNAM.OBJ" : $(SOURCE) $(DEP_CPP_ENUMF) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\ENUMFNAM.SBR" : $(SOURCE) $(DEP_CPP_ENUMF) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"

DEP_CPP_ENUMF=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\CPTriastlb.h"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\ENUMFNAM.HXX"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\extfcnsn.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\extmain3.hxx"\
	".\IDENTSEL.H"\
	".\ienumstr.hxx"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\strings.h"\
	".\TENUMS.H"\
	".\triaspre.hxx"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\Dirisole.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TRiASHelper.h"\
	{$(INCLUDE)}"\triasprv.h"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	

"$(INTDIR)\ENUMFNAM.OBJ" : $(SOURCE) $(DEP_CPP_ENUMF) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\IENUMSTR.CXX

!IF  "$(CFG)" == "Trias32 - Win32 Release"

DEP_CPP_IENUM=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\IDENTSEL.H"\
	".\ienumstr.hxx"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\triaspre.hxx"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	

"$(INTDIR)\IENUMSTR.OBJ" : $(SOURCE) $(DEP_CPP_IENUM) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"

DEP_CPP_IENUM=\
	".\ienumstr.hxx"\
	".\triaspre.hxx"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\YVALS.H"\
	

".\Obj32\Debug\IENUMSTR.OBJ" : $(SOURCE) $(DEP_CPP_IENUM) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\IENUMSTR.SBR" : $(SOURCE) $(DEP_CPP_IENUM) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"

DEP_CPP_IENUM=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\IDENTSEL.H"\
	".\ienumstr.hxx"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\triaspre.hxx"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	

"$(INTDIR)\IENUMSTR.OBJ" : $(SOURCE) $(DEP_CPP_IENUM) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\impdlg.cxx

!IF  "$(CFG)" == "Trias32 - Win32 Release"

DEP_CPP_IMPDL=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\CPTriastlb.h"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\extfcnsn.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\extmain3.hxx"\
	".\IDENTSEL.H"\
	".\ienumstr.hxx"\
	".\impdlg.hxx"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\strings.h"\
	".\triaspre.hxx"\
	".\triasres.h"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\Dirisole.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\Eonrguid.h"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\registry.hxx"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TRiASHelper.h"\
	{$(INCLUDE)}"\triasprv.h"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\xtsnguid.h"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	
NODEP_CPP_IMPDL=\
	".\trias16r.h"\
	

"$(INTDIR)\impdlg.obj" : $(SOURCE) $(DEP_CPP_IMPDL) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"

DEP_CPP_IMPDL=\
	".\CPTriastlb.h"\
	".\extfcns.hxx"\
	".\extfcnsn.hxx"\
	".\extmain3.hxx"\
	".\ienumstr.hxx"\
	".\impdlg.hxx"\
	".\strings.h"\
	".\triaspre.hxx"\
	".\triasres.h"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dirisole.h"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\Eonrguid.h"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\registry.hxx"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\TRiASHelper.h"\
	{$(INCLUDE)}"\triasprv.h"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\xtsnguid.h"\
	{$(INCLUDE)}"\YVALS.H"\
	
NODEP_CPP_IMPDL=\
	".\trias16r.h"\
	

".\Obj32\Debug\impdlg.obj" : $(SOURCE) $(DEP_CPP_IMPDL) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\impdlg.sbr" : $(SOURCE) $(DEP_CPP_IMPDL) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"

DEP_CPP_IMPDL=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\CPTriastlb.h"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\extfcnsn.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\extmain3.hxx"\
	".\IDENTSEL.H"\
	".\ienumstr.hxx"\
	".\impdlg.hxx"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\strings.h"\
	".\triaspre.hxx"\
	".\triasres.h"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\Dirisole.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\Eonrguid.h"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\registry.hxx"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TRiASHelper.h"\
	{$(INCLUDE)}"\triasprv.h"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\xtsnguid.h"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	
NODEP_CPP_IMPDL=\
	".\trias16r.h"\
	

"$(INTDIR)\impdlg.obj" : $(SOURCE) $(DEP_CPP_IMPDL) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\license.cxx
DEP_CPP_LICEN=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\license.hxx"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\strings.h"\
	".\triaspre.hxx"\
	".\triasres.h"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	
NODEP_CPP_LICEN=\
	".\trias16r.h"\
	

!IF  "$(CFG)" == "Trias32 - Win32 Release"


"$(INTDIR)\license.obj" : $(SOURCE) $(DEP_CPP_LICEN) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"


".\Obj32\Debug\license.obj" : $(SOURCE) $(DEP_CPP_LICEN) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\license.sbr" : $(SOURCE) $(DEP_CPP_LICEN) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"


"$(INTDIR)\license.obj" : $(SOURCE) $(DEP_CPP_LICEN) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\MENUITEM.CXX
DEP_CPP_MENUI=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MENUITEM.HXX"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\triaspre.hxx"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	

!IF  "$(CFG)" == "Trias32 - Win32 Release"


"$(INTDIR)\MENUITEM.OBJ" : $(SOURCE) $(DEP_CPP_MENUI) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"


".\Obj32\Debug\MENUITEM.OBJ" : $(SOURCE) $(DEP_CPP_MENUI) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\MENUITEM.SBR" : $(SOURCE) $(DEP_CPP_MENUI) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"


"$(INTDIR)\MENUITEM.OBJ" : $(SOURCE) $(DEP_CPP_MENUI) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\BILDOBJ.CXX
DEP_CPP_BILDO=\
	".\AUSSCHN.H"\
	".\BILDOBJ.HXX"\
	".\clbmpobj.hxx"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\triaspre.hxx"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	

!IF  "$(CFG)" == "Trias32 - Win32 Release"


"$(INTDIR)\BILDOBJ.OBJ" : $(SOURCE) $(DEP_CPP_BILDO) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"


".\Obj32\Debug\BILDOBJ.OBJ" : $(SOURCE) $(DEP_CPP_BILDO) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\BILDOBJ.SBR" : $(SOURCE) $(DEP_CPP_BILDO) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"


"$(INTDIR)\BILDOBJ.OBJ" : $(SOURCE) $(DEP_CPP_BILDO) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\BMPBOX.CXX
DEP_CPP_BMPBO=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\triaspre.hxx"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	

!IF  "$(CFG)" == "Trias32 - Win32 Release"


"$(INTDIR)\BMPBOX.OBJ" : $(SOURCE) $(DEP_CPP_BMPBO) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"


".\Obj32\Debug\BMPBOX.OBJ" : $(SOURCE) $(DEP_CPP_BMPBO) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\BMPBOX.SBR" : $(SOURCE) $(DEP_CPP_BMPBO) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"


"$(INTDIR)\BMPBOX.OBJ" : $(SOURCE) $(DEP_CPP_BMPBO) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\MINITPBD.CXX
DEP_CPP_MINIT=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\Minitpbd.hxx"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\triaspre.hxx"\
	".\triasres.h"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	
NODEP_CPP_MINIT=\
	".\trias16r.h"\
	

!IF  "$(CFG)" == "Trias32 - Win32 Release"


"$(INTDIR)\MINITPBD.OBJ" : $(SOURCE) $(DEP_CPP_MINIT) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"


".\Obj32\Debug\MINITPBD.OBJ" : $(SOURCE) $(DEP_CPP_MINIT) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\MINITPBD.SBR" : $(SOURCE) $(DEP_CPP_MINIT) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"


"$(INTDIR)\MINITPBD.OBJ" : $(SOURCE) $(DEP_CPP_MINIT) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\pntmasks.cxx
DEP_CPP_PNTMA=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\triaspre.hxx"\
	".\triasres.h"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	
NODEP_CPP_PNTMA=\
	".\trias16r.h"\
	

!IF  "$(CFG)" == "Trias32 - Win32 Release"


"$(INTDIR)\pntmasks.obj" : $(SOURCE) $(DEP_CPP_PNTMA) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"


".\Obj32\Debug\pntmasks.obj" : $(SOURCE) $(DEP_CPP_PNTMA) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\pntmasks.sbr" : $(SOURCE) $(DEP_CPP_PNTMA) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"


"$(INTDIR)\pntmasks.obj" : $(SOURCE) $(DEP_CPP_PNTMA) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\PROFILE.CXX
DEP_CPP_PROFI=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\strings.h"\
	".\triaspre.hxx"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	

!IF  "$(CFG)" == "Trias32 - Win32 Release"


"$(INTDIR)\PROFILE.OBJ" : $(SOURCE) $(DEP_CPP_PROFI) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"


".\Obj32\Debug\PROFILE.OBJ" : $(SOURCE) $(DEP_CPP_PROFI) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\PROFILE.SBR" : $(SOURCE) $(DEP_CPP_PROFI) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"


"$(INTDIR)\PROFILE.OBJ" : $(SOURCE) $(DEP_CPP_PROFI) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\REGTRIAS.CXX
DEP_CPP_REGTR=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\Regprog.h"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\strings.h"\
	".\triaspre.hxx"\
	".\triasres.h"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\cextreg.hxx"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBADDR.HXX"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\Kons.hxx"\
	{$(INCLUDE)}"\KONSOBJ.HXX"\
	{$(INCLUDE)}"\KONSSATZ.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\registry.hxx"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\TrCatIDs.h"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\VersionWrap.h"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	
NODEP_CPP_REGTR=\
	".\trias16r.h"\
	

!IF  "$(CFG)" == "Trias32 - Win32 Release"


"$(INTDIR)\REGTRIAS.OBJ" : $(SOURCE) $(DEP_CPP_REGTR) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"


".\Obj32\Debug\REGTRIAS.OBJ" : $(SOURCE) $(DEP_CPP_REGTR) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\REGTRIAS.SBR" : $(SOURCE) $(DEP_CPP_REGTR) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"


"$(INTDIR)\REGTRIAS.OBJ" : $(SOURCE) $(DEP_CPP_REGTR) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\RESOURCE.CXX
DEP_CPP_RESOU=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\triaspre.hxx"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	

!IF  "$(CFG)" == "Trias32 - Win32 Release"


"$(INTDIR)\RESOURCE.OBJ" : $(SOURCE) $(DEP_CPP_RESOU) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"


".\Obj32\Debug\RESOURCE.OBJ" : $(SOURCE) $(DEP_CPP_RESOU) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\RESOURCE.SBR" : $(SOURCE) $(DEP_CPP_RESOU) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"


"$(INTDIR)\RESOURCE.OBJ" : $(SOURCE) $(DEP_CPP_RESOU) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\EDITTEXT.CXX
DEP_CPP_EDITT=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\editro.hxx"\
	".\EDITTEXT.H"\
	".\EDITTEXT.HXX"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\strings.h"\
	".\triaspre.hxx"\
	".\triasres.h"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	
NODEP_CPP_EDITT=\
	".\trias16r.h"\
	

!IF  "$(CFG)" == "Trias32 - Win32 Release"


"$(INTDIR)\EDITTEXT.OBJ" : $(SOURCE) $(DEP_CPP_EDITT) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"


".\Obj32\Debug\EDITTEXT.OBJ" : $(SOURCE) $(DEP_CPP_EDITT) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\EDITTEXT.SBR" : $(SOURCE) $(DEP_CPP_EDITT) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"


"$(INTDIR)\EDITTEXT.OBJ" : $(SOURCE) $(DEP_CPP_EDITT) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\MERKEDIT.CXX
DEP_CPP_MERKE=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\CPTriastlb.h"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\editro.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\extfcnsn.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\extmain3.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\Merkedit.hxx"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\strings.h"\
	".\triaspre.hxx"\
	".\triasres.h"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\Dirisole.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\iunredo.hxx"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TRiASHelper.h"\
	{$(INCLUDE)}"\triasprv.h"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\UNDOGUID.H"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	
NODEP_CPP_MERKE=\
	".\trias16r.h"\
	

!IF  "$(CFG)" == "Trias32 - Win32 Release"


"$(INTDIR)\MERKEDIT.OBJ" : $(SOURCE) $(DEP_CPP_MERKE) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"


".\Obj32\Debug\MERKEDIT.OBJ" : $(SOURCE) $(DEP_CPP_MERKE) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\MERKEDIT.SBR" : $(SOURCE) $(DEP_CPP_MERKE) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"


"$(INTDIR)\MERKEDIT.OBJ" : $(SOURCE) $(DEP_CPP_MERKE) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\RECHRES.CXX
DEP_CPP_RECHR=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\RECHRES.HXX"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\strings.h"\
	".\triaspre.hxx"\
	".\triasres.h"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Propname.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\registry.hxx"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SELIDLST.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	
NODEP_CPP_RECHR=\
	".\trias16r.h"\
	

!IF  "$(CFG)" == "Trias32 - Win32 Release"


"$(INTDIR)\RECHRES.OBJ" : $(SOURCE) $(DEP_CPP_RECHR) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"


".\Obj32\Debug\RECHRES.OBJ" : $(SOURCE) $(DEP_CPP_RECHR) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\RECHRES.SBR" : $(SOURCE) $(DEP_CPP_RECHR) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"


"$(INTDIR)\RECHRES.OBJ" : $(SOURCE) $(DEP_CPP_RECHR) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\SAVEOPT.CXX
DEP_CPP_SAVEO=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\Saveopt.hxx"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\triaspre.hxx"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	

!IF  "$(CFG)" == "Trias32 - Win32 Release"


"$(INTDIR)\SAVEOPT.OBJ" : $(SOURCE) $(DEP_CPP_SAVEO) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"


".\Obj32\Debug\SAVEOPT.OBJ" : $(SOURCE) $(DEP_CPP_SAVEO) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\SAVEOPT.SBR" : $(SOURCE) $(DEP_CPP_SAVEO) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"


"$(INTDIR)\SAVEOPT.OBJ" : $(SOURCE) $(DEP_CPP_SAVEO) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\selectn.cxx
DEP_CPP_SELEC=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\selectn.hxx"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\triaspre.hxx"\
	".\triasres.h"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	
NODEP_CPP_SELEC=\
	".\trias16r.h"\
	

!IF  "$(CFG)" == "Trias32 - Win32 Release"


"$(INTDIR)\selectn.obj" : $(SOURCE) $(DEP_CPP_SELEC) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"


".\Obj32\Debug\selectn.obj" : $(SOURCE) $(DEP_CPP_SELEC) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\selectn.sbr" : $(SOURCE) $(DEP_CPP_SELEC) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"


"$(INTDIR)\selectn.obj" : $(SOURCE) $(DEP_CPP_SELEC) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\SIGNON.CXX
DEP_CPP_SIGNO=\
	".\AUSSCHN.H"\
	".\BILDOBJ.HXX"\
	".\clbmpobj.hxx"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\Signon.hxx"\
	".\SIGNON1.H"\
	".\strings.h"\
	".\triaspre.hxx"\
	".\triasres.h"\
	".\VISPARAM.H"\
	".\WinMMWrap.h"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\registry.hxx"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	
NODEP_CPP_SIGNO=\
	".\trias16r.h"\
	

!IF  "$(CFG)" == "Trias32 - Win32 Release"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"

# PROP BASE Exclude_From_Build 1
# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\undodlg.cxx
DEP_CPP_UNDOD=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\CPTriastlb.h"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\extfcnsn.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\extmain3.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\strings.h"\
	".\triaspre.hxx"\
	".\triasres.h"\
	".\undodlg.hxx"\
	".\UndoRedoDetails.h"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\Dirisole.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\ENUMUNDO.HXX"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\iunredo.hxx"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TRiASHelper.h"\
	{$(INCLUDE)}"\triasprv.h"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\undohelp.hxx"\
	{$(INCLUDE)}"\undoredo.hxx"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	
NODEP_CPP_UNDOD=\
	".\trias16r.h"\
	

!IF  "$(CFG)" == "Trias32 - Win32 Release"


"$(INTDIR)\undodlg.obj" : $(SOURCE) $(DEP_CPP_UNDOD) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"


".\Obj32\Debug\undodlg.obj" : $(SOURCE) $(DEP_CPP_UNDOD) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\undodlg.sbr" : $(SOURCE) $(DEP_CPP_UNDOD) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"


"$(INTDIR)\undodlg.obj" : $(SOURCE) $(DEP_CPP_UNDOD) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\AUSSCHN.CXX
DEP_CPP_AUSSC=\
	".\AUSSCHN.H"\
	".\AUSSCHN.HXX"\
	".\clbmpobj.hxx"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\triaspre.hxx"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	

!IF  "$(CFG)" == "Trias32 - Win32 Release"


"$(INTDIR)\AUSSCHN.OBJ" : $(SOURCE) $(DEP_CPP_AUSSC) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"


".\Obj32\Debug\AUSSCHN.OBJ" : $(SOURCE) $(DEP_CPP_AUSSC) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\AUSSCHN.SBR" : $(SOURCE) $(DEP_CPP_AUSSC) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"


"$(INTDIR)\AUSSCHN.OBJ" : $(SOURCE) $(DEP_CPP_AUSSC) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\OVERVIEW.CXX
DEP_CPP_OVERV=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\OVERVIEW.HXX"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SHIFTOVW.HXX"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\strings.h"\
	".\triaspre.hxx"\
	".\triasres.h"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	
NODEP_CPP_OVERV=\
	".\trias16r.h"\
	

!IF  "$(CFG)" == "Trias32 - Win32 Release"


"$(INTDIR)\OVERVIEW.OBJ" : $(SOURCE) $(DEP_CPP_OVERV) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"


".\Obj32\Debug\OVERVIEW.OBJ" : $(SOURCE) $(DEP_CPP_OVERV) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\OVERVIEW.SBR" : $(SOURCE) $(DEP_CPP_OVERV) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"


"$(INTDIR)\OVERVIEW.OBJ" : $(SOURCE) $(DEP_CPP_OVERV) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\OPENDB.CXX
DEP_CPP_OPEND=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\Opendb.hxx"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\triaspre.hxx"\
	".\triasres.h"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	
NODEP_CPP_OPEND=\
	".\trias16r.h"\
	

!IF  "$(CFG)" == "Trias32 - Win32 Release"


"$(INTDIR)\OPENDB.OBJ" : $(SOURCE) $(DEP_CPP_OPEND) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"


".\Obj32\Debug\OPENDB.OBJ" : $(SOURCE) $(DEP_CPP_OPEND) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\OPENDB.SBR" : $(SOURCE) $(DEP_CPP_OPEND) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"


"$(INTDIR)\OPENDB.OBJ" : $(SOURCE) $(DEP_CPP_OPEND) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\Extfcns.tab

!IF  "$(CFG)" == "Trias32 - Win32 Release"

!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"

!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\Legmerkm.yxx

!IF  "$(CFG)" == "Trias32 - Win32 Release"

# Begin Custom Build - Generating Parser and Lexer Sources ...
InputPath=.\Legmerkm.yxx
InputName=Legmerkm

BuildCmds= \
	fpp -P $(InputPath) > obj32\$(InputName).ypp \
	yxx -ns -nl obj32\$(InputName).ypp \
	sed -e s/yy_export//g legmerkl.hxx > tmp \
	del legmerkl.hxx \
	ren tmp legmerkl.hxx \
	sed -e s/yy_export//g legmerky.hxx > tmp \
	del legmerky.hxx \
	ren tmp legmerky.hxx \
	sed -e s/yy_export//g yy_myref.h > tmp \
	del yy_myref.h \
	ren tmp yy_myref.h \
	

"legmerkl.hxx" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"legmerkl.cxx" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"legmerky.hxx" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"legmerky.cxx" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"yy_myref.h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"

# Begin Custom Build - Generating Parser and Lexer Sources ...
InputPath=.\Legmerkm.yxx
InputName=Legmerkm

BuildCmds= \
	fpp -P $(InputPath) > obj32\$(InputName).ypp \
	yxx -ns -nl obj32\$(InputName).ypp \
	sed -e s/yy_export//g legmerkl.hxx > tmp \
	del legmerkl.hxx \
	ren tmp legmerkl.hxx \
	sed -e s/yy_export//g legmerky.hxx > tmp \
	del legmerky.hxx \
	ren tmp legmerky.hxx \
	sed -e s/yy_export//g yy_myref.h > tmp \
	del yy_myref.h \
	ren tmp yy_myref.h \
	

"legmerkl.hxx" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"legmerkl.cxx" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"legmerky.hxx" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"legmerky.cxx" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"yy_myref.h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"

# Begin Custom Build - Generating Parser and Lexer Sources ...
InputPath=.\Legmerkm.yxx
InputName=Legmerkm

BuildCmds= \
	fpp -P $(InputPath) > obj32\$(InputName).ypp \
	yxx -ns -nl obj32\$(InputName).ypp \
	sed -e s/yy_export//g legmerkl.hxx > tmp \
	del legmerkl.hxx \
	ren tmp legmerkl.hxx \
	sed -e s/yy_export//g legmerky.hxx > tmp \
	del legmerky.hxx \
	ren tmp legmerky.hxx \
	sed -e s/yy_export//g yy_myref.h > tmp \
	del yy_myref.h \
	ren tmp yy_myref.h \
	

"legmerkl.hxx" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"legmerkl.cxx" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"legmerky.hxx" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"legmerky.cxx" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"yy_myref.h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\legmrkyp.cxx
DEP_CPP_LEGMR=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\LEGMERKY.CXX"\
	".\LEGMERKY.HXX"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\triaspre.hxx"\
	".\VISPARAM.H"\
	".\YY_MYREF.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	

!IF  "$(CFG)" == "Trias32 - Win32 Release"


"$(INTDIR)\legmrkyp.obj" : $(SOURCE) $(DEP_CPP_LEGMR) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch" ".\LEGMERKY.HXX" ".\LEGMERKY.CXX" ".\YY_MYREF.H"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"


".\Obj32\Debug\legmrkyp.obj" : $(SOURCE) $(DEP_CPP_LEGMR) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch" ".\LEGMERKY.HXX" ".\LEGMERKY.CXX" ".\YY_MYREF.H"

".\Obj32\Debug\legmrkyp.sbr" : $(SOURCE) $(DEP_CPP_LEGMR) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch" ".\LEGMERKY.HXX" ".\LEGMERKY.CXX" ".\YY_MYREF.H"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"


"$(INTDIR)\legmrkyp.obj" : $(SOURCE) $(DEP_CPP_LEGMR) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch" ".\LEGMERKY.HXX" ".\LEGMERKY.CXX" ".\YY_MYREF.H"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\legmrklp.cxx
DEP_CPP_LEGMRK=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\LEGMERKL.CXX"\
	".\LEGMERKL.HXX"\
	".\LEGMERKY.HXX"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\triaspre.hxx"\
	".\VISPARAM.H"\
	".\YY_MYREF.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	

!IF  "$(CFG)" == "Trias32 - Win32 Release"


"$(INTDIR)\legmrklp.obj" : $(SOURCE) $(DEP_CPP_LEGMRK) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch" ".\LEGMERKL.HXX" ".\LEGMERKL.CXX" ".\LEGMERKY.HXX"\
 ".\YY_MYREF.H"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"


".\Obj32\Debug\legmrklp.obj" : $(SOURCE) $(DEP_CPP_LEGMRK) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch" ".\LEGMERKL.HXX" ".\LEGMERKL.CXX" ".\LEGMERKY.HXX"\
 ".\YY_MYREF.H"

".\Obj32\Debug\legmrklp.sbr" : $(SOURCE) $(DEP_CPP_LEGMRK) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch" ".\LEGMERKL.HXX" ".\LEGMERKL.CXX" ".\LEGMERKY.HXX"\
 ".\YY_MYREF.H"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"


"$(INTDIR)\legmrklp.obj" : $(SOURCE) $(DEP_CPP_LEGMRK) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch" ".\LEGMERKL.HXX" ".\LEGMERKL.CXX" ".\LEGMERKY.HXX"\
 ".\YY_MYREF.H"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\Mru.cpp
DEP_CPP_MRU_C=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\triaspre.hxx"\
	".\triasres.h"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	
NODEP_CPP_MRU_C=\
	".\trias16r.h"\
	

!IF  "$(CFG)" == "Trias32 - Win32 Release"


"$(INTDIR)\Mru.obj" : $(SOURCE) $(DEP_CPP_MRU_C) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"


".\Obj32\Debug\Mru.obj" : $(SOURCE) $(DEP_CPP_MRU_C) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\Mru.sbr" : $(SOURCE) $(DEP_CPP_MRU_C) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"


"$(INTDIR)\Mru.obj" : $(SOURCE) $(DEP_CPP_MRU_C) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\docprops.cxx

!IF  "$(CFG)" == "Trias32 - Win32 Release"

DEP_CPP_DOCPR=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\docprops.hxx"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\editro.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\strings.h"\
	".\triaspre.hxx"\
	".\triasres.h"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\ALGORITHM"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\Dirisole.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\Eonrguid.h"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\IXTNEXT.HXX"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MAP"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\algorithm"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\map"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\advalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\advalgo.h"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\auxalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\auxalgo.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\heap.cc"\
	{$(INCLUDE)}"\ospace\stl\heap.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\map.cc"\
	{$(INCLUDE)}"\ospace\stl\map.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\randgen.h"\
	{$(INCLUDE)}"\ospace\stl\rawalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\rawalgo.h"\
	{$(INCLUDE)}"\ospace\stl\rawiter.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\sort.cc"\
	{$(INCLUDE)}"\ospace\stl\sort.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\tempbuf.cc"\
	{$(INCLUDE)}"\ospace\stl\tempbuf.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\regprop.hxx"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\xtsnguid.h"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	
NODEP_CPP_DOCPR=\
	".\trias16r.h"\
	

"$(INTDIR)\docprops.obj" : $(SOURCE) $(DEP_CPP_DOCPR) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"

DEP_CPP_DOCPR=\
	".\docprops.hxx"\
	".\editro.hxx"\
	".\strings.h"\
	".\triaspre.hxx"\
	".\triasres.h"\
	{$(INCLUDE)}"\ALGORITHM"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dirisole.h"\
	{$(INCLUDE)}"\Eonrguid.h"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\IXTNEXT.HXX"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\MAP"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\algorithm"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\map"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\advalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\advalgo.h"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\auxalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\auxalgo.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\heap.cc"\
	{$(INCLUDE)}"\ospace\stl\heap.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\map.cc"\
	{$(INCLUDE)}"\ospace\stl\map.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\randgen.h"\
	{$(INCLUDE)}"\ospace\stl\rawalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\rawalgo.h"\
	{$(INCLUDE)}"\ospace\stl\rawiter.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\sort.cc"\
	{$(INCLUDE)}"\ospace\stl\sort.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\tempbuf.cc"\
	{$(INCLUDE)}"\ospace\stl\tempbuf.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\regprop.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\xtsnguid.h"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	
NODEP_CPP_DOCPR=\
	".\trias16r.h"\
	

".\Obj32\Debug\docprops.obj" : $(SOURCE) $(DEP_CPP_DOCPR) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\docprops.sbr" : $(SOURCE) $(DEP_CPP_DOCPR) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"

DEP_CPP_DOCPR=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\docprops.hxx"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\editro.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\strings.h"\
	".\triaspre.hxx"\
	".\triasres.h"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\ALGORITHM"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\Dirisole.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\Eonrguid.h"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\IXTNEXT.HXX"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MAP"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\algorithm"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\map"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\advalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\advalgo.h"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\auxalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\auxalgo.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\heap.cc"\
	{$(INCLUDE)}"\ospace\stl\heap.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\map.cc"\
	{$(INCLUDE)}"\ospace\stl\map.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\randgen.h"\
	{$(INCLUDE)}"\ospace\stl\rawalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\rawalgo.h"\
	{$(INCLUDE)}"\ospace\stl\rawiter.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\sort.cc"\
	{$(INCLUDE)}"\ospace\stl\sort.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\tempbuf.cc"\
	{$(INCLUDE)}"\ospace\stl\tempbuf.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\regprop.hxx"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\xtsnguid.h"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	
NODEP_CPP_DOCPR=\
	".\trias16r.h"\
	

"$(INTDIR)\docprops.obj" : $(SOURCE) $(DEP_CPP_DOCPR) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\extmain3.cxx

!IF  "$(CFG)" == "Trias32 - Win32 Release"

DEP_CPP_EXTMA=\
	".\alloprop.hxx"\
	".\AUSSCHN.H"\
	".\BILDOBJ.HXX"\
	".\clbmpobj.hxx"\
	".\CPTriastlb.h"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\eallcprp.hxx"\
	".\EALLPROP.HXX"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\Extfcns.tab"\
	".\extfcnsn.hxx"\
	".\Extfcnsn.tab"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\extmain3.hxx"\
	".\Extqnfy2.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\license.hxx"\
	".\ManageExtDlg.h"\
	".\MENUITEM.H"\
	".\MENUITEM.HXX"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OBJPROP.HXX"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\queryfld.hxx"\
	".\RECHRES.H"\
	".\RECHRES.HXX"\
	".\SAVEOPT.H"\
	".\Selectid.hxx"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\Signon.hxx"\
	".\SIGNON1.H"\
	".\strings.h"\
	".\Tools.hxx"\
	".\TraceTRiAS.h"\
	".\triaspre.hxx"\
	".\triasres.h"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CheckTreeView.h"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\Dirisole.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\Eonrguid.h"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GenTGuid.h"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\iunredo.hxx"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\IXTNEXT.HXX"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MAP"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\oprpguid.h"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Iterenum.h"\
	{$(INCLUDE)}"\ospace\COM\Iterenum.wobase.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\header.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\rtti\class.h"\
	{$(INCLUDE)}"\ospace\rtti\class.ipp"\
	{$(INCLUDE)}"\ospace\rtti\hmacros.h"\
	{$(INCLUDE)}"\ospace\rtti\hmacros1.h"\
	{$(INCLUDE)}"\ospace\rtti\hmacros3.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\map"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\std\typeinfo"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\map.cc"\
	{$(INCLUDE)}"\ospace\stl\map.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\stream\hmacros.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\propguid.h"\
	{$(INCLUDE)}"\Propname.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\registry.hxx"\
	{$(INCLUDE)}"\regprop.hxx"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\Selidlvc.hxx"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\TrCatIDs.h"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TRiASHelper.h"\
	{$(INCLUDE)}"\triasprv.h"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\UNDOGUID.H"\
	{$(INCLUDE)}"\undohelp.hxx"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\xtsnguid.h"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	
NODEP_CPP_EXTMA=\
	".\trias16r.h"\
	

"$(INTDIR)\extmain3.obj" : $(SOURCE) $(DEP_CPP_EXTMA) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"

DEP_CPP_EXTMA=\
	".\alloprop.hxx"\
	".\BILDOBJ.HXX"\
	".\CPTriastlb.h"\
	".\eallcprp.hxx"\
	".\EALLPROP.HXX"\
	".\extfcns.hxx"\
	".\Extfcns.tab"\
	".\extfcnsn.hxx"\
	".\Extfcnsn.tab"\
	".\extmain3.hxx"\
	".\Extqnfy2.hxx"\
	".\license.hxx"\
	".\ManageExtDlg.h"\
	".\MENUITEM.HXX"\
	".\OBJPROP.HXX"\
	".\queryfld.hxx"\
	".\RECHRES.HXX"\
	".\Selectid.hxx"\
	".\Signon.hxx"\
	".\strings.h"\
	".\Tools.hxx"\
	".\TraceTRiAS.h"\
	".\triaspre.hxx"\
	".\triasres.h"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CheckTreeView.h"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dirisole.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eonrguid.h"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GenTGuid.h"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\iunredo.hxx"\
	{$(INCLUDE)}"\IXTNEXT.HXX"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\MAP"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\oprpguid.h"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Iterenum.h"\
	{$(INCLUDE)}"\ospace\COM\Iterenum.wobase.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\header.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\rtti\class.h"\
	{$(INCLUDE)}"\ospace\rtti\class.ipp"\
	{$(INCLUDE)}"\ospace\rtti\hmacros.h"\
	{$(INCLUDE)}"\ospace\rtti\hmacros1.h"\
	{$(INCLUDE)}"\ospace\rtti\hmacros3.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\map"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\typeinfo"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\map.cc"\
	{$(INCLUDE)}"\ospace\stl\map.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\stream\hmacros.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\propguid.h"\
	{$(INCLUDE)}"\Propname.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\registry.hxx"\
	{$(INCLUDE)}"\regprop.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\Selidlvc.hxx"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\TrCatIDs.h"\
	{$(INCLUDE)}"\TRiASHelper.h"\
	{$(INCLUDE)}"\triasprv.h"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\UNDOGUID.H"\
	{$(INCLUDE)}"\undohelp.hxx"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\xtsnguid.h"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	
NODEP_CPP_EXTMA=\
	".\trias16r.h"\
	

".\Obj32\Debug\extmain3.obj" : $(SOURCE) $(DEP_CPP_EXTMA) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\extmain3.sbr" : $(SOURCE) $(DEP_CPP_EXTMA) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"

DEP_CPP_EXTMA=\
	".\alloprop.hxx"\
	".\AUSSCHN.H"\
	".\BILDOBJ.HXX"\
	".\clbmpobj.hxx"\
	".\CPTriastlb.h"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\eallcprp.hxx"\
	".\EALLPROP.HXX"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\Extfcns.tab"\
	".\extfcnsn.hxx"\
	".\Extfcnsn.tab"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\extmain3.hxx"\
	".\Extqnfy2.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\license.hxx"\
	".\ManageExtDlg.h"\
	".\MENUITEM.H"\
	".\MENUITEM.HXX"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OBJPROP.HXX"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\queryfld.hxx"\
	".\RECHRES.H"\
	".\RECHRES.HXX"\
	".\SAVEOPT.H"\
	".\Selectid.hxx"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\Signon.hxx"\
	".\SIGNON1.H"\
	".\strings.h"\
	".\Tools.hxx"\
	".\TraceTRiAS.h"\
	".\triaspre.hxx"\
	".\triasres.h"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CheckTreeView.h"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\Dirisole.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\Eonrguid.h"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GenTGuid.h"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\iunredo.hxx"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\IXTNEXT.HXX"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MAP"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\oprpguid.h"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Iterenum.h"\
	{$(INCLUDE)}"\ospace\COM\Iterenum.wobase.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\header.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\rtti\class.h"\
	{$(INCLUDE)}"\ospace\rtti\class.ipp"\
	{$(INCLUDE)}"\ospace\rtti\hmacros.h"\
	{$(INCLUDE)}"\ospace\rtti\hmacros1.h"\
	{$(INCLUDE)}"\ospace\rtti\hmacros3.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\map"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\std\typeinfo"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\map.cc"\
	{$(INCLUDE)}"\ospace\stl\map.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\stream\hmacros.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\propguid.h"\
	{$(INCLUDE)}"\Propname.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\registry.hxx"\
	{$(INCLUDE)}"\regprop.hxx"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\Selidlvc.hxx"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\TrCatIDs.h"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TRiASHelper.h"\
	{$(INCLUDE)}"\triasprv.h"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\UNDOGUID.H"\
	{$(INCLUDE)}"\undohelp.hxx"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\xtsnguid.h"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	
NODEP_CPP_EXTMA=\
	".\trias16r.h"\
	

"$(INTDIR)\extmain3.obj" : $(SOURCE) $(DEP_CPP_EXTMA) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\Irismai2.cxx

!IF  "$(CFG)" == "Trias32 - Win32 Release"

DEP_CPP_IRISM=\
	".\AUSSCHN.H"\
	".\AUSSCHN.HXX"\
	".\BILDOBJ.HXX"\
	".\clbmpobj.hxx"\
	".\CPTriastlb.h"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\extfcnsn.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\extmain3.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\Legdinfo.hxx"\
	".\LEGENDE.H"\
	".\Legende.hxx"\
	".\LEGWIND.HXX"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\Opendb.hxx"\
	".\OVERVIEW.H"\
	".\OVERVIEW.HXX"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\Prlayout.hxx"\
	".\prlaytyp.hxx"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\Saveopt.hxx"\
	".\Selectid.hxx"\
	".\SELIDENT.H"\
	".\selnview.hxx"\
	".\SIGNON.H"\
	".\Signon.hxx"\
	".\SIGNON1.H"\
	".\strings.h"\
	".\Tools.hxx"\
	".\triaspre.hxx"\
	".\triasres.h"\
	".\viewdrop.h"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\Dirisole.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Printer.hxx"\
	{$(INCLUDE)}"\prntpars.hxx"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\registry.hxx"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\ScopeVar.h"\
	{$(INCLUDE)}"\Selidlvc.hxx"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\TransEx.h"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TRiASHelper.h"\
	{$(INCLUDE)}"\TRiASMode.h"\
	{$(INCLUDE)}"\triasprv.h"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	
NODEP_CPP_IRISM=\
	".\COORDS.HXX"\
	".\trias16r.h"\
	

"$(INTDIR)\Irismai2.obj" : $(SOURCE) $(DEP_CPP_IRISM) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"

DEP_CPP_IRISM=\
	".\AUSSCHN.H"\
	".\AUSSCHN.HXX"\
	".\BILDOBJ.HXX"\
	".\clbmpobj.hxx"\
	".\CPTriastlb.h"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\extfcnsn.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\extmain3.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\Legdinfo.hxx"\
	".\LEGENDE.H"\
	".\Legende.hxx"\
	".\LEGWIND.HXX"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\Opendb.hxx"\
	".\OVERVIEW.H"\
	".\OVERVIEW.HXX"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\Prlayout.hxx"\
	".\prlaytyp.hxx"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\Saveopt.hxx"\
	".\Selectid.hxx"\
	".\SELIDENT.H"\
	".\selnview.hxx"\
	".\SIGNON.H"\
	".\Signon.hxx"\
	".\SIGNON1.H"\
	".\strings.h"\
	".\Tools.hxx"\
	".\triaspre.hxx"\
	".\triasres.h"\
	".\viewdrop.h"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\Dirisole.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Printer.hxx"\
	{$(INCLUDE)}"\prntpars.hxx"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\registry.hxx"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\ScopeVar.h"\
	{$(INCLUDE)}"\Selidlvc.hxx"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\TransEx.h"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TRiASHelper.h"\
	{$(INCLUDE)}"\TRiASMode.h"\
	{$(INCLUDE)}"\triasprv.h"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	
NODEP_CPP_IRISM=\
	".\COORDS.HXX"\
	".\trias16r.h"\
	

".\Obj32\Debug\Irismai2.obj" : $(SOURCE) $(DEP_CPP_IRISM) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\Irismai2.sbr" : $(SOURCE) $(DEP_CPP_IRISM) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"

DEP_CPP_IRISM=\
	".\AUSSCHN.H"\
	".\AUSSCHN.HXX"\
	".\BILDOBJ.HXX"\
	".\clbmpobj.hxx"\
	".\CPTriastlb.h"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\extfcnsn.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\extmain3.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\Legdinfo.hxx"\
	".\LEGENDE.H"\
	".\Legende.hxx"\
	".\LEGWIND.HXX"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\Opendb.hxx"\
	".\OVERVIEW.H"\
	".\OVERVIEW.HXX"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\Prlayout.hxx"\
	".\prlaytyp.hxx"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\Saveopt.hxx"\
	".\Selectid.hxx"\
	".\SELIDENT.H"\
	".\selnview.hxx"\
	".\SIGNON.H"\
	".\Signon.hxx"\
	".\SIGNON1.H"\
	".\strings.h"\
	".\Tools.hxx"\
	".\triaspre.hxx"\
	".\triasres.h"\
	".\viewdrop.h"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\Dirisole.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Printer.hxx"\
	{$(INCLUDE)}"\prntpars.hxx"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\registry.hxx"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\ScopeVar.h"\
	{$(INCLUDE)}"\Selidlvc.hxx"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\TransEx.h"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TRiASHelper.h"\
	{$(INCLUDE)}"\TRiASMode.h"\
	{$(INCLUDE)}"\triasprv.h"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	
NODEP_CPP_IRISM=\
	".\COORDS.HXX"\
	".\trias16r.h"\
	

"$(INTDIR)\Irismai2.obj" : $(SOURCE) $(DEP_CPP_IRISM) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\Irisevt2.cxx

!IF  "$(CFG)" == "Trias32 - Win32 Release"

DEP_CPP_IRISE=\
	".\AUSSCHN.H"\
	".\BILDOBJ.HXX"\
	".\clbmpobj.hxx"\
	".\CPTriastlb.h"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\extfcnsn.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\extmain3.hxx"\
	".\Extqnfy2.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\Legdinfo.hxx"\
	".\LEGENDE.H"\
	".\Legende.hxx"\
	".\LEGWIND.HXX"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\OVERVIEW.HXX"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\Prlayout.hxx"\
	".\prlaytyp.hxx"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\selectn.hxx"\
	".\SELIDENT.H"\
	".\Shift.hxx"\
	".\SIGNON.H"\
	".\Signon.hxx"\
	".\SIGNON1.H"\
	".\strings.h"\
	".\Tools.hxx"\
	".\triaspre.hxx"\
	".\triasres.h"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\Dirisole.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\iunredo.hxx"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MAP"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\map"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\map.cc"\
	{$(INCLUDE)}"\ospace\stl\map.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RECT.HXX"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TRiASHelper.h"\
	{$(INCLUDE)}"\triasprv.h"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\UNDOGUID.H"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	
NODEP_CPP_IRISE=\
	".\COORDS.HXX"\
	".\MASSTAB.HXX"\
	".\trias16r.h"\
	

"$(INTDIR)\Irisevt2.obj" : $(SOURCE) $(DEP_CPP_IRISE) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"

DEP_CPP_IRISE=\
	".\BILDOBJ.HXX"\
	".\CPTriastlb.h"\
	".\extfcns.hxx"\
	".\extfcnsn.hxx"\
	".\extmain3.hxx"\
	".\Extqnfy2.hxx"\
	".\Legdinfo.hxx"\
	".\Legende.hxx"\
	".\LEGWIND.HXX"\
	".\OVERVIEW.HXX"\
	".\Prlayout.hxx"\
	".\prlaytyp.hxx"\
	".\selectn.hxx"\
	".\Shift.hxx"\
	".\Signon.hxx"\
	".\strings.h"\
	".\Tools.hxx"\
	".\triaspre.hxx"\
	".\triasres.h"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dirisole.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\iunredo.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\MAP"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\map"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\map.cc"\
	{$(INCLUDE)}"\ospace\stl\map.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RECT.HXX"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\TRiASHelper.h"\
	{$(INCLUDE)}"\triasprv.h"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\UNDOGUID.H"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	
NODEP_CPP_IRISE=\
	".\COORDS.HXX"\
	".\MASSTAB.HXX"\
	".\trias16r.h"\
	

".\Obj32\Debug\Irisevt2.obj" : $(SOURCE) $(DEP_CPP_IRISE) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\Irisevt2.sbr" : $(SOURCE) $(DEP_CPP_IRISE) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"

DEP_CPP_IRISE=\
	".\AUSSCHN.H"\
	".\BILDOBJ.HXX"\
	".\clbmpobj.hxx"\
	".\CPTriastlb.h"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\extfcnsn.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\extmain3.hxx"\
	".\Extqnfy2.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\Legdinfo.hxx"\
	".\LEGENDE.H"\
	".\Legende.hxx"\
	".\LEGWIND.HXX"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\OVERVIEW.HXX"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\Prlayout.hxx"\
	".\prlaytyp.hxx"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\selectn.hxx"\
	".\SELIDENT.H"\
	".\Shift.hxx"\
	".\SIGNON.H"\
	".\Signon.hxx"\
	".\SIGNON1.H"\
	".\strings.h"\
	".\Tools.hxx"\
	".\triaspre.hxx"\
	".\triasres.h"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\Dirisole.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\iunredo.hxx"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MAP"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\map"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\map.cc"\
	{$(INCLUDE)}"\ospace\stl\map.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RECT.HXX"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TRiASHelper.h"\
	{$(INCLUDE)}"\triasprv.h"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\UNDOGUID.H"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	
NODEP_CPP_IRISE=\
	".\COORDS.HXX"\
	".\MASSTAB.HXX"\
	".\trias16r.h"\
	

"$(INTDIR)\Irisevt2.obj" : $(SOURCE) $(DEP_CPP_IRISE) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\frameevt.cxx

!IF  "$(CFG)" == "Trias32 - Win32 Release"

DEP_CPP_FRAME=\
	".\AUSSCHN.H"\
	".\BILDOBJ.HXX"\
	".\clbmpobj.hxx"\
	".\CPTriastlb.h"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\extfcnsn.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\extmain3.hxx"\
	".\Extqnfy2.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MENUITEM.HXX"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\Opendb.hxx"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\Signon.hxx"\
	".\SIGNON1.H"\
	".\strings.h"\
	".\Tools.hxx"\
	".\triaspre.hxx"\
	".\triasres.h"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\Dirisole.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\Eonrguid.h"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\iunredo.hxx"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MAP"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\oprpguid.h"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\map"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\map.cc"\
	{$(INCLUDE)}"\ospace\stl\map.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\registry.hxx"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\statguid.h"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TRiASHelper.h"\
	{$(INCLUDE)}"\triasprv.h"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\UNDOGUID.H"\
	{$(INCLUDE)}"\undohelp.hxx"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\xtsnguid.h"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	
NODEP_CPP_FRAME=\
	".\trias16r.h"\
	

"$(INTDIR)\frameevt.obj" : $(SOURCE) $(DEP_CPP_FRAME) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"

DEP_CPP_FRAME=\
	".\BILDOBJ.HXX"\
	".\CPTriastlb.h"\
	".\extfcns.hxx"\
	".\extfcnsn.hxx"\
	".\extmain3.hxx"\
	".\Extqnfy2.hxx"\
	".\MENUITEM.HXX"\
	".\Opendb.hxx"\
	".\Signon.hxx"\
	".\strings.h"\
	".\Tools.hxx"\
	".\triaspre.hxx"\
	".\triasres.h"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dirisole.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eonrguid.h"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\iunredo.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\MAP"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\oprpguid.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\map"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\map.cc"\
	{$(INCLUDE)}"\ospace\stl\map.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\registry.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\statguid.h"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\TRiASHelper.h"\
	{$(INCLUDE)}"\triasprv.h"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\UNDOGUID.H"\
	{$(INCLUDE)}"\undohelp.hxx"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\xtsnguid.h"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	
NODEP_CPP_FRAME=\
	".\trias16r.h"\
	

".\Obj32\Debug\frameevt.obj" : $(SOURCE) $(DEP_CPP_FRAME) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\frameevt.sbr" : $(SOURCE) $(DEP_CPP_FRAME) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"

DEP_CPP_FRAME=\
	".\AUSSCHN.H"\
	".\BILDOBJ.HXX"\
	".\clbmpobj.hxx"\
	".\CPTriastlb.h"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\extfcnsn.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\extmain3.hxx"\
	".\Extqnfy2.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MENUITEM.HXX"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\Opendb.hxx"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\Signon.hxx"\
	".\SIGNON1.H"\
	".\strings.h"\
	".\Tools.hxx"\
	".\triaspre.hxx"\
	".\triasres.h"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\Dirisole.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\Eonrguid.h"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\iunredo.hxx"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MAP"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\oprpguid.h"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\map"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\map.cc"\
	{$(INCLUDE)}"\ospace\stl\map.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\registry.hxx"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\statguid.h"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TRiASHelper.h"\
	{$(INCLUDE)}"\triasprv.h"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\UNDOGUID.H"\
	{$(INCLUDE)}"\undohelp.hxx"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\xtsnguid.h"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	
NODEP_CPP_FRAME=\
	".\trias16r.h"\
	

"$(INTDIR)\frameevt.obj" : $(SOURCE) $(DEP_CPP_FRAME) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\Irisuti2.cxx
DEP_CPP_IRISU=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\CPTriastlb.h"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\extfcnsn.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\extmain3.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\Legdinfo.hxx"\
	".\LEGENDE.H"\
	".\LEGWIND.HXX"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\strings.h"\
	".\TraceTRiAS.h"\
	".\triaspre.hxx"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBADDR.HXX"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\Dirisole.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\Kons.hxx"\
	{$(INCLUDE)}"\KONSOBJ.HXX"\
	{$(INCLUDE)}"\KONSSATZ.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Printer.hxx"\
	{$(INCLUDE)}"\prntpars.hxx"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\registry.hxx"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TRiASHelper.h"\
	{$(INCLUDE)}"\TRiASMode.h"\
	{$(INCLUDE)}"\triasprv.h"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	

!IF  "$(CFG)" == "Trias32 - Win32 Release"


"$(INTDIR)\Irisuti2.obj" : $(SOURCE) $(DEP_CPP_IRISU) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"


".\Obj32\Debug\Irisuti2.obj" : $(SOURCE) $(DEP_CPP_IRISU) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\Irisuti2.sbr" : $(SOURCE) $(DEP_CPP_IRISU) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"


"$(INTDIR)\Irisuti2.obj" : $(SOURCE) $(DEP_CPP_IRISU) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\Irisopn2.cxx
DEP_CPP_IRISO=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\CPTriastlb.h"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\extfcnsn.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\extmain3.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\Legdinfo.hxx"\
	".\LEGENDE.H"\
	".\Legende.hxx"\
	".\LEGWIND.HXX"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\Opendb.hxx"\
	".\OVERVIEW.H"\
	".\OVERVIEW.HXX"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\Prlayout.hxx"\
	".\prlaytyp.hxx"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\strings.h"\
	".\Tools.hxx"\
	".\triaspre.hxx"\
	".\triasres.h"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBCONFIG.H"\
	{$(INCLUDE)}"\DBD.H"\
	{$(INCLUDE)}"\Dbd.hxx"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\Dirisole.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\registry.hxx"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TRiASHelper.h"\
	{$(INCLUDE)}"\triasprv.h"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	
NODEP_CPP_IRISO=\
	".\COORDS.HXX"\
	".\MASSTAB.HXX"\
	".\trias16r.h"\
	

!IF  "$(CFG)" == "Trias32 - Win32 Release"


"$(INTDIR)\Irisopn2.obj" : $(SOURCE) $(DEP_CPP_IRISO) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"


".\Obj32\Debug\Irisopn2.obj" : $(SOURCE) $(DEP_CPP_IRISO) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\Irisopn2.sbr" : $(SOURCE) $(DEP_CPP_IRISO) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"


"$(INTDIR)\Irisopn2.obj" : $(SOURCE) $(DEP_CPP_IRISO) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\offscrn.cxx
DEP_CPP_OFFSC=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\offscrn.hxx"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\triaspre.hxx"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	

!IF  "$(CFG)" == "Trias32 - Win32 Release"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"

# PROP BASE Exclude_From_Build 1
# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\Vispara3.cxx

!IF  "$(CFG)" == "Trias32 - Win32 Release"

DEP_CPP_VISPA=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\COLORBOX.HXX"\
	".\Dboarray.hxx"\
	".\DCOLOR.HXX"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\Legdinfo.hxx"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALRECT.HXX"\
	".\PALWIND.H"\
	".\PALWIND.HXX"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTABRT.HXX"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\strings.h"\
	".\triaspre.hxx"\
	".\triasres.h"\
	".\vispara3.hxx"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\EFONT.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\InPlaceCombo.h"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\iunredo.hxx"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNCOMBO.HXX"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Printer.hxx"\
	{$(INCLUDE)}"\prntpars.hxx"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\Selidlvc.hxx"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\UNDOGUID.H"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	
NODEP_CPP_VISPA=\
	".\trias16r.h"\
	

"$(INTDIR)\Vispara3.obj" : $(SOURCE) $(DEP_CPP_VISPA) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"

DEP_CPP_VISPA=\
	".\clbmpobj.hxx"\
	".\COLORBOX.HXX"\
	".\DCOLOR.HXX"\
	".\Legdinfo.hxx"\
	".\PALRECT.HXX"\
	".\PALWIND.HXX"\
	".\PRNTABRT.HXX"\
	".\strings.h"\
	".\triaspre.hxx"\
	".\triasres.h"\
	".\vispara3.hxx"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\EFONT.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\InPlaceCombo.h"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\iunredo.hxx"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNCOMBO.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\Printer.hxx"\
	{$(INCLUDE)}"\prntpars.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\Selidlvc.hxx"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\UNDOGUID.H"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	
NODEP_CPP_VISPA=\
	".\trias16r.h"\
	

".\Obj32\Debug\Vispara3.obj" : $(SOURCE) $(DEP_CPP_VISPA) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\Vispara3.sbr" : $(SOURCE) $(DEP_CPP_VISPA) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"

DEP_CPP_VISPA=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\COLORBOX.HXX"\
	".\Dboarray.hxx"\
	".\DCOLOR.HXX"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\Legdinfo.hxx"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALRECT.HXX"\
	".\PALWIND.H"\
	".\PALWIND.HXX"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTABRT.HXX"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\strings.h"\
	".\triaspre.hxx"\
	".\triasres.h"\
	".\vispara3.hxx"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\EFONT.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\InPlaceCombo.h"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\iunredo.hxx"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNCOMBO.HXX"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Printer.hxx"\
	{$(INCLUDE)}"\prntpars.hxx"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\Selidlvc.hxx"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\UNDOGUID.H"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	
NODEP_CPP_VISPA=\
	".\trias16r.h"\
	

"$(INTDIR)\Vispara3.obj" : $(SOURCE) $(DEP_CPP_VISPA) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\selprio.cxx

!IF  "$(CFG)" == "Trias32 - Win32 Release"

DEP_CPP_SELPR=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\selprio.hxx"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\triaspre.hxx"\
	".\triasres.h"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\bmpbtn.hxx"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\iunredo.hxx"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\Selidlvc.hxx"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\UNDOGUID.H"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	
NODEP_CPP_SELPR=\
	".\trias16r.h"\
	

"$(INTDIR)\selprio.obj" : $(SOURCE) $(DEP_CPP_SELPR) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"

DEP_CPP_SELPR=\
	".\selprio.hxx"\
	".\triaspre.hxx"\
	".\triasres.h"\
	{$(INCLUDE)}"\bmpbtn.hxx"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\iunredo.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\Selidlvc.hxx"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\UNDOGUID.H"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	
NODEP_CPP_SELPR=\
	".\trias16r.h"\
	

".\Obj32\Debug\selprio.obj" : $(SOURCE) $(DEP_CPP_SELPR) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\selprio.sbr" : $(SOURCE) $(DEP_CPP_SELPR) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"

DEP_CPP_SELPR=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\selprio.hxx"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\triaspre.hxx"\
	".\triasres.h"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\bmpbtn.hxx"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\iunredo.hxx"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\Selidlvc.hxx"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\UNDOGUID.H"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	
NODEP_CPP_SELPR=\
	".\trias16r.h"\
	

"$(INTDIR)\selprio.obj" : $(SOURCE) $(DEP_CPP_SELPR) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\modifyid.cxx
DEP_CPP_MODIF=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\triaspre.hxx"\
	".\triasres.h"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\dstobwnd.h"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\Ipropseq.hxx"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\Modidprp.h"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\ObjekteDoppelnGuid.h"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\propactn.h"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\Selidprp.h"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	
NODEP_CPP_MODIF=\
	".\trias16r.h"\
	

!IF  "$(CFG)" == "Trias32 - Win32 Release"


"$(INTDIR)\modifyid.obj" : $(SOURCE) $(DEP_CPP_MODIF) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"


".\Obj32\Debug\modifyid.obj" : $(SOURCE) $(DEP_CPP_MODIF) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\modifyid.sbr" : $(SOURCE) $(DEP_CPP_MODIF) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"


"$(INTDIR)\modifyid.obj" : $(SOURCE) $(DEP_CPP_MODIF) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\Selectid.cxx
DEP_CPP_SELECT=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\Selectid.hxx"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\triaspre.hxx"\
	".\triasres.h"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\Selidlvc.hxx"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\statguid.h"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	
NODEP_CPP_SELECT=\
	".\trias16r.h"\
	

!IF  "$(CFG)" == "Trias32 - Win32 Release"


"$(INTDIR)\Selectid.obj" : $(SOURCE) $(DEP_CPP_SELECT) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"


".\Obj32\Debug\Selectid.obj" : $(SOURCE) $(DEP_CPP_SELECT) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\Selectid.sbr" : $(SOURCE) $(DEP_CPP_SELECT) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"


"$(INTDIR)\Selectid.obj" : $(SOURCE) $(DEP_CPP_SELECT) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\strings.cxx

!IF  "$(CFG)" == "Trias32 - Win32 Release"

DEP_CPP_STRIN=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\strings.h"\
	".\triaspre.hxx"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	

"$(INTDIR)\strings.obj" : $(SOURCE) $(DEP_CPP_STRIN) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"

DEP_CPP_STRIN=\
	".\strings.h"\
	".\triaspre.hxx"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Protos.h"\
	

".\Obj32\Debug\strings.obj" : $(SOURCE) $(DEP_CPP_STRIN) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\strings.sbr" : $(SOURCE) $(DEP_CPP_STRIN) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"

DEP_CPP_STRIN=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\strings.h"\
	".\triaspre.hxx"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	

"$(INTDIR)\strings.obj" : $(SOURCE) $(DEP_CPP_STRIN) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\Extfcnsn.tab

!IF  "$(CFG)" == "Trias32 - Win32 Release"

!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"

!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\Extmmsg2.cxx

!IF  "$(CFG)" == "Trias32 - Win32 Release"

DEP_CPP_EXTMM=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\CPTriastlb.h"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\extfcnsn.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\extmain3.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\Legdinfo.hxx"\
	".\LEGENDE.H"\
	".\LEGWIND.HXX"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\OVERVIEW.HXX"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\strings.h"\
	".\Tools.hxx"\
	".\TraceTRiAS.h"\
	".\triaspre.hxx"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\Dirisole.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TRiASHelper.h"\
	{$(INCLUDE)}"\triasprv.h"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	
NODEP_CPP_EXTMM=\
	".\COORDS.HXX"\
	
# ADD CPP /Os
# SUBTRACT CPP /Ot

"$(INTDIR)\Extmmsg2.obj" : $(SOURCE) $(DEP_CPP_EXTMM) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"
   $(CPP) /nologo /MD /W3 /WX /GX /Og /Oi /Os /Ob1 /Gf /Gy /D "NDEBUG" /D\
 "WIN32" /D "_WINDOWS" /D "__CV__" /D "STRICT" /D "MSWIND" /D "DLL" /D\
 "__TRIASEXE__" /D "OS_WIN_95" /D "OS_STL_ASSERT" /D "OS_NO_WSTRING" /D\
 "OS_ALTERNATIVE_STRING_NAMES" /D "__ATL_USED__" /D "QI_EXCEPTION" /D\
 "OS_NO_STREAM_SUPPORT" /D "_GERMAN_RESOURCES" /D "OS_NO_ALLOCATORS" /D\
 "TRANSPARENT_PATTERNS" /D "_ATL_NEW_CCOMSTRUCT" /Fp"$(INTDIR)/Trias42.pch"\
 /Yu"triaspre.hxx" /Fo"$(INTDIR)/" /c $(SOURCE)


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"

DEP_CPP_EXTMM=\
	".\CPTriastlb.h"\
	".\extfcns.hxx"\
	".\extfcnsn.hxx"\
	".\extmain3.hxx"\
	".\Legdinfo.hxx"\
	".\LEGWIND.HXX"\
	".\OVERVIEW.HXX"\
	".\strings.h"\
	".\Tools.hxx"\
	".\TraceTRiAS.h"\
	".\triaspre.hxx"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dirisole.h"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\TRiASHelper.h"\
	{$(INCLUDE)}"\triasprv.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	
NODEP_CPP_EXTMM=\
	".\COORDS.HXX"\
	

BuildCmds= \
	$(CPP) /nologo /MDd /W3 /WX /Gm /GX /Zi /Od /D "_DEBUG" /D "WIN32" /D\
 "_WINDOWS" /D "__CV__" /D "STRICT" /D "MSWIND" /D "DLL" /D "__TRIASEXE__" /D\
 "OS_WIN_95" /D "OS_STL_ASSERT" /D "OS_NO_WSTRING" /D\
 "OS_ALTERNATIVE_STRING_NAMES" /D "__ATL_USED__" /D "QI_EXCEPTION" /D\
 "OS_NO_STREAM_SUPPORT" /D "_GERMAN_RESOURCES" /D "OS_NO_ALLOCATORS" /D\
 "TRANSPARENT_PATTERNS" /D "_ATL_NEW_CCOMSTRUCT" /FR"Obj32/Debug/"\
 /Fp"Obj32/Debug/trias32d.pch" /Yu"triaspre.hxx" /Fo"Obj32/Debug/"\
 /Fd"Obj32/Debug/trias32d.pdb" /c $(SOURCE) \
	

".\Obj32\Debug\Extmmsg2.obj" : $(SOURCE) $(DEP_CPP_EXTMM) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"
   $(BuildCmds)

".\Obj32\Debug\Extmmsg2.sbr" : $(SOURCE) $(DEP_CPP_EXTMM) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"
   $(BuildCmds)

!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"

DEP_CPP_EXTMM=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\CPTriastlb.h"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\extfcnsn.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\extmain3.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\Legdinfo.hxx"\
	".\LEGENDE.H"\
	".\LEGWIND.HXX"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\OVERVIEW.HXX"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\strings.h"\
	".\Tools.hxx"\
	".\TraceTRiAS.h"\
	".\triaspre.hxx"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\Dirisole.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TRiASHelper.h"\
	{$(INCLUDE)}"\triasprv.h"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	
NODEP_CPP_EXTMM=\
	".\COORDS.HXX"\
	
# ADD BASE CPP /Os
# SUBTRACT BASE CPP /Ot
# ADD CPP /Os
# SUBTRACT CPP /Ot

"$(INTDIR)\Extmmsg2.obj" : $(SOURCE) $(DEP_CPP_EXTMM) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"
   $(CPP) /nologo /MD /W3 /WX /GX /Zi /Og /Oi /Os /Ob1 /Gf /Gy /D "NDEBUG" /D\
 "WIN32" /D "_WINDOWS" /D "__CV__" /D "STRICT" /D "MSWIND" /D "DLL" /D\
 "__TRIASEXE__" /D "OS_WIN_95" /D "OS_STL_ASSERT" /D "OS_NO_WSTRING" /D\
 "OS_ALTERNATIVE_STRING_NAMES" /D "__ATL_USED__" /D "QI_EXCEPTION" /D\
 "OS_NO_STREAM_SUPPORT" /D "_GERMAN_RESOURCES" /D "OS_NO_ALLOCATORS" /D\
 "TRANSPARENT_PATTERNS" /D "_ATL_NEW_CCOMSTRUCT" /Fp"$(INTDIR)/Trias42.pch"\
 /Yu"triaspre.hxx" /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c $(SOURCE)


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\Extfcnsn.cxx
DEP_CPP_EXTFC=\
	".\ARRAY.HXX"\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\CPTriastlb.h"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\extfcnsn.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\extmain3.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\Legdinfo.hxx"\
	".\LEGENDE.H"\
	".\LEGWIND.HXX"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\OVERVIEW.HXX"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\strings.h"\
	".\Tools.hxx"\
	".\triaspre.hxx"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\Dirisole.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TRiASHelper.h"\
	{$(INCLUDE)}"\triasprv.h"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	
NODEP_CPP_EXTFC=\
	".\COORDS.HXX"\
	

!IF  "$(CFG)" == "Trias32 - Win32 Release"


"$(INTDIR)\Extfcnsn.obj" : $(SOURCE) $(DEP_CPP_EXTFC) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"


".\Obj32\Debug\Extfcnsn.obj" : $(SOURCE) $(DEP_CPP_EXTFC) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\Extfcnsn.sbr" : $(SOURCE) $(DEP_CPP_EXTFC) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"


"$(INTDIR)\Extfcnsn.obj" : $(SOURCE) $(DEP_CPP_EXTFC) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\Extfcns1.cxx
DEP_CPP_EXTFCN=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\CPTriastlb.h"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\extfcnsn.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\extmain3.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\Legdinfo.hxx"\
	".\LEGENDE.H"\
	".\LEGWIND.HXX"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\OVERVIEW.HXX"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\strings.h"\
	".\Tools.hxx"\
	".\triaspre.hxx"\
	".\triasres.h"\
	".\VISPARAM.H"\
	".\WinMMWrap.h"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBADDR.HXX"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\Dirisole.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\Eonrguid.h"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\iunredo.hxx"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\Kons.hxx"\
	{$(INCLUDE)}"\KONSOBJ.HXX"\
	{$(INCLUDE)}"\KONSSATZ.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\registry.hxx"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TRiASHelper.h"\
	{$(INCLUDE)}"\TRiASMode.h"\
	{$(INCLUDE)}"\triasprv.h"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\UNDOGUID.H"\
	{$(INCLUDE)}"\undohelp.hxx"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\xtsnguid.h"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	
NODEP_CPP_EXTFCN=\
	".\trias16r.h"\
	

!IF  "$(CFG)" == "Trias32 - Win32 Release"


"$(INTDIR)\Extfcns1.obj" : $(SOURCE) $(DEP_CPP_EXTFCN) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"


".\Obj32\Debug\Extfcns1.obj" : $(SOURCE) $(DEP_CPP_EXTFCN) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\Extfcns1.sbr" : $(SOURCE) $(DEP_CPP_EXTFCN) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"


"$(INTDIR)\Extfcns1.obj" : $(SOURCE) $(DEP_CPP_EXTFCN) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\extfcns2.cxx
DEP_CPP_EXTFCNS=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\CPTriastlb.h"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\extfcnsn.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\extmain3.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\Legdinfo.hxx"\
	".\LEGENDE.H"\
	".\LEGWIND.HXX"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\Minitpbd.hxx"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\OVERVIEW.HXX"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\strings.h"\
	".\Tools.hxx"\
	".\triaspre.hxx"\
	".\triasres.h"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBADDR.HXX"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\Dirisole.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\Eonrguid.h"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\iunredo.hxx"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\Kons.hxx"\
	{$(INCLUDE)}"\KONSOBJ.HXX"\
	{$(INCLUDE)}"\KONSSATZ.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\registry.hxx"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TRiASHelper.h"\
	{$(INCLUDE)}"\triasprv.h"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\UNDOGUID.H"\
	{$(INCLUDE)}"\undohelp.hxx"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\xtsnguid.h"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	
NODEP_CPP_EXTFCNS=\
	".\trias16r.h"\
	

!IF  "$(CFG)" == "Trias32 - Win32 Release"


"$(INTDIR)\extfcns2.obj" : $(SOURCE) $(DEP_CPP_EXTFCNS) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"


".\Obj32\Debug\extfcns2.obj" : $(SOURCE) $(DEP_CPP_EXTFCNS) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\extfcns2.sbr" : $(SOURCE) $(DEP_CPP_EXTFCNS) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"


"$(INTDIR)\extfcns2.obj" : $(SOURCE) $(DEP_CPP_EXTFCNS) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\masstab2.cpp
DEP_CPP_MASST=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\OVERVIEW.HXX"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\triaspre.hxx"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	

!IF  "$(CFG)" == "Trias32 - Win32 Release"


"$(INTDIR)\masstab2.obj" : $(SOURCE) $(DEP_CPP_MASST) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"


".\Obj32\Debug\masstab2.obj" : $(SOURCE) $(DEP_CPP_MASST) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\masstab2.sbr" : $(SOURCE) $(DEP_CPP_MASST) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"


"$(INTDIR)\masstab2.obj" : $(SOURCE) $(DEP_CPP_MASST) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\rgb_hsb2.cpp

!IF  "$(CFG)" == "Trias32 - Win32 Release"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"

# PROP Exclude_From_Build 1
DEP_CPP_RGB_HS=\
	{$(INCLUDE)}"\RGB_HSB2.HXX"\
	

!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"

# PROP BASE Exclude_From_Build 1
# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\obj32\TRIAS32.DEF

!IF  "$(CFG)" == "Trias32 - Win32 Release"

!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"

!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\obj32\Trias32.RC
DEP_RSC_TRIAS3=\
	"..\Trias\BMP\15gesamt.bmp"\
	"..\Trias\BMP\20gesamt.bmp"\
	"..\Trias\BMP\32gesamt.bmp"\
	"..\Trias\BMP\catid_se.bmp"\
	"..\Trias\BMP\catid_to.bmp"\
	"..\Trias\BMP\ccplugin.bmp"\
	"..\Trias\BMP\down.bmp"\
	"..\Trias\BMP\downdis.bmp"\
	"..\Trias\BMP\downfocs.bmp"\
	"..\Trias\BMP\downsel.bmp"\
	"..\Trias\BMP\headerst.bmp"\
	"..\Trias\BMP\UndoRedoDetails.bmp"\
	"..\Trias\BMP\up.bmp"\
	"..\Trias\BMP\updis.bmp"\
	"..\Trias\BMP\upfocs.bmp"\
	"..\Trias\BMP\upsel.bmp"\
	"..\Trias\obj32\refresh.ico"\
	"..\Trias\obj32\RES\Ting.wav"\
	"..\Trias\obj32\textcopy.cur"\
	"..\Trias\obj32\textmove.cur"\
	"..\Trias\PKTZUORD\offset15.bin"\
	"..\Trias\PKTZUORD\offset23.bin"\
	"..\Trias\PKTZUORD\offset32.bin"\
	"..\Trias\PKTZUORD\offsetab.bin"\
	".\obj32\32_blau.ico"\
	".\obj32\32_schwarz.ico"\
	".\obj32\BLINKEL.BMP"\
	".\obj32\BUCH.ICO"\
	".\obj32\BUCHICON.ICO"\
	".\obj32\copystr.rc"\
	".\obj32\DIRISICO.ICO"\
	".\obj32\IDT1024.DBD"\
	".\obj32\IDT1024C.DBD"\
	".\obj32\INVPAT.BMP"\
	".\obj32\LUPE.CUR"\
	".\obj32\LUPE.ICO"\
	".\obj32\MOVE.CUR"\
	".\obj32\pkeycode.h"\
	".\obj32\Res\Globe.avi"\
	".\obj32\RIS2048.DBD"\
	".\obj32\RIS2048C.011"\
	".\obj32\RIS2048C.014"\
	".\obj32\SHELL.ICO"\
	".\obj32\SHELL3.ICO"\
	".\obj32\SIGNON1.BMP"\
	".\obj32\signon1.src"\
	".\obj32\startup.BM_"\
	".\obj32\STARTUPT.BM_"\
	".\obj32\trias32.rcv"\
	".\obj32\trias32r.hm"\
	".\obj32\TSTART.WAV"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\MUSCRL32.H"\
	
NODEP_RSC_TRIAS3=\
	".\obj32\copystrnew.h"\
	".\obj32\iris.h"\
	".\obj32\obj32\flaechen.rc2"\
	".\obj32\obj32\percent.rc2"\
	".\obj32\obj32\punkte.rc2"\
	".\obj32\personal.rc"\
	".\obj32\punktstr.h"\
	".\obj32\punktstr.rc"\
	

!IF  "$(CFG)" == "Trias32 - Win32 Release"


"$(INTDIR)\Trias32.res" : $(SOURCE) $(DEP_RSC_TRIAS3) "$(INTDIR)"
   $(RSC) /l 0x407 /fo"$(INTDIR)/Trias32.res" /i ".." /i "obj32" /d "NDEBUG" /d\
 "_GERMAN_RESOURCES" /d "_NEWORMENU" $(SOURCE)


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"


".\Obj32\Debug\TRIAS32.res" : $(SOURCE) $(DEP_RSC_TRIAS3) "$(INTDIR)"
   $(RSC) /l 0x407 /fo"Obj32/Debug/TRIAS32.res" /i ".." /i "obj32" /d "_DEBUG"\
 /d "_GERMAN_RESOURCES" /d "_NEWORMENU" $(SOURCE)


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"


"$(INTDIR)\Trias32.res" : $(SOURCE) $(DEP_RSC_TRIAS3) "$(INTDIR)"
   $(RSC) /l 0x407 /fo"$(INTDIR)/Trias32.res" /i ".." /i "obj32" /d "NDEBUG" /d\
 "_GERMAN_RESOURCES" /d "_NEWORMENU" $(SOURCE)


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\RechSheet.cpp
DEP_CPP_RECHS=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\strings.h"\
	".\triaspre.hxx"\
	".\triasres.h"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\dstobwnd.h"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\Eonrguid.h"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GenTGuid.h"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\Ipropseq.hxx"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\propactn.h"\
	{$(INCLUDE)}"\propguid.h"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\Selidprp.h"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\SrChoice.h"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\xtsnguid.h"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	
NODEP_CPP_RECHS=\
	".\trias16r.h"\
	

!IF  "$(CFG)" == "Trias32 - Win32 Release"

# PROP Exclude_From_Build 0

"$(INTDIR)\RechSheet.obj" : $(SOURCE) $(DEP_CPP_RECHS) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"


".\Obj32\Debug\RechSheet.obj" : $(SOURCE) $(DEP_CPP_RECHS) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\RechSheet.sbr" : $(SOURCE) $(DEP_CPP_RECHS) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"

# PROP BASE Exclude_From_Build 0
# PROP Exclude_From_Build 0

"$(INTDIR)\RechSheet.obj" : $(SOURCE) $(DEP_CPP_RECHS) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\viewdrop.cpp
DEP_CPP_VIEWD=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\triaspre.hxx"\
	".\viewdrop.h"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\Dirisole.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	

!IF  "$(CFG)" == "Trias32 - Win32 Release"


"$(INTDIR)\viewdrop.obj" : $(SOURCE) $(DEP_CPP_VIEWD) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"


".\Obj32\Debug\viewdrop.obj" : $(SOURCE) $(DEP_CPP_VIEWD) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\viewdrop.sbr" : $(SOURCE) $(DEP_CPP_VIEWD) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"


"$(INTDIR)\viewdrop.obj" : $(SOURCE) $(DEP_CPP_VIEWD) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\dragdrop.cpp
DEP_CPP_DRAGD=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\CPTriastlb.h"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\extfcnsn.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\extmain3.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\strings.h"\
	".\triaspre.hxx"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\Dirisole.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\Eonrguid.h"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TRiASHelper.h"\
	{$(INCLUDE)}"\triasprv.h"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\xtsnguid.h"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	

!IF  "$(CFG)" == "Trias32 - Win32 Release"

# PROP Exclude_From_Build 0

"$(INTDIR)\dragdrop.obj" : $(SOURCE) $(DEP_CPP_DRAGD) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"


".\Obj32\Debug\dragdrop.obj" : $(SOURCE) $(DEP_CPP_DRAGD) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\dragdrop.sbr" : $(SOURCE) $(DEP_CPP_DRAGD) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"

# PROP BASE Exclude_From_Build 0
# PROP Exclude_From_Build 0

"$(INTDIR)\dragdrop.obj" : $(SOURCE) $(DEP_CPP_DRAGD) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\DdORWnd.cpp

!IF  "$(CFG)" == "Trias32 - Win32 Release"

DEP_CPP_DDORW=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\CPTriastlb.h"\
	".\Dboarray.hxx"\
	".\DdORWnd.h"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\extfcnsn.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\extmain3.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\strings.h"\
	".\TENUMS.H"\
	".\triaspre.hxx"\
	".\triasres.h"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\Dirisole.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\Eonrguid.h"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Iterenum.h"\
	{$(INCLUDE)}"\ospace\COM\Iterenum.wobase.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\header.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\rtti\class.h"\
	{$(INCLUDE)}"\ospace\rtti\class.ipp"\
	{$(INCLUDE)}"\ospace\rtti\hmacros.h"\
	{$(INCLUDE)}"\ospace\rtti\hmacros1.h"\
	{$(INCLUDE)}"\ospace\rtti\hmacros3.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\std\typeinfo"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\stream\hmacros.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TRiASHelper.h"\
	{$(INCLUDE)}"\triasprv.h"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	
NODEP_CPP_DDORW=\
	".\trias16r.h"\
	

"$(INTDIR)\DdORWnd.obj" : $(SOURCE) $(DEP_CPP_DDORW) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"

DEP_CPP_DDORW=\
	".\CPTriastlb.h"\
	".\DdORWnd.h"\
	".\extfcns.hxx"\
	".\extfcnsn.hxx"\
	".\extmain3.hxx"\
	".\strings.h"\
	".\TENUMS.H"\
	".\triaspre.hxx"\
	".\triasres.h"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dirisole.h"\
	{$(INCLUDE)}"\Eonrguid.h"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Iterenum.h"\
	{$(INCLUDE)}"\ospace\COM\Iterenum.wobase.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\header.h"\
	{$(INCLUDE)}"\ospace\rtti\class.h"\
	{$(INCLUDE)}"\ospace\rtti\class.ipp"\
	{$(INCLUDE)}"\ospace\rtti\hmacros.h"\
	{$(INCLUDE)}"\ospace\rtti\hmacros1.h"\
	{$(INCLUDE)}"\ospace\rtti\hmacros3.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\typeinfo"\
	{$(INCLUDE)}"\ospace\stream\hmacros.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\TRiASHelper.h"\
	{$(INCLUDE)}"\triasprv.h"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\YVALS.H"\
	
NODEP_CPP_DDORW=\
	".\trias16r.h"\
	

".\Obj32\Debug\DdORWnd.obj" : $(SOURCE) $(DEP_CPP_DDORW) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\DdORWnd.sbr" : $(SOURCE) $(DEP_CPP_DDORW) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"

DEP_CPP_DDORW=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\CPTriastlb.h"\
	".\Dboarray.hxx"\
	".\DdORWnd.h"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\extfcnsn.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\extmain3.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\strings.h"\
	".\TENUMS.H"\
	".\triaspre.hxx"\
	".\triasres.h"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\Dirisole.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\Eonrguid.h"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Iterenum.h"\
	{$(INCLUDE)}"\ospace\COM\Iterenum.wobase.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\header.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\rtti\class.h"\
	{$(INCLUDE)}"\ospace\rtti\class.ipp"\
	{$(INCLUDE)}"\ospace\rtti\hmacros.h"\
	{$(INCLUDE)}"\ospace\rtti\hmacros1.h"\
	{$(INCLUDE)}"\ospace\rtti\hmacros3.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\std\typeinfo"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\stream\hmacros.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TRiASHelper.h"\
	{$(INCLUDE)}"\triasprv.h"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	
NODEP_CPP_DDORW=\
	".\trias16r.h"\
	

"$(INTDIR)\DdORWnd.obj" : $(SOURCE) $(DEP_CPP_DDORW) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\Drawobj2.cxx
DEP_CPP_DRAWO=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\triaspre.hxx"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\XTENSND.H"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	

!IF  "$(CFG)" == "Trias32 - Win32 Release"


"$(INTDIR)\Drawobj2.obj" : $(SOURCE) $(DEP_CPP_DRAWO) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"


".\Obj32\Debug\Drawobj2.obj" : $(SOURCE) $(DEP_CPP_DRAWO) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\Drawobj2.sbr" : $(SOURCE) $(DEP_CPP_DRAWO) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"


"$(INTDIR)\Drawobj2.obj" : $(SOURCE) $(DEP_CPP_DRAWO) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\Extqnfy2.cxx

!IF  "$(CFG)" == "Trias32 - Win32 Release"

DEP_CPP_EXTQN=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\CPTriastlb.h"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\extfcnsn.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\extmain3.hxx"\
	".\Extqnfy2.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\strings.h"\
	".\triaspre.hxx"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\Dirisole.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MAP"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\map"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\map.cc"\
	{$(INCLUDE)}"\ospace\stl\map.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TRiASHelper.h"\
	{$(INCLUDE)}"\triasprv.h"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	
# ADD CPP /Os /Ob0
# SUBTRACT CPP /Ot

"$(INTDIR)\Extqnfy2.obj" : $(SOURCE) $(DEP_CPP_EXTQN) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"
   $(CPP) /nologo /MD /W3 /WX /GX /Og /Oi /Os /Ob0 /Gf /Gy /D "NDEBUG" /D\
 "WIN32" /D "_WINDOWS" /D "__CV__" /D "STRICT" /D "MSWIND" /D "DLL" /D\
 "__TRIASEXE__" /D "OS_WIN_95" /D "OS_STL_ASSERT" /D "OS_NO_WSTRING" /D\
 "OS_ALTERNATIVE_STRING_NAMES" /D "__ATL_USED__" /D "QI_EXCEPTION" /D\
 "OS_NO_STREAM_SUPPORT" /D "_GERMAN_RESOURCES" /D "OS_NO_ALLOCATORS" /D\
 "TRANSPARENT_PATTERNS" /D "_ATL_NEW_CCOMSTRUCT" /Fp"$(INTDIR)/Trias42.pch"\
 /Yu"triaspre.hxx" /Fo"$(INTDIR)/" /c $(SOURCE)


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"

DEP_CPP_EXTQN=\
	".\CPTriastlb.h"\
	".\extfcns.hxx"\
	".\extfcnsn.hxx"\
	".\extmain3.hxx"\
	".\Extqnfy2.hxx"\
	".\strings.h"\
	".\triaspre.hxx"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dirisole.h"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\MAP"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\map"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\map.cc"\
	{$(INCLUDE)}"\ospace\stl\map.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\TRiASHelper.h"\
	{$(INCLUDE)}"\triasprv.h"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	

BuildCmds= \
	$(CPP) /nologo /MDd /W3 /WX /Gm /GX /Zi /Od /D "_DEBUG" /D "WIN32" /D\
 "_WINDOWS" /D "__CV__" /D "STRICT" /D "MSWIND" /D "DLL" /D "__TRIASEXE__" /D\
 "OS_WIN_95" /D "OS_STL_ASSERT" /D "OS_NO_WSTRING" /D\
 "OS_ALTERNATIVE_STRING_NAMES" /D "__ATL_USED__" /D "QI_EXCEPTION" /D\
 "OS_NO_STREAM_SUPPORT" /D "_GERMAN_RESOURCES" /D "OS_NO_ALLOCATORS" /D\
 "TRANSPARENT_PATTERNS" /D "_ATL_NEW_CCOMSTRUCT" /FR"Obj32/Debug/"\
 /Fp"Obj32/Debug/trias32d.pch" /Yu"triaspre.hxx" /Fo"Obj32/Debug/"\
 /Fd"Obj32/Debug/trias32d.pdb" /c $(SOURCE) \
	

".\Obj32\Debug\Extqnfy2.obj" : $(SOURCE) $(DEP_CPP_EXTQN) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"
   $(BuildCmds)

".\Obj32\Debug\Extqnfy2.sbr" : $(SOURCE) $(DEP_CPP_EXTQN) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"
   $(BuildCmds)

!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"

DEP_CPP_EXTQN=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\CPTriastlb.h"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\extfcnsn.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\extmain3.hxx"\
	".\Extqnfy2.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\strings.h"\
	".\triaspre.hxx"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\Dirisole.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MAP"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\map"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\map.cc"\
	{$(INCLUDE)}"\ospace\stl\map.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TRiASHelper.h"\
	{$(INCLUDE)}"\triasprv.h"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	
# ADD BASE CPP /Os /Ob0
# SUBTRACT BASE CPP /Ot
# ADD CPP /Os /Ob0
# SUBTRACT CPP /Ot

"$(INTDIR)\Extqnfy2.obj" : $(SOURCE) $(DEP_CPP_EXTQN) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"
   $(CPP) /nologo /MD /W3 /WX /GX /Zi /Og /Oi /Os /Ob0 /Gf /Gy /D "NDEBUG" /D\
 "WIN32" /D "_WINDOWS" /D "__CV__" /D "STRICT" /D "MSWIND" /D "DLL" /D\
 "__TRIASEXE__" /D "OS_WIN_95" /D "OS_STL_ASSERT" /D "OS_NO_WSTRING" /D\
 "OS_ALTERNATIVE_STRING_NAMES" /D "__ATL_USED__" /D "QI_EXCEPTION" /D\
 "OS_NO_STREAM_SUPPORT" /D "_GERMAN_RESOURCES" /D "OS_NO_ALLOCATORS" /D\
 "TRANSPARENT_PATTERNS" /D "_ATL_NEW_CCOMSTRUCT" /Fp"$(INTDIR)/Trias42.pch"\
 /Yu"triaspre.hxx" /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c $(SOURCE)


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\IdentCls.cpp

!IF  "$(CFG)" == "Trias32 - Win32 Release"

DEP_CPP_IDENTC=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\IdentCls.h"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\strings.h"\
	".\triaspre.hxx"\
	".\triasres.h"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\IOSTREAM"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MAP"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\helper.h"\
	{$(INCLUDE)}"\ospace\except\helper.ipp"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\except\toolkit.h"\
	{$(INCLUDE)}"\ospace\except\toolkit.ipp"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\iostream"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\map"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\map.cc"\
	{$(INCLUDE)}"\ospace\stl\map.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\regexp.h"\
	{$(INCLUDE)}"\ospace\string\regexp.ipp"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\src\regex.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\substr.cc"\
	{$(INCLUDE)}"\ospace\string\substr.h"\
	{$(INCLUDE)}"\ospace\string\substr.ipp"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	
NODEP_CPP_IDENTC=\
	".\trias16r.h"\
	

"$(INTDIR)\IdentCls.obj" : $(SOURCE) $(DEP_CPP_IDENTC) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"

DEP_CPP_IDENTC=\
	".\IdentCls.h"\
	".\strings.h"\
	".\triaspre.hxx"\
	".\triasres.h"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\MAP"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\helper.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\except\toolkit.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\map"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\map.cc"\
	{$(INCLUDE)}"\ospace\stl\map.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\regexp.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\src\regex.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\substr.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	
NODEP_CPP_IDENTC=\
	".\trias16r.h"\
	

".\Obj32\Debug\IdentCls.obj" : $(SOURCE) $(DEP_CPP_IDENTC) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\IdentCls.sbr" : $(SOURCE) $(DEP_CPP_IDENTC) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"

DEP_CPP_IDENTC=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\IdentCls.h"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\strings.h"\
	".\triaspre.hxx"\
	".\triasres.h"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\IOSTREAM"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MAP"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\helper.h"\
	{$(INCLUDE)}"\ospace\except\helper.ipp"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\except\toolkit.h"\
	{$(INCLUDE)}"\ospace\except\toolkit.ipp"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\iostream"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\map"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\map.cc"\
	{$(INCLUDE)}"\ospace\stl\map.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\regexp.h"\
	{$(INCLUDE)}"\ospace\string\regexp.ipp"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\src\regex.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\substr.cc"\
	{$(INCLUDE)}"\ospace\string\substr.h"\
	{$(INCLUDE)}"\ospace\string\substr.ipp"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	
NODEP_CPP_IDENTC=\
	".\trias16r.h"\
	

"$(INTDIR)\IdentCls.obj" : $(SOURCE) $(DEP_CPP_IDENTC) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\TIPS\Triastip.tpl

!IF  "$(CFG)" == "Trias32 - Win32 Release"

!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"

!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\TIPS\triastip.hdr

!IF  "$(CFG)" == "Trias32 - Win32 Release"

!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"

!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\UndoRedoDetails.cpp
DEP_CPP_UNDOR=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\triaspre.hxx"\
	".\triasres.h"\
	".\UndoRedoDetails.h"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\ENUMUNDO.HXX"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\iunredo.hxx"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\undohelp.hxx"\
	{$(INCLUDE)}"\undoredo.hxx"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	
NODEP_CPP_UNDOR=\
	".\trias16r.h"\
	

!IF  "$(CFG)" == "Trias32 - Win32 Release"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"


BuildCmds= \
	$(CPP) /nologo /MDd /W3 /WX /Gm /GX /Zi /Od /D "_DEBUG" /D "WIN32" /D\
 "_WINDOWS" /D "__CV__" /D "STRICT" /D "MSWIND" /D "DLL" /D "__TRIASEXE__" /D\
 "OS_WIN_95" /D "OS_STL_ASSERT" /D "OS_NO_WSTRING" /D\
 "OS_ALTERNATIVE_STRING_NAMES" /D "__ATL_USED__" /D "QI_EXCEPTION" /D\
 "OS_NO_STREAM_SUPPORT" /D "_GERMAN_RESOURCES" /D "OS_NO_ALLOCATORS" /D\
 "TRANSPARENT_PATTERNS" /D "_ATL_NEW_CCOMSTRUCT" /FR"Obj32/Debug/"\
 /Fp"Obj32/Debug/trias32d.pch" /Yu"triaspre.hxx" /Fo"Obj32/Debug/"\
 /Fd"Obj32/Debug/trias32d.pdb" /c $(SOURCE) \
	

".\Obj32\Debug\UndoRedoDetails.obj" : $(SOURCE) $(DEP_CPP_UNDOR) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"
   $(BuildCmds)

".\Obj32\Debug\UndoRedoDetails.sbr" : $(SOURCE) $(DEP_CPP_UNDOR) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"
   $(BuildCmds)

!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"

# PROP BASE Exclude_From_Build 1
# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\MsgDumper.cpp
DEP_CPP_MSGDU=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\CPTriastlb.h"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\extfcnsn.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\extmain3.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\strings.h"\
	".\triaspre.hxx"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\Dirisole.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TRiASHelper.h"\
	{$(INCLUDE)}"\triasprv.h"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	

!IF  "$(CFG)" == "Trias32 - Win32 Release"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"


BuildCmds= \
	$(CPP) /nologo /MDd /W3 /WX /Gm /GX /Zi /Od /D "_DEBUG" /D "WIN32" /D\
 "_WINDOWS" /D "__CV__" /D "STRICT" /D "MSWIND" /D "DLL" /D "__TRIASEXE__" /D\
 "OS_WIN_95" /D "OS_STL_ASSERT" /D "OS_NO_WSTRING" /D\
 "OS_ALTERNATIVE_STRING_NAMES" /D "__ATL_USED__" /D "QI_EXCEPTION" /D\
 "OS_NO_STREAM_SUPPORT" /D "_GERMAN_RESOURCES" /D "OS_NO_ALLOCATORS" /D\
 "TRANSPARENT_PATTERNS" /D "_ATL_NEW_CCOMSTRUCT" /FR"Obj32/Debug/"\
 /Fp"Obj32/Debug/trias32d.pch" /Yu"triaspre.hxx" /Fo"Obj32/Debug/"\
 /Fd"Obj32/Debug/trias32d.pdb" /c $(SOURCE) \
	

".\Obj32\Debug\MsgDumper.obj" : $(SOURCE) $(DEP_CPP_MSGDU) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"
   $(BuildCmds)

".\Obj32\Debug\MsgDumper.sbr" : $(SOURCE) $(DEP_CPP_MSGDU) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"
   $(BuildCmds)

!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"

# PROP BASE Exclude_From_Build 1
# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\Relnotes.txt

!IF  "$(CFG)" == "Trias32 - Win32 Release"

!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"

!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\ManageExtDlg.cxx

!IF  "$(CFG)" == "Trias32 - Win32 Release"

# PROP Exclude_From_Build 0
DEP_CPP_MANAG=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\CPTriastlb.h"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\extfcnsn.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\extmain3.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\ManageExtDlg.h"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\strings.h"\
	".\triaspre.hxx"\
	".\triasres.h"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\cextreg.hxx"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CheckTreeView.h"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\Dirisole.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\Eonrguid.h"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\IXTNEXT.HXX"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\registry.hxx"\
	{$(INCLUDE)}"\regprop.hxx"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\TrCatIDs.h"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TRiASHelper.h"\
	{$(INCLUDE)}"\triasprv.h"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\VersionWrap.h"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\xtsnguid.h"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	
NODEP_CPP_MANAG=\
	".\trias16r.h"\
	

"$(INTDIR)\ManageExtDlg.obj" : $(SOURCE) $(DEP_CPP_MANAG) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"

DEP_CPP_MANAG=\
	".\CPTriastlb.h"\
	".\extfcns.hxx"\
	".\extfcnsn.hxx"\
	".\extmain3.hxx"\
	".\ManageExtDlg.h"\
	".\strings.h"\
	".\triaspre.hxx"\
	".\triasres.h"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\cextreg.hxx"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CheckTreeView.h"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dirisole.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eonrguid.h"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\IXTNEXT.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\registry.hxx"\
	{$(INCLUDE)}"\regprop.hxx"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\TrCatIDs.h"\
	{$(INCLUDE)}"\TRiASHelper.h"\
	{$(INCLUDE)}"\triasprv.h"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VersionWrap.h"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\xtsnguid.h"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	
NODEP_CPP_MANAG=\
	".\trias16r.h"\
	

".\Obj32\Debug\ManageExtDlg.obj" : $(SOURCE) $(DEP_CPP_MANAG) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\ManageExtDlg.sbr" : $(SOURCE) $(DEP_CPP_MANAG) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"

# PROP BASE Exclude_From_Build 0
# PROP Exclude_From_Build 0
DEP_CPP_MANAG=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\CPTriastlb.h"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\extfcnsn.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\extmain3.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\ManageExtDlg.h"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\strings.h"\
	".\triaspre.hxx"\
	".\triasres.h"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\cextreg.hxx"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CheckTreeView.h"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\Dirisole.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\Eonrguid.h"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\IXTNEXT.HXX"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\registry.hxx"\
	{$(INCLUDE)}"\regprop.hxx"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\TrCatIDs.h"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TRiASHelper.h"\
	{$(INCLUDE)}"\triasprv.h"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\VersionWrap.h"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\xtsnguid.h"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	
NODEP_CPP_MANAG=\
	".\trias16r.h"\
	

"$(INTDIR)\ManageExtDlg.obj" : $(SOURCE) $(DEP_CPP_MANAG) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\ARRAY.CXX
DEP_CPP_ARRAY=\
	".\ARRAY.HXX"\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\triaspre.hxx"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	

!IF  "$(CFG)" == "Trias32 - Win32 Release"


"$(INTDIR)\ARRAY.OBJ" : $(SOURCE) $(DEP_CPP_ARRAY) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"


".\Obj32\Debug\ARRAY.OBJ" : $(SOURCE) $(DEP_CPP_ARRAY) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\ARRAY.SBR" : $(SOURCE) $(DEP_CPP_ARRAY) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"


"$(INTDIR)\ARRAY.OBJ" : $(SOURCE) $(DEP_CPP_ARRAY) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\SignOnNew.cxx
DEP_CPP_SIGNON=\
	".\AUSSCHN.H"\
	".\BILDOBJ.HXX"\
	".\clbmpobj.hxx"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\SignOnNew.hxx"\
	".\strings.h"\
	".\triaspre.hxx"\
	".\triasres.h"\
	".\VISPARAM.H"\
	".\WinMMWrap.h"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\registry.hxx"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TRiASMode.h"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	
NODEP_CPP_SIGNON=\
	".\trias16r.h"\
	

!IF  "$(CFG)" == "Trias32 - Win32 Release"


"$(INTDIR)\SignOnNew.obj" : $(SOURCE) $(DEP_CPP_SIGNON) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"


".\Obj32\Debug\SignOnNew.obj" : $(SOURCE) $(DEP_CPP_SIGNON) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\SignOnNew.sbr" : $(SOURCE) $(DEP_CPP_SIGNON) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"


"$(INTDIR)\SignOnNew.obj" : $(SOURCE) $(DEP_CPP_SIGNON) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\ExtFcns3.cpp

!IF  "$(CFG)" == "Trias32 - Win32 Release"

DEP_CPP_EXTFCNS3=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\CPTriastlb.h"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\extfcnsn.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\extmain3.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\obj32\TRiASVersion.h"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\strings.h"\
	".\triaspre.hxx"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\Dirisole.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TRiASHelper.h"\
	{$(INCLUDE)}"\triasprv.h"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	

"$(INTDIR)\ExtFcns3.obj" : $(SOURCE) $(DEP_CPP_EXTFCNS3) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Debug"

DEP_CPP_EXTFCNS3=\
	".\CPTriastlb.h"\
	".\extfcns.hxx"\
	".\extfcnsn.hxx"\
	".\extmain3.hxx"\
	".\obj32\TRiASVersion.h"\
	".\strings.h"\
	".\triaspre.hxx"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dirisole.h"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\TRiASHelper.h"\
	{$(INCLUDE)}"\triasprv.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	

".\Obj32\Debug\ExtFcns3.obj" : $(SOURCE) $(DEP_CPP_EXTFCNS3) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"

".\Obj32\Debug\ExtFcns3.sbr" : $(SOURCE) $(DEP_CPP_EXTFCNS3) "$(INTDIR)"\
 ".\Obj32\Debug\trias32d.pch"


!ELSEIF  "$(CFG)" == "Trias32 - Win32 Pseudo Debug"

DEP_CPP_EXTFCNS3=\
	".\AUSSCHN.H"\
	".\clbmpobj.hxx"\
	".\CPTriastlb.h"\
	".\Dboarray.hxx"\
	".\DELVIEWS.H"\
	".\Draw_obj.hxx"\
	".\Drw_obj1.hxx"\
	".\EDITTEXT.H"\
	".\EXPORT.H"\
	".\EXPTRANS.H"\
	".\extfcns.hxx"\
	".\extfcnsn.hxx"\
	".\EXTLOAD.H"\
	".\extmain2.hxx"\
	".\extmain3.hxx"\
	".\IDENTSEL.H"\
	".\INFODLG.H"\
	".\Iris.h"\
	".\Iris.hxx"\
	".\IRISWIND.HXX"\
	".\LEGENDE.H"\
	".\MENUITEM.H"\
	".\MERKEDIT.H"\
	".\MKRECH.H"\
	".\Mru.h"\
	".\NEWID.H"\
	".\obj32\TRiASVersion.h"\
	".\OBJEKTE.H"\
	".\Objekte.hxx"\
	".\OBJPROP.H"\
	".\OPENDB.H"\
	".\OVERVIEW.H"\
	".\PALWIND.H"\
	".\PRIORITY.H"\
	".\PRNTABRT.H"\
	".\PRNTLAYT.H"\
	".\RECHRES.H"\
	".\SAVEOPT.H"\
	".\SELIDENT.H"\
	".\SIGNON.H"\
	".\SIGNON1.H"\
	".\strings.h"\
	".\triaspre.hxx"\
	".\VISPARAM.H"\
	{$(INCLUDE)}"\Attribs.hxx"\
	{$(INCLUDE)}"\BMPBOX.HXX"\
	{$(INCLUDE)}"\CERRNO"\
	{$(INCLUDE)}"\CFLOAT"\
	{$(INCLUDE)}"\CLIMITS"\
	{$(INCLUDE)}"\COMCAT.H"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\CSTDDEF"\
	{$(INCLUDE)}"\CSTDIO"\
	{$(INCLUDE)}"\CSTDLIB"\
	{$(INCLUDE)}"\CSTRING"\
	{$(INCLUDE)}"\Ctf.h"\
	{$(INCLUDE)}"\CTF.HXX"\
	{$(INCLUDE)}"\ctfm.hxx"\
	{$(INCLUDE)}"\CVEXT.HXX"\
	{$(INCLUDE)}"\CWCHAR"\
	{$(INCLUDE)}"\Db.hxx"\
	{$(INCLUDE)}"\DBASRT02.H"\
	{$(INCLUDE)}"\DBDTEMPL.H"\
	{$(INCLUDE)}"\Dblnumed.hxx"\
	{$(INCLUDE)}"\DBLPAIR.HXX"\
	{$(INCLUDE)}"\defattr.h"\
	{$(INCLUDE)}"\Dirisole.h"\
	{$(INCLUDE)}"\DLLBIND.HXX"\
	{$(INCLUDE)}"\Eieruhr.hxx"\
	{$(INCLUDE)}"\EPEN.HXX"\
	{$(INCLUDE)}"\Errcodes.hxx"\
	{$(INCLUDE)}"\ERRINST.HXX"\
	{$(INCLUDE)}"\EXCEPTION"\
	{$(INCLUDE)}"\Fprotos.h"\
	{$(INCLUDE)}"\FUNCS03.H"\
	{$(INCLUDE)}"\FUNCTIONAL"\
	{$(INCLUDE)}"\GEO_INL.HXX"\
	{$(INCLUDE)}"\Geo_obj.hxx"\
	{$(INCLUDE)}"\GEO_OBJ1.HXX"\
	{$(INCLUDE)}"\GEOTEXT.HXX"\
	{$(INCLUDE)}"\Hdrentry.hxx"\
	{$(INCLUDE)}"\Ident.hxx"\
	{$(INCLUDE)}"\Ienumobj.hxx"\
	{$(INCLUDE)}"\IOS"\
	{$(INCLUDE)}"\IOSFWD"\
	{$(INCLUDE)}"\istatus.h"\
	{$(INCLUDE)}"\ISTREAM"\
	{$(INCLUDE)}"\ITERATOR"\
	{$(INCLUDE)}"\Ixtensn.hxx"\
	{$(INCLUDE)}"\JUSTIFY.HXX"\
	{$(INCLUDE)}"\KOMPLEX.HXX"\
	{$(INCLUDE)}"\LIST"\
	{$(INCLUDE)}"\LISTOBJ.HXX"\
	{$(INCLUDE)}"\MEMORY"\
	{$(INCLUDE)}"\MERKMAL.HXX"\
	{$(INCLUDE)}"\MPROTOS.H"\
	{$(INCLUDE)}"\MUSCROLL.HXX"\
	{$(INCLUDE)}"\NEW"\
	{$(INCLUDE)}"\NUMEDIT.HXX"\
	{$(INCLUDE)}"\objfeld.hxx"\
	{$(INCLUDE)}"\Objliste.hxx"\
	{$(INCLUDE)}"\OBJMTREE.HXX"\
	{$(INCLUDE)}"\OBJSTAT.HXX"\
	{$(INCLUDE)}"\ODDLGWIN.HXX"\
	{$(INCLUDE)}"\ospace\COM\ComErrorMacros.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Debug.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.h"\
	{$(INCLUDE)}"\ospace\COM\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\ospace\config.h"\
	{$(INCLUDE)}"\ospace\except\config.h"\
	{$(INCLUDE)}"\ospace\except\except.h"\
	{$(INCLUDE)}"\ospace\except\stdex.h"\
	{$(INCLUDE)}"\ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\ospace\std\iosfwd"\
	{$(INCLUDE)}"\ospace\std\istream"\
	{$(INCLUDE)}"\ospace\std\list"\
	{$(INCLUDE)}"\ospace\std\ostream"\
	{$(INCLUDE)}"\ospace\std\set"\
	{$(INCLUDE)}"\ospace\std\string"\
	{$(INCLUDE)}"\ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\ospace\stl\allocate.h"\
	{$(INCLUDE)}"\ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\ospace\stl\common.h"\
	{$(INCLUDE)}"\ospace\stl\config.h"\
	{$(INCLUDE)}"\ospace\stl\function.h"\
	{$(INCLUDE)}"\ospace\stl\internal.h"\
	{$(INCLUDE)}"\ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\ospace\stl\iterator.h"\
	{$(INCLUDE)}"\ospace\stl\list.cc"\
	{$(INCLUDE)}"\ospace\stl\list.h"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.cc"\
	{$(INCLUDE)}"\ospace\stl\nodealoc.h"\
	{$(INCLUDE)}"\ospace\stl\ops.h"\
	{$(INCLUDE)}"\ospace\stl\pair.h"\
	{$(INCLUDE)}"\ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\ospace\stl\set.h"\
	{$(INCLUDE)}"\ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\ospace\string\basic.cc"\
	{$(INCLUDE)}"\ospace\string\basic.h"\
	{$(INCLUDE)}"\ospace\string\basic.ipp"\
	{$(INCLUDE)}"\ospace\string\config.h"\
	{$(INCLUDE)}"\ospace\string\search.cc"\
	{$(INCLUDE)}"\ospace\string\search.h"\
	{$(INCLUDE)}"\ospace\string\string.h"\
	{$(INCLUDE)}"\ospace\string\traits.cc"\
	{$(INCLUDE)}"\ospace\string\traits.h"\
	{$(INCLUDE)}"\ospace\type\prim.h"\
	{$(INCLUDE)}"\ospace\utility\memory.h"\
	{$(INCLUDE)}"\OSTREAM"\
	{$(INCLUDE)}"\OWNLIST.HXX"\
	{$(INCLUDE)}"\OWNLISTE.HXX"\
	{$(INCLUDE)}"\PALCHEVT.HXX"\
	{$(INCLUDE)}"\PBD.HXX"\
	{$(INCLUDE)}"\PBDDB.H"\
	{$(INCLUDE)}"\Profile.hxx"\
	{$(INCLUDE)}"\Protos.h"\
	{$(INCLUDE)}"\RESSTRG.H"\
	{$(INCLUDE)}"\Risdb.h"\
	{$(INCLUDE)}"\Ristypes.hxx"\
	{$(INCLUDE)}"\ROTATE.HXX"\
	{$(INCLUDE)}"\SET"\
	{$(INCLUDE)}"\SPINCTRL.HXX"\
	{$(INCLUDE)}"\STACK.HXX"\
	{$(INCLUDE)}"\STDEXCEPT"\
	{$(INCLUDE)}"\STRDUP.HXX"\
	{$(INCLUDE)}"\STREAMBUF"\
	{$(INCLUDE)}"\STRING"\
	{$(INCLUDE)}"\Transfrm.hxx"\
	{$(INCLUDE)}"\trias01m.hxx"\
	{$(INCLUDE)}"\trias02m.hxx"\
	{$(INCLUDE)}"\TRiASHelper.h"\
	{$(INCLUDE)}"\triasprv.h"\
	{$(INCLUDE)}"\TSTRING"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\TYPEINFO"\
	{$(INCLUDE)}"\USE_ANSI.H"\
	{$(INCLUDE)}"\UTILITY"\
	{$(INCLUDE)}"\VERSIONS.H"\
	{$(INCLUDE)}"\visinfo.hxx"\
	{$(INCLUDE)}"\XIOSBASE"\
	{$(INCLUDE)}"\XLOCALE"\
	{$(INCLUDE)}"\XLOCINFO"\
	{$(INCLUDE)}"\XLOCINFO.H"\
	{$(INCLUDE)}"\XLOCNUM"\
	{$(INCLUDE)}"\XMEMORY"\
	{$(INCLUDE)}"\XSTDDEF"\
	{$(INCLUDE)}"\XSTRING"\
	{$(INCLUDE)}"\Xtension.h"\
	{$(INCLUDE)}"\xtensnm.hxx"\
	{$(INCLUDE)}"\Xtensnn.h"\
	{$(INCLUDE)}"\Xtensnx.h"\
	{$(INCLUDE)}"\Xtensnxx.h"\
	{$(INCLUDE)}"\XTREE"\
	{$(INCLUDE)}"\XUTILITY"\
	{$(INCLUDE)}"\YVALS.H"\
	{$(INCLUDE)}"\ZPROTOS.H"\
	

"$(INTDIR)\ExtFcns3.obj" : $(SOURCE) $(DEP_CPP_EXTFCNS3) "$(INTDIR)"\
 "$(INTDIR)\Trias42.pch"


!ENDIF 

# End Source File
# End Target
# End Project
################################################################################