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

vector byte 10,20,30,40,50

.code

	main2 PROC
	
		;Lógica del Programa
		mov esi, 0
		mov eax, 0
		mov al, vector[esi]
		call writedec
		
		exit	
	
	main2 ENDP
	
	END main2
