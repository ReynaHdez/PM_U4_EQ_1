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
vector_12 dword ?	;NULL
variable_12 dword 3

.code

	main12 PROC
	
		;L�gica del Programa

		println "Ingrese el valor de la primera posicion"
		call readint	;guarda eax

		mov esi, 0
		mov vector_12[esi], eax

		add esi, 4
		println "Ingrese el segundo valor del vector: "
		call readint	;guarda eax

		exit	
	
	main12 ENDP
	
	END main12