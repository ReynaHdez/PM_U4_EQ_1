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

vector_6 byte 1,2,3,4,5
vector2_6 byte 6,7,8,9,10
vector3_6 byte 11,12,13,14,15

.code

	main6 PROC
	
		;L�gica del Programa
		
		mov esi, 7
		mov edi, 0
		mov eax, 0
		mov al, vector_6[esi+edi]
		call writedec

		exit	
	
	main6 ENDP
	
	END main6