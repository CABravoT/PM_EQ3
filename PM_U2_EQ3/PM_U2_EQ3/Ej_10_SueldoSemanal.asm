;soliticar un valor de x y leer mientras que la suma sea menor que x
TITLE NombrePrograma

;DESCRPICI�N 
;Objetivo: Archivo de Ejemplo
;
; Autore(s):
;         Apellido Nombre Integrante 1
;         Apellido Nombre Integrante 2

; Semestre: 8vo Semestre ISC 
;FIN DESCRPICI�N

INCLUDE Irvine32.inc  

.data
; �rea de Declaraci�n de Variables
msj1_E10 db "Sueldo por hora: $", 0
msj2_E10 db "Horas trabajadas: ",0
msj3_E10 db "Sueldo: $",0



.code

	mainE10 PROC
	
		;L�gica del Programa

		mov edx, offset msj1_E10
		call writeString
		call readInt
		call crlf
		mov ebx, eax

		mov edx, offset msj2_E10
		call writeString
		call readInt
		mul ebx
		call crlf

		mov edx, offset msj3_E10
		call writeString
		call writeDec


		exit	
	
	mainE10 ENDP
	
	END mainE10
