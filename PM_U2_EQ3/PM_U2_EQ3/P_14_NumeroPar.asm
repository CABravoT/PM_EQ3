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

var1_13 dword 10d

msg1_14 db "Ingresa 1 numero ",0
msgPar_14 db "Es par ",0
msgImpar_14 db "es Impar ",0

.code

	main14 PROC
	
		;Lógica del Programa

		mov edx, offset msg1_14
		call writestring
		call crlf

		call readint ; eax aqui se guarda el readint

		mov ebx, 2
		mov edx, 0

		div ebx

		cmp edx, 0

		jnz impar ;si no es 0, si no es par se va a impar
		; si es par entonces continua

		

		mov edx, offset msgPar_14
		call writestring
		call crlf

		jmp salir

		impar:

		mov edx, offset msgImpar_14
		call writestring
		call crlf

		salir:

				
		exit	
	
	main14 ENDP
	
	END main14
