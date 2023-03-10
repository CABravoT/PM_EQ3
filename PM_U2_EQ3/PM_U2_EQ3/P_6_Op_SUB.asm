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

var1_6 dword 10d


.code

	main6 PROC
	
		;Lógica del Programa

		;add se rige por las mismas restricciones que mov
		;en cuanto a los operandos

		;Operacions validas:
		;mem a reg  a la memoria se le resta el registro
		;reg a mem  al registro se le resta l amemoria
		;reg a reg;
		;reg/mem a inm

		;ejemplo 1

		mov eax, 4 
		;destino, origen
		sub var1_6, eax ; destino = destino - origen

		;ejemplo 2

		sub eax, var1_6 ; eax=4-6= -2


		
		call writeint
;ejemplo 3

	call crlf
		mov ebx, 8
		sub  ebx, eax

		mov eax, ebx

		call writedec


		; ejempplo4 

		call crlf

		sub eax, 3
		
		 call writedec
		
		exit	
	
	main6 ENDP
	
	END main6
