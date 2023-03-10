;soliticar un valor de x y leer mientras que la suma sea menor que x
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
msj1_E18 db "Ingresa numero de la sucesion a calcular: ", 0
msj2_E18 db "El numero en la sucesion es: ",0

.code

	mainE18 PROC
	
		;Lógica del Programa

		mov edx, offset msj1_E18
		call writeString
		call readInt
		call crlf
		mov edx, eax
		mov eax,0
		mov ebx,1
		mov ecx, 0

		fibo:
		push ebx		;respaldo el 1 que esta en ebx
		add ebx, eax	;sumo los 2 primeros lugares de la sucesion

		pop eax			;recupero el valor de 1 para asignarlo al lugar anterior
		mov ecx, ebx	;guardo la suma de las sucesiones (n-1)+(n)

		call writeDec
		call crlf
		
		sub edx,1		;le voy decrementando el valor del contador para el ciclio
		cmp edx,2		;comparo si el contador es igual a 2
		
		jg fibo			;mientas que sea mayor que 2 se va a arepetir el ciclo
						;
		
		
		mov eax, ecx
		
		mov edx,0
		mov edx, offset msj2_E18
		call writeString
		call writeDec
		exit	
	
	mainE18 ENDP
	
	END mainE18
