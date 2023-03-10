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
msj1_23 db "Ingrese su numero: ", 0
msj2_23 db "Ingrese porcentaje a calcular: ", 0
msj3_23 db " El valor es: ", 0



.code

	main23 PROC
	
		;Lógica del Programa


		call readint
		call crlf

		ciclo1:
		push eax
		mov eax,1
		ciclo2:
		call writedec
		call crlf
		inc eax
		cmp eax,10
		jle ciclo2
		call crlf
		pop eax
		dec eax
		cmp eax,0
		jg ciclo1
		
		
		
		
		exit	
	
	main23 ENDP
	
	END main23
