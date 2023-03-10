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

mayorA_17 db "A es mayor que b", 0

mayorB_17 db "B es mayor que a", 0

iguales_17 db "A y B son iguales", 0

msj1_17 db "ingresa el valor de A", 0

msj2_17 db "ingresa el valor de B", 0



.code

	main17 PROC
	
		;Lógica del Programa

		mov edx, offset msj1_17
		call writestring
		call crlf
		
		call readInt

		mov edx, offset msj2_17
		call writestring
		call crlf
		
		mov ebx, eax

		call readInt

		cmp ebx, eax ; comparamos a con b

		jz igual
		jl menor
		
		mov edx, offset mayorA_17
		call writestring
		call crlf

		jmp salir

		menor:
		
		mov edx, offset mayorB_17
		call writestring
		call crlf

		jmp salir
		
		

		igual:

		mov edx, offset iguales_17
		call writestring
		call crlf
		
		salir:
		

		
				
		exit	
	
	main17 ENDP
	
	END main17
