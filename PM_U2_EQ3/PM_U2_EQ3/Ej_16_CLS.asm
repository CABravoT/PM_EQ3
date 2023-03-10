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
msj1_E16 db "Kilowatts Consumidos: ", 0
msj2_E16 db "Precio por kilowhat: $",0
msj3_E16 db "El costo de su deuda es: $",0






.code

	mainE16 PROC
	
		;Lógica del Programa

		mov edx, offset msj1_E16
		call writeString
		call readInt
		call crlf
		mov ebx, eax

		mov edx, offset msj2_E16
		call writeString
		call readInt
		call crlf
		mul ebx

		mov edx, offset msj3_E16
		call writeString
		call writeDec
		call crlf
		
	

		exit	
	
	mainE16 ENDP
	
	END mainE16
