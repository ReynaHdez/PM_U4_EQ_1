TITLE NombrePrograma

;DESCRPICIÓN 
;Objetivo: Archivo de Ejemplo
;
; Autore(s):
;         Hernandez Santos Reyna Margarita
;         Salas Alardin Luis Fernando 

; Semestre: 8vo Semestre ISC 
;FIN DESCRPICIÓN

INCLUDE Irvine32.inc  
INCLUDE Macros.inc

.data
; Área de Declaración de Variables
vector_14 byte 30 dup(?)
variable_14 dword 3

.code

	main14 PROC
	
		;Lógica del Programa

		mov ecx, 4
		mov esi, 0

		ciclo:
			call readint
			mov vector_14[esi], al
			inc esi
			loop ciclo

		mov edx, offset vector_14
		call writestring

		exit	
	
	main14 ENDP
	
	END main14