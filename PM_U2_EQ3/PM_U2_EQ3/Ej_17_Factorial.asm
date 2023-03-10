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
msj1_E17 db "Ingresa numero para calcular Factorial: ", 0
msj2_E17 db "El factorial es: ",0







.code

	mainE17 PROC
	
		;Lógica del Programa

		mov edx, offset msj1_E17
		call writeString
		call readInt
		call crlf
		mov ebx, eax

		calculo:
		sub ebx,1
		mul ebx
		;call writeDec
		;call crlf
		cmp ebx,2
		jz salir
		jge calculo
		
		salir:
		mov edx, offset msj2_E17
		call writeString
		call writeDec
		exit	
	
	mainE17 ENDP
	
	END mainE17
