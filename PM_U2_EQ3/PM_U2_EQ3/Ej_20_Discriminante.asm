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
msj1_E20 db "Ingresa valor de A: ", 0
msj2_E20 db "Ingresa el valor de B: ", 0
msj3_E20 db "Ingresa valor de C: ", 0
msj4_E20 db "El discriminante es: ", 0
var1_E20 dword 4d




.code

	mainE20 PROC
	
		;Lógica del Programa

		mov edx, offset msj1_E20
		call writeString
		call readInt
		mov ecx, eax
		call crlf
		
		mov edx, offset msj2_E20
		call writeString
		call readInt
		mov ebx,eax
		call crlf
		
		mov edx, offset msj3_E20
		call writeString
		call readInt
		call crlf
		
		mul ecx
		mul var1_E20

		push eax

		mov eax,ebx
		mul ebx

		pop ecx

		sub eax,ecx

		mov edx, offset msj1_E20
		call writeString
		
		call writedec
		
		exit	
	
	mainE20 ENDP
	
	END mainE20
