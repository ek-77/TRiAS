# Genrieren der Versionsinfo's f�r KOMPOBJ.EXT

# Generierungsdatum (yymmdd) und Version
DATE=951116
VERSION = 1
RELEASE = 00
BUILD = 002

COPYRIGHT = HK$(DATE)

PNAME = "Version f\xfcr den internen Gebrauch"
PADDRESS = "uve GmbH Fernerkundungszentrum Potsdam"

STUB = rights
RIGHTS = $(STUB).exe
REPLACE = ersetz
NAME = kompobj
DEF = $(NAME).def

ASM = masm
ASMF = /D?PLM=0 /D?WIN=1
LINK = c:link.exe

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
	@del $(DEF)
	@del versio16.h
#	@del defabout.src

formake:	$(DEF) $(STUB).exe $(NAME).rcv versio16.h

#defabout.src

$(STUB).asm:	$(STUB).tpl 
	$(REPLACE) $(VERSION) $(RELEASE) $(BUILD) $(COPYRIGHT) $(STUB).tpl $(STUB).asm

# Personalisierungsinformation
$(NAME).rcv:	$(NAME)v.rc
	$(REPLACE) $(VERSION) $(RELEASE) $(BUILD) $(COPYRIGHT) @A @B $(NAME)v.rc tmp.rcv
	$(REPLACE) $(PNAME) $(PADDRESS) tmp.rcv $(NAME).rcv
	@del tmp.rcv > nul

$(DEF):		$(NAME).tpl
	$(REPLACE) $(VERSION) $(RELEASE) $(BUILD) $(COPYRIGHT) $(NAME).tpl $(DEF)

defabout.src:	defabout.dlg
	$(REPLACE) $(VERSION) $(RELEASE) $(BUILD) $(COPYRIGHT) @A @B defabout.dlg tmp.rcv
	$(REPLACE) $(PNAME) $(PADDRESS) tmp.rcv defabout.src
	@del tmp.rcv > nul

versio16.h:	versio16.tpl
	$(REPLACE) $(VERSION) $(RELEASE) versio32.tpl versio32.h
