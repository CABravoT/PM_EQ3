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
msj1_E15 db "Metros3 consumidos: ", 0
msj2_E15 db "Precio por M3: $",0
msj3_E15 db "Su pago sera: $",0






.code

	mainE15 PROC
	
		;Lógica del Programa

		mov edx, offset msj1_E15
		call writeString
		call readInt
		call crlf
		mov ebx, eax

		mov edx, offset msj2_E15
		call writeString
		call readInt
		call crlf
		mul ebx

		mov edx, offset msj3_E15
		call writeString
		call writeDec
		call crlf
		
	

		exit	
	
	mainE15 ENDP
	
	END mainE15
