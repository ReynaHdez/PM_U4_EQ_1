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
INCLUDE Macros.inc

.data
; Área de Declaración de Variables
vector_9 dword 10, 14, 19, 1, 3, 4

msj_println_9 db "El valor menor es: "
.code

	main9 PROC
	
		;Lógica del Programa

		mov esi, 0 ; indice/posiccion que se aceedera en el vector
		mov ebx, vector_9[esi]	

		mov edx, 0	;limpia el registro para la division
		mov eax, sizeof vector_9
		mov ecx, 4
		div ecx
		mov ecx, eax	;cantidad de elementos en el vector...

		add esi, 4
		dec ecx

		ciclo:
			cmp ebx, vector_9[esi]
			jl continuar
			;Si ebx es menor que el valor del vector
			mov ebx, vector_9[esi]
			continuar:
				add esi, 4
			loop ciclo

		mov eax, ebx

			mov edx, offset msj_println_9
			call writestring
			call crlf
			call writedec
		
		exit	
	
	main9 ENDP
	
	END main9