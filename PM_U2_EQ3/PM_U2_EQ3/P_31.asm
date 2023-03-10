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

	main31 PROC
	
		;Lógica del Programa

	mov eax,65
	call writechar  ;escribe la letra A porque se guardo en cod ascci
	call crlf
		
		
		exit	
	
	main31 ENDP
	
	END main31
