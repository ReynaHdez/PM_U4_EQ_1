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
vector_15 byte "Maniana pagara 0X refresco(s), luna!", 0

.code

	main15 PROC
	
		;Lógica del Programa
		mov esi, 16 ;indice de la letra X

		call readchar	;cantidad de refrescos!!
		call writechar
		mov vector_15[esi], al	

		call crlf


		;Ejemplo 1
		;mov eax, 0
		;mov al, vector_15[esi]
		;call writechar


		;Ejemplo 2
		mov edx, offset vector_15
		call writestring

		exit	
	
	main15 ENDP
	
	END main15