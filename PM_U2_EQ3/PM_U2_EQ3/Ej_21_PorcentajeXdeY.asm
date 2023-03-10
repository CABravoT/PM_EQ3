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
msj1_E21 db "Ingrese su numero: ", 0
msj2_E21 db "Ingrese porcentaje a calcular: ", 0
msj3_E21 db " El valor es: ", 0


var1_E21 dword 100d
.code

	mainE21 PROC
	
		;Lógica del Programa

		mov edx, offset msj1_E21
		call writeString
		call readInt
		mov ebx, eax
		call crlf
		
		mov edx, offset msj2_E21
		call writeString
		call readInt
		
		call crlf
		
		mov edx,0
		mul ebx
		div var1_E21
	
		mov edx, offset msj3_E21
		call writeString
		call writedec
		
		exit	
	
	mainE21 ENDP
	
	END mainE21
