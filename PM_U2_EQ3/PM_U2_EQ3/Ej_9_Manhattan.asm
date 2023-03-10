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
msj1_E9 db "Ingresa el punto x1: ", 0
msj2_E9 db "Ingresa el punto x2: ",0
msj3_E9 db "Ingresa el punto y1: ",0
msj4_E9 db "Ingresa el punto y2: ",0
msj5_E9 db "La distancia de los puntos es: ",0


.code

	mainE9 PROC
	
		;Lógica del Programa

		;pedir el punto x1
		mov edx, offset msj1_E9
		call writeString
		call readint
		call crlf
		mov ebx, eax
		
		;pedir el punto x2
		mov edx, offset msj2_E9
		call writeString
		call readint
		call crlf

		;hacer la resta de x2-x1 y moverlo al registro ecx
		sub eax, ebx
		mov ecx, eax

		;pedir el punto y1
		mov edx, offset msj3_E9
		call writeString
		call readint
		call crlf
		mov ebx, eax
		

		;pedir el punto y2
		mov edx, offset msj4_E9
		call writeString
		call readint
		call crlf
		sub eax, ebx

		add eax, ecx

		mov edx, offset msj5_E9
		call writeString
		call writeDec
		

		exit	
	
	mainE9 ENDP
	
	END mainE9
