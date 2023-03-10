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
msj1_E19 db "Ingresa numero para imprimir los pares que hayan antes que el: ", 0
;msj2_E19 db "El numero en la sucesion es: ",0
var1_E19 dword 2d
.code

	mainE19 PROC
	
		;Lógica del Programa

		mov edx, offset msj1_E19
		call writeString
		call readInt
		call crlf
		mov ecx, eax
		mov ebx,0
		mov edx,0

		ciclo:
		add ebx,1
		mov eax,ebx
		div var1_E19
		mov eax,ebx
		cmp edx,0
		jz imprime
		cmp ebx,ecx
		jg salir

		imprime:
		
		mov eax,ebx
		call writedec
		call crlf
		jmp ciclo

		salir:

		exit	
	
	mainE19 ENDP
	
	END mainE19
