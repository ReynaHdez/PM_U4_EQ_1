TITLE NombrePrograma

;DESCRPICI�N 
;Objetivo: Archivo de Ejemplo
;
; Autore(s):
;         Apellido Nombre Integrante 1
;         Apellido Nombre Integrante 2

; Semestre: 8vo Semestre ISC 
;FIN DESCRPICI�N

INCLUDE Irvine32.inc  

.data
; �rea de Declaraci�n de Variables

vector_5 byte 1,2,3,4,5
byte 6,7,8,9,10
byte 11,12,13,14,15

.code

	main5 PROC
	
		;L�gica del Programa
		
		mov esi,0
		mov edi, 0
		mov eax, 0
		mov al, vector_5[esi+edi]
		call writedec	;1
		
		; esi / edi = son indices

		; [00 00 00 00] <- eax
		; [00 00 (00) 00] <- ah			
		; [00 00 00 (00)] <- al usar al si son byte


		exit	
	
	main5 ENDP
	
	END main5