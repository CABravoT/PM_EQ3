;TITLE NombrePrograma

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

var1_2 dword 10d
var2_2 dword 2d

.code

	main3 PROC
	
		;L�gica del Programa
		;add se rige por las mismas restricciones que mov
		;en cuanto a los operandos

		mov eax, 4

		call WriteInt   ; imprimir en consola el calor con el que cuenta el regiustro eax
		
		exit	
	
	main3 ENDP
	
	END main3
