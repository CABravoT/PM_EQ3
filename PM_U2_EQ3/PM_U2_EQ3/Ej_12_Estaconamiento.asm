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
msj1_E12 db "Tarifa por hora: $", 0
msj2_E12 db "Minutos estacionado: ",0
msj3_E12 db "Usted debe pagar: $",0
var1_E12 dword 60d





.code

	mainE12 PROC
	
		;Lógica del Programa

		mov edx, offset msj1_E12
		call writeString
		call readInt
		call crlf
		mov ecx, eax

		mov edx, offset msj2_E12
		call writeString
		call readInt
		call crlf
		
		mov edx, offset 0
		div var1_E12

		cmp edx,0
		jnz sumaHora

		jmp salir

		sumaHora:
		add eax,1
		

		salir:
		mov edx,0
		mov edx, offset msj3_E12
		call writeString
		mul ecx
		call writedec
		call crlf

		exit	
	
	mainE12 ENDP
	
	END mainE12
