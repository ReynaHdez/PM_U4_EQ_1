println macro cadena

LOCAL cad
.data
	cad db cadena, 0

.code
	push edx
	mov edx, offset cad
	call writestring
	call crlf
	pop edx

ENDM
