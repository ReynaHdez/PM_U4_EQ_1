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
vector_llenar dword 20 dup ('A')

.code

	main11 PROC
	
		;L�gica del Programa

		println "Ingrese el valor de la primera posicion"
		call readint	;guarda eax

		mov esi, 0
		mov vector_llenar[esi], eax

		exit	
	
	main11 ENDP
	
	END main11