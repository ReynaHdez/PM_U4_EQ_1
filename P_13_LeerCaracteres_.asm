TITLE NombrePrograma

;DESCRPICI�N 
;Objetivo: Archivo de Ejemplo
;
; Autore(s):
;         Hernandez Santos Reyna Margarita
;         Salas Alardin Luis Fernando 

; Semestre: 8vo Semestre ISC 
;FIN DESCRPICI�N

INCLUDE Irvine32.inc  
INCLUDE Macros.inc

.data
; �rea de Declaraci�n de Variables

vector_13 dword 30 dup (?)
variable_13 dword 3

.code

	main13 PROC
	
		;L�gica del Programa

		mov ecx, 4
		mov esi, 0

		ciclo:		;valores con letras mayusculas en ascii ... 65, 66...
			call readint
			mov vector_13[esi], eax
			add esi, 4
			loop ciclo

		mov edx, offset vector_13
		call writestring

		exit	
	
	main13 ENDP
	
	END main13