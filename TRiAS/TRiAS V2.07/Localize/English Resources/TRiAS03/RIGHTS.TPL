
PAGE  59,132

;��������������������������������������������������������������������������
;��			                         ��
;��			        WINSTUB	                         ��
;��			                         ��
;��      Created:   1-Jun-90	                         ��
;��      Passes:    5	       Analysis Flags on: H                      ��
;��			                         ��
;��������������������������������������������������������������������������


;-------------------------------------------------------------- seg_a  ----

seg_a		segment para public
		assume cs:seg_a , ds:seg_a , ss:stack_seg_b


;��������������������������������������������������������������������������
;
;			Program Entry Point
;
;��������������������������������������������������������������������������


winstub		proc	far

start:
		call	sub_1	; (0056)
		db	'TRIAS03 - '
		db	'CustomControls, OwnerDrawControls V@A.@B.@C', 0Dh, 0Ah
		db	'Copyright (C) 1991 - 1996 uve GmbH Fernerkundungszentrum Potsdam, #@D', 0Dh, 0Ah
		db	'This program requires Windows NT, Windows 95 ', 0Dh, 0Ah
		db	'or Windows V3.1 with Win32s.', 0Dh, 0Ah, '$'
winstub		endp

;��������������������������������������������������������������������������
;		       SUBROUTINE
;��������������������������������������������������������������������������

sub_1		proc	near
		pop	dx
		push	cs
		pop	ds
		mov	ah,9
		int	21h			; DOS Services  ah=function 09h
						;  display char string at ds:dx
		mov	ax,4C01h
		int	21h			; DOS Services  ah=function 4Ch
						;  terminate with al=return code
sub_1		endp


seg_a		ends



;--------------------------------------------------------- stack_seg_b  --

stack_seg_b	segment para stack
	
		db	256 dup (0)

stack_seg_b	ends



		end	start