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

var1_7 dword 10d


.code

	main7 PROC
	
		;L�gica del Programa
		;la multiplicacion unicamente se puede realizar entre el registro eax y un operando 
		;proporcionado en la instruccion 
		
		;el operando no puede ser un valor inmediato
		;El resultado de la multiplicacion se almacena en eax


		;ejemplo 1
		mov eax, 5
		mul var1_7 ; eax=eax *var1_7
		call writeint

		;ejemplo 2
		call crlf
		mov eax, 5
		mov ebx, 2
		mov ecx, 3

		mul ebx ; eax= eax*ebx
		mul ecx

		;ejempolo 3
		call crlf

		mov eax, 4
		;mul 5  ; es una operacion no valida



		call writeint

		exit	
	
	main7 ENDP
	
	END main7
