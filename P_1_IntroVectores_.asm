TITLE NombrePrograma

;DESCRPICI�N 
;Objetivo: Archivo de Ejemplo
;
; Autore(s):
;         Apellido Nombre Integrante 1
;         Apellido Nombre Integrante 2

; Semestre: 8vo Semestre ISC 
;FIN DESCRPICI�N

INCLUDE Irvine32.inc  

.data
; �rea de Declaraci�n de Variables
vector dword 10, 20, 30, 40, 50

.code

	main1 PROC
	
		;L�gica del Programa
		;esi /edi
		mov esi, 1

		mov eax, vector[esi]
		call writedec

		
		exit	
	
	main1 ENDP
	
	END main1
