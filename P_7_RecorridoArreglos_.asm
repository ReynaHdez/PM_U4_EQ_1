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
vector_7 dword 10, 4,9, 1, 3, 4

msj_println db "El valor es: "
.code

	main7 PROC
	
		;Lógica del Programa

		mov ebx, 0 ;acumulador de la suma
		mov edx, 0 ;limpia el registro de la division
		mov eax, sizeof vector_7
		mov ecx, 4
		div ecx
		mov ecx, eax ; cantidad de elementos en el vector...

		mov esi, 0 ; indice/posiccion que se aceedera en el vector

		ciclo:
			add ebx, vector_7[esi]
			add esi, 4
			loop ciclo

			mov edx, offset msj_println
			call writestring
			call crlf
			call writedec
		
		exit	
	
	main7 ENDP
	
	END main7