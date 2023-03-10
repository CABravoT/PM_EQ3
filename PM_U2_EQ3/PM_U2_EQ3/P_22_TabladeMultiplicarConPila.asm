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
msg1_22 db " x ", 0
msg2_22 db " = ", 0
msg3_22 db " Que tabla quieres visualizar: ", 0

.code

	main22 PROC
	
		;Lógica del Programa

		;desplegar la tabla de multiplicar indicada por el usuario
		mov edx, offset msg3_22; de que tabla quieres

		call writestring
		call crlf

		call readInt
		mov ebx, 1;contador de la tabla

		ciclo:

			call writedec ;implime la tabla

			mov edx, offset msg1_22; de que tabla quieres
			call writestring

			xchg eax, ebx
			call writestring

			mov edx, offset msg2_22; de que tabla 
			call writestring

			push eax

			mul ebx

			call writedec

			pop eax

			inc eax

			xchg eax, ebx

			call crlf

			cmp ebx, 10
			jle ciclo
		
		call crlf

		
				
		exit	
	
	main22 ENDP
	
	END main22
