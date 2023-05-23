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
vector_pares dword 4, 6, 2, 8, 10, 12, 14, 20
contador dword 0d

.code

	mainE4 PROC
	
		;Lógica del Programa

		mov esi, offset vector_pares	;indica la direccion de memoria
		mov ecx, 8	;Es el numero de elementos en el vector (cambiar si el tamaño cambia)

		ciclo:
			mov eax, [esi]
			mov edx, 0		;inicia en cero para la division
			mov ebx, 2      
			div ebx			;divide entre 2 y almacena el resto en edx
			cmp edx, 0		;comprueba si el resto es 0
			jne noes_par	;si no es 0 entonces salta a no es par

		par:
			inc contador
			jmp siguiente

		noes_par:
			jmp siguiente

		siguiente:
			add esi, 4
			loop ciclo

		mov eax, contador

		;resultado
		println "La cantidad de pares es: "
		call writedec

		exit	
	
	mainE4 ENDP
	
	END mainE4



	if vector[i] % 2 == 0