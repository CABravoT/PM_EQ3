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



.code

	main16 PROC
	
		;L�gica del Programa

		call readint  ; leemos un valor y se guarda en eax ; es la base
		mov ebx, eax

		call readint ; leer valor y gardar en eax ; es la potencia

		mov ecx, eax ; ebx resparda la base y ecx respalda la potencia
		; se debe regresar la base a eax
		 mov eax, ebx

		repite:

			mul ebx
			; esto es un contador
			sub ecx, 1
			cmp ecx, 1
			jg repite ;salta si es mayor

		call writedec

		salir:

				
		exit	
	
	main16 ENDP
	
	END main16
