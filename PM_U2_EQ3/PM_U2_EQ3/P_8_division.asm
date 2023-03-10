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

var1_8 dword 2d


.code

	main8 PROC
	
		;Lógica del Programa
		
		; la division siempre debe realizarse entre eax y un operando 
		;el cociente se almacena en eax 
		;el resuduo se almacena en edx 
		;se recomienda limpiar el registro eax siempre que se vaya realizando una division
		;
		; ejemplo 1
		mov eax,10
		mov edx, 0
		div var1_8 ;eax=1/2

		call writeint

		;ejemplo 2
		call crlf
		mov eax,9
		mov edx, 0
		div var1_8 ; cociente estara en eax y residuo en edx
		call writeint ;imprime cociente
		call crlf
		xchg eax,edx ; intercambia el calor de los registros
		
		call writeint

		exit	
	
	main8 ENDP
	
	END main8
