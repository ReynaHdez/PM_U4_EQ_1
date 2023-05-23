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
vector dword 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11
.code

	mainE1 PROC
	
		;Lógica del Programa
		mov esi, 4
		mov ebx, 2
		mov eax, 11
		mov edx, 0
		div ebx
		mul esi ;multiplicando eax * esi
		mov esi, eax
		mov eax, vector[esi]
		call writedec

		
		exit	
	
	mainE1 ENDP
	
	END mainE1
