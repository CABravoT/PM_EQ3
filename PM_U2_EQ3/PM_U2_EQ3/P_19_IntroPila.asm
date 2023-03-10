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


.code

	main19 PROC
	
		;Lógica del Programa

		mov edx, 10  ;colocamos en el registro edx el valor 10
		;este se pudo obtener de diversas formas o como resultado de alguna operacion
		;se requiere utilizar al registro edx sin embargo no se quiere perder su valor, entonces se recurre
		; a la pila para almacenar temporalemtne el valor del registro

		push edx; almacenar el valor de edx en la pila

		mov edx, 5 ; cambia el valor de edx y pone en este el nuevo valor
					; el mov no mueve los registros, solo los copia

		mov eax, edx  ; se coloca en eax el valor de edx para poder imprimirlo en consola

		call writedec

		call crlf

		pop eax ; recupera el ultimo valor que s eguardo en la pila, en este caso el valor de 
				;edx al comienzo del programa

		call writedec

		call crlf
		
		;checar que tiene la pila ahora
		mov eax, 2
		pop eax
		call writedec
		call crlf

		;checar que tiene la pila ahora
		mov eax, 2
		pop eax

		call writedec
		call crlf
				
		exit	
	
	main19 ENDP
	
	END main19
