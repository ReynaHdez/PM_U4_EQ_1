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

.data
; Área de Declaración de Variables
vector dword 10, 20, 30, 40, 50
.code

	main4 PROC
	
		;Lógica del Programa
		mov ecx, 5
		mov esi, 0

		ciclo:
			mov eax, vector[esi]
			call writeDec
			call crlf
			add esi, 4
			loop ciclo
		
		exit	
	
	main4 ENDP
	
	END main4
