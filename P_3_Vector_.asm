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
vector byte 10, 20, 30, 40, 50

.code

	main3 PROC
	
		;L�gica del Programa

		mov ecx, sizeof vector
		mov esi, 0
		ciclo:
			mov eax, 0
			mov al, vector[esi]
			call writeDec
			call crlf
			inc esi
			loop ciclo
		
		exit	
	
	main3 ENDP
	
	END main3
