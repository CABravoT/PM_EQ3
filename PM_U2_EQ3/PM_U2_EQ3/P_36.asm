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
msj1_E21 db "Ingrese su numero: ", 0
msj2_E21 db "Ingrese porcentaje a calcular: ", 0
msj3_E21 db " El valor es: ", 0


var1_E21 dword 100d
.code

	main36 PROC
	
		;L�gica del Programa

	mov eax,10
	push eax
	mov eax,1000
	call delay
	pop eax
	call writedec
		
		
		exit	
	
	main36 ENDP
	
	END main36
