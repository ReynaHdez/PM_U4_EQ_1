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
vector_promedio dword 13, 5, 7, 10, 9, 6
cant = 6 ;Cantidad de elementos en el vector

.code

	mainE3 PROC
	
		;Lógica del Programa
		;Calcular el promedio del vector
		
		mov ecx, cant ;Cantidad de elementos en el vector
		mov eax, 0 ;Inicializar la variable para la suma
		mov esi, offset vector_promedio ;Indica la direccion en la memoria y lo almacena en esi 
		
		ciclo:
			mov edx, ecx
			dec edx
			add eax, [esi + edx * 4] ; 
			loop ciclo
		
		;Dividir y sumar para el promedio
		mov ebx, cant ;Copia de la cantidad de elementos
		mov edx, 0 ;Inicializar el registro edx para la división
		
		div ebx ;Realizar la división
		
		;Imprimir el resultado
		println "El promedio es: "
		call WriteDec
		call Crlf

		exit	
	
	mainE3 ENDP
	
	END mainE3