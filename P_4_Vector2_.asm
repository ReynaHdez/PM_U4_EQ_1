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

.data
; �rea de Declaraci�n de Variables
vector dword 10, 20, 30, 40, 50
.code

	main4 PROC
	
		;L�gica del Programa
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
