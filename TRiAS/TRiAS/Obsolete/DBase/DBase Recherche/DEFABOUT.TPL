DEFIDABOUT DIALOG 81, 50, 201, 130
STYLE DS_MODALFRAME | WS_POPUP | WS_CLIPSIBLINGS | WS_DLGFRAME
FONT 8, "MS Sans Serif"
BEGIN
    CONTROL         "Durchf�hrung von Recherchen in dBASE-Dateien V@A.@B.@C",
                    -1, "Static", SS_CENTER, 0, 14, 201, 17
    CONTROL         "Copyright� 1991-1998 (#@D)", -1, "Static", 
                    SS_CENTER, 0, 35, 201, 9
    CONTROL	    "OK", -1, "Button", BS_DEFPUSHBUTTON | WS_TABSTOP, 110,
                    101, 62, 20
    CONTROL         "Diese Erweiterung ist lizensiert f�r:", -1, "Static", 
                    0x0000, 15, 62, 171, 9
    CONTROL         "@F", -1, "Static", 0x0000, 15, 81, 172, 9
    CONTROL         "@E", -1, "Static", 0x0000, 15, 73, 172, 8
    CONTROL         "TRiAS� - Erweiterung", -1, "Static", SS_CENTER, 0, 5, 
                    201, 8
    CONTROL         "", -1, "Static", SS_BLACKFRAME, 2, 57, 197, 1
    CONTROL         DEFIDICON, ABOUTICON, "Static", SS_ICON, 37, 99, 18, 20
    CONTROL	    "uve GmbH Fernerkundungszentrum Potsdam", -1, "Static", SS_CENTER | WS_GROUP,
                    0, 45, 201, 8
END
