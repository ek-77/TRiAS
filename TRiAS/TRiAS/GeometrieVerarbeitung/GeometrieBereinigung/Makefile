# Generieren der Versionsinfo's f�r GEOEREIN.EXT

!include <$(TRIASINCLUDE)/triasver.mak>
!include <$(TRIASINCLUDE)/GeometryVersion.mak>

# Generierungsdatum (yymmdd) und Version
DATE = $(GEOMETRY_DATE)
VERSION = $(GEOMETRY_VERSION)
RELEASE = $(GEOMETRY_RELEASE)
BUILD = $(GEOMETRY_BUILD)

COPYRIGHT = WM$(DATE)

PNAME = $(TRIAS_PNAME)
PADDRESS = $(TRIAS_PADDRESS)

STUB = rights
RIGHTS = $(STUB).exe
REPLACE = ersetz
NAME = georein
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
#	@del $(STUB).asm
	@del $(NAME).rcv
	@del $(DEF)
	@del version.h

formake:        $(DEF) $(NAME).rcv version.h	# $(STUB).exe

$(STUB).asm:	$(STUB).tpl 
	$(REPLACE) $(VERSION) $(RELEASE) $(BUILD) $(COPYRIGHT) $(STUB).tpl $(STUB).asm

# Personalisierungsinformation
$(NAME).rcv:    $(NAME)v.tpl makefile $(TRIASINCLUDE)\GeometryVersion.mak
	$(REPLACE) \
		$(VERSION) \
		$(RELEASE) \
		$(BUILD) \
		$(COPYRIGHT) \
		$(PNAME) \
		$(PADDRESS) \
		$(TRIAS_VERSION) \
		$(TRIAS_RELEASE) \
		$(COMPANYNAME) \
			$(NAME)v.tpl $(NAME).rcv

$(DEF):		$(NAME).tpl makefile $(TRIASINCLUDE)\GeometryVersion.mak
	$(REPLACE) $(VERSION) $(RELEASE) $(BUILD) $(COPYRIGHT) $(NAME).tpl $(DEF)

version.h:      version.tpl makefile $(TRIASINCLUDE)\GeometryVersion.mak
	$(REPLACE) $(VERSION) $(RELEASE) version.tpl version.h
