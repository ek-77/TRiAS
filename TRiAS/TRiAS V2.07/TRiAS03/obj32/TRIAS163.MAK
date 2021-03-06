# Genrieren der Versionsinfo's f�r TRIAS323.DLL

!include <triasver.mak>

# Generierungsdatum (yymmdd) und Version
DATE=981208
VERSION = 3
RELEASE = 30
BUILD = 177

COPYRIGHT = HK$(DATE)

#PNAME = "Herrn Simon"
#PADDRESS = "Treuhand Liegenschaftsgesellschaft"

PNAME = $(TRIAS_PNAME)
PADDRESS = $(TRIAS_PADDRESS)

# SU-Variante
#PNAME = "������ ��� ������ ���������������"
#PADDRESS = "������������ �����"

#PNAME = "Herrn Zeidler"
#PADDRESS = "BQP Bitterfeld"

#PNAME = "Herrn Dr. Neef"
#PADDRESS = "Chemie AG Bitterfeld"

#PNAME = "Dr.Eckstein/Dr. Walkow"
#PADDRESS = "Landratsamt Bitterfeld"

STUB = rights
RIGHTS = $(STUB).exe
REPLACE = ersetz
NAME = trias323
DEF = $(NAME).def

ASM = masm
ASMF = /D?PLM=0 /D?WIN=1
LINK = link16.exe

# Alles neubilden
all:	formake 

$(STUB).exe:	$(STUB).asm
	$(ASM) $(ASMF) $(STUB) 
	$(LINK) /NOLOGO /KNOWEAS $(STUB);

# -----------------------------------------------------------------------------
# CopyrightEintraege Generieren 
new:
	@del $(STUB).asm
	@del $(NAME).rcv
	@del trias33d.def
	@del trias33d207.def
	@del trias323.def
#	@del $(STUB).exe

formake:	$(DEF) $(STUB).exe trias323.def trias33d.def trias323.rcv trias33d207.def

$(STUB).asm:	$(STUB).tpl 
	$(REPLACE) $(VERSION) $(RELEASE) $(BUILD) $(COPYRIGHT) $(STUB).tpl $(STUB).asm

# Personalisierungsinformation
trias323.rcv:	trias33v.rc
	$(REPLACE) $(VERSION) $(RELEASE) $(BUILD) $(COPYRIGHT) @A @B @C @D @E trias33v.rc tmp
	$(REPLACE) $(PNAME) $(PADDRESS) $(TRIAS_VERSION) $(TRIAS_RELEASE) @A tmp tmp1
	$(REPLACE) $(COMPANYNAME) tmp1 trias323.rcv
	@del tmp > nul
	@del tmp1 > nul

trias33d.def:	trias33d.tpl
	$(REPLACE) $(VERSION) $(RELEASE) $(BUILD) $(COPYRIGHT) desc.tpl trias33d.def
	cat trias33d.tpl >> trias33d.def

trias33d207.def:	trias33d207.tpl
	$(REPLACE) $(VERSION) $(RELEASE) $(BUILD) $(COPYRIGHT) desc.tpl trias33d207.def
	cat trias33d207.tpl >> trias33d207.def

trias323.def:	trias323.tpl
	$(REPLACE) $(VERSION) $(RELEASE) $(BUILD) $(COPYRIGHT) desc.tpl trias323.def
	cat trias323.tpl >> trias323.def

