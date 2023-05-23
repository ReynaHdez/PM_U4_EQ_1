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
vector_10 dword 10, 14, 19, 1, 3, 4

msj_println_10 db "El valor menor es: ", 0
msj_pidex db "Ingrese el valor de x:", 0
.code

	main10 PROC
	
		;Lógica del Programa

		mov edx, offset msj_pidex
		call writestring
		call crlf
		call readint		;guardamos X en eax, y comparamos cuantos son menores con el vector

		mov ebx, eax

		mov eax, sizeof vector_10
		mov ecx, 4
		mov edx, 0
		div ecx
		mov ecx, eax

		mov eax, 0	;continuar
		mov esi, 0

		ciclo:
			cmp ebx, vector_10[esi]
			jg continuar
				inc eax
			continuar:
			add esi,4
		loop ciclo

		call writedec
		exit	
	
	main10 ENDP
	
	END main10