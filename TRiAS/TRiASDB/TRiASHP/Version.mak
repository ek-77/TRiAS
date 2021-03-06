# $Header: $
# Copyrightę 1999-2000 TRiAS GmbH Potsdam, All rights reserved
# Created: 10.05.2000 19:36:40 
#
# This file was generated by the TRiASDB Data Server Wizard V1.02.086 (#HK000510)
#
# @doc
# @module version.mak | Generieren der Versionsinfo's 

!include <triasver.mak>

# Generierungsdatum (yymmdd) und Version
DATE = 041110
VERSION = 1
RELEASE = 00
BUILD = 118			# 100 am 22. Januar 2001, 11:42 Uhr

COPYRIGHT = HK$(DATE)

PNAME = $(TRIAS_PNAME)
PADDRESS = $(TRIAS_PADDRESS)

REPLACE = ersetz.exe
NAME = TRiASHP
DEF = $(NAME).def

# Alles neubilden
all:	formake 

# -----------------------------------------------------------------------------
# CopyrightEintraege Generieren 
new:
	@-del res\$(NAME).rcv > nul
	@-del $(NAME).def > nul

formake:	res\$(NAME).rcv $(NAME).def Version.h

# Personalisierungsinformation
res\$(NAME).rcv:	"res\$(NAME)v.tpl" version.mak
	@$(REPLACE) \
		$(VERSION) \
		$(RELEASE) \
		$(BUILD) \
		$(COPYRIGHT) \
		$(PNAME) \
		$(PADDRESS) \
		$(TRIAS_VERSION) \
		$(TRIAS_RELEASE) \
		$(COMPANYNAME) \
			"res\$(NAME)v.tpl" "res\$(NAME).rcv"
	@echo $@

Version.h:	Version.tpl Version.mak
	@$(REPLACE) $(VERSION) $(RELEASE) $(BUILD) $(COPYRIGHT) Version.tpl Version.h
	@echo $@

$(NAME).def:	$(NAME).tpl Version.mak
	@$(REPLACE) $(VERSION) $(RELEASE) $(BUILD) $(COPYRIGHT) $(NAME).tpl $(NAME).def
	@echo $@


