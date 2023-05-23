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
vector_2 dword 3, 5, 13, 9, 6, 10

.code

	mainE2 PROC
	
		;Lógica del Programa
		mov eax, 0 ; inicia eax a cero para guardar la suma
		mov esi, offset vector_2; carga los elementos del vector
		mov ecx, 6 ; cantida de los elementos del vector

		ciclo:
        	add eax, [esi]  ;suma el valor del elementos del vector
        	add esi, 4 ; suma 4 al registro de esi
        	loop ciclo ; salta a la etiqueta ciclo si ecx no es igual a cero

		println "El resultado de la suma es:"
		call writedec
		call crlf

		println "El resultado al cuadrado es: "
		mul eax ; multiplica el valor actual de eax (potencia)
		call writedec

		exit	
	
	mainE2 ENDP
	
	END mainE2