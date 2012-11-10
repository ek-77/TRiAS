# Microsoft Developer Studio Project File - Name="Containers" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Static Library" 0x0104

CFG=Containers - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "Containers.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "Containers.mak" CFG="Containers - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "Containers - Win32 Release" (based on "Win32 (x86) Static Library")
!MESSAGE "Containers - Win32 Debug" (based on "Win32 (x86) Static Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""$/Gooze/Containers", DRAAAAAA"
# PROP Scc_LocalPath "."
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "Containers - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_MBCS" /D "_LIB" /YX /FD /c
# ADD CPP /nologo /MD /W3 /GX /Zi /O1 /I "../.." /I "." /I "../Util" /D "WIN32" /D "NDEBUG" /D "_MBCS" /D "_LIB" /YX /Fd"Release/Containers.pdb" /FD /c
# ADD BASE RSC /l 0x407 /d "NDEBUG"
# ADD RSC /l 0x407 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo
# Begin Custom Build
OutDir=.\Release
TargetPath=.\Release\Containers.lib
TargetName=Containers
InputPath=.\Release\Containers.lib
SOURCE="$(InputPath)"

BuildCmds= \
	xcopy /F $(TargetPath) ..\..\Lib \
	xcopy /F $(OutDir)\$(TargetName).pdb ..\..\Lib \
	

"..\..\Lib\$(TargetName).lib" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"..\..\Lib\$(TargetName).pdb" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "Containers - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "Debug"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_MBCS" /D "_LIB" /YX /FD /GZ /c
# ADD CPP /nologo /MDd /W3 /Gm /GX /Zi /Od /I "../.." /I "." /I "../Util" /D "WIN32" /D "_DEBUG" /D "_MBCS" /D "_LIB" /YX /Fd"Debug/ContainersD.pdb" /FD /GZ /c
# ADD BASE RSC /l 0x407 /d "_DEBUG"
# ADD RSC /l 0x407 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo /out:"Debug\ContainersD.lib"
# Begin Custom Build
OutDir=.\Debug
TargetPath=.\Debug\ContainersD.lib
TargetName=ContainersD
InputPath=.\Debug\ContainersD.lib
SOURCE="$(InputPath)"

BuildCmds= \
	xcopy /F $(TargetPath) ..\..\Lib \
	xcopy /F $(OutDir)\$(TargetName).pdb ..\..\Lib \
	

"..\..\Lib\$(TargetName).lib" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"..\..\Lib\$(TargetName).pdb" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# Begin Target

# Name "Containers - Win32 Release"
# Name "Containers - Win32 Debug"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=.\AsciiImport.cpp
# End Source File
# Begin Source File

SOURCE=.\AsciiReader.cpp
# End Source File
# Begin Source File

SOURCE=.\CategoricalSet.cpp
# End Source File
# Begin Source File

SOURCE=.\Category.cpp
# End Source File
# Begin Source File

SOURCE=.\ColumnDivider.cpp
# End Source File
# Begin Source File

SOURCE=.\DataSet.cpp
# End Source File
# Begin Source File

SOURCE=.\DateSet.cpp
# End Source File
# Begin Source File

SOURCE=.\HoleSet.cpp
# End Source File
# Begin Source File

SOURCE=.\RealSet.cpp
# End Source File
# Begin Source File

SOURCE=.\StringSet.cpp
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=.\AsciiImport.h
# End Source File
# Begin Source File

SOURCE=.\AsciiReader.h
# End Source File
# Begin Source File

SOURCE=.\CategoricalSet.h
# End Source File
# Begin Source File

SOURCE=.\Category.h
# End Source File
# Begin Source File

SOURCE=.\ColumnDivider.h
# End Source File
# Begin Source File

SOURCE=..\..\config.h
# End Source File
# Begin Source File

SOURCE=..\Util\DataConverter.h
# End Source File
# Begin Source File

SOURCE=.\DataSet.h
# End Source File
# Begin Source File

SOURCE=.\DateSet.h
# End Source File
# Begin Source File

SOURCE=..\Util\Exception.h
# End Source File
# Begin Source File

SOURCE=.\HoleSet.h
# End Source File
# Begin Source File

SOURCE=..\Util\Permutation.h
# End Source File
# Begin Source File

SOURCE=..\Util\Progress.h
# End Source File
# Begin Source File

SOURCE=..\Util\Random.h
# End Source File
# Begin Source File

SOURCE=..\Util\RCArray.h
# End Source File
# Begin Source File

SOURCE=.\RealSet.h
# End Source File
# Begin Source File

SOURCE=.\StringSet.h
# End Source File
# Begin Source File

SOURCE=..\Util\stringtools.h
# End Source File
# Begin Source File

SOURCE=..\Util\WarningController.h
# End Source File
# Begin Source File

SOURCE=..\util\zdouble.h
# End Source File
# End Group
# End Target
# End Project