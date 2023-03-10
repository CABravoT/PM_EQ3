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
msj1_E13 db "Tarifa por M2: $", 0
msj2_E13 db "Metros a pintar: ",0
msj3_E13 db "Usted debe pagar: $",0






.code

	mainE13 PROC
	
		;Lógica del Programa

		mov edx, offset msj1_E13
		call writeString
		call readInt
		call crlf
		mov ebx, eax

		mov edx, offset msj2_E13
		call writeString
		call readInt
		call crlf
		mul ebx

		mov edx, offset msj3_E13
		call writeString
		call writeDec
		call crlf
		
	

		exit	
	
	mainE13 ENDP
	
	END mainE13
