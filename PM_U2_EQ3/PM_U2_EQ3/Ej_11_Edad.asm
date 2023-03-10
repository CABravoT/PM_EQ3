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
msj1_E11 db "Año de nacimiento: ", 0
msj2_E11 db "Año actual: ",0
msj3_E11 db "Edad del solcitante: ",0
msj4_E11 db " Años",0



.code

	mainE11 PROC
	
		;Lógica del Programa

		mov edx, offset msj1_E11
		call writeString
		call readInt
		call crlf
		mov ebx, eax

		mov edx, offset msj2_E11
		call writeString
		call readInt
		sub eax,ebx
		call crlf

		mov edx, offset msj3_E11
		call writeString
		call writeInt
		mov edx, offset msj4_E11
		call writeString


		exit	
	
	mainE11 ENDP
	
	END mainE11
