TITLE NombrePrograma

;DESCRPICIÓN 
;Objetivo: Archivo de Ejemplo
;
; Autore(s):
;         Apellido Nombre Integrante 1
;         Apellido Nombre Integrante 2

; Semestre: 8vo Semestre ISC 
;FIN DESCRPICIÓN

INCLUDE Irvine32.inc  

.data
; Área de Declaración de Variables
vector byte 10, 20, 30, 40, 50

.code

	main3 PROC
	
		;Lógica del Programa

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
