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

.data
; Área de Declaración de Variables
vector dword 10, 20, 30, 40, 50

.code

	main1 PROC
	
		;Lógica del Programa
		;esi /edi
		mov esi, 1

		mov eax, vector[esi]
		call writedec

		
		exit	
	
	main1 ENDP
	
	END main1
