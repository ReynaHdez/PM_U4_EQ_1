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
vector_16 byte "El resultado es: XX.!", 0


.code

	main16 PROC
	
		;Lógica del Programa

		mov esi, 17		;indice de la letra X

		mov eax, 12		;XY
		mov ebx, 10
		mov edx, 0

		div ebx		;eax = 1 ebx = 2

		add eax, 48		;ascii 48 = 0
		mov vector_16[esi], al

		inc esi

		mov eax, edx	;pasa el 2 a eax
		add eax, 48		;ascii 48 = 0
		mov vector_16[esi], al

		call crlf
		mov edx, offset vector_16
		call writestring

		exit	
	
	main16 ENDP
	
	END main16