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
INCLUDE macros.inc  


.data
; �rea de Declaraci�n de Variables

nombre1_12 byte 20 dup('A')
nombre2_12 byte 30 dup('G')



.code

	main41 PROC
	mov edx, offset nombre1_12
	mov ecx, sizeof nombre2_12
	call readstring  ;"Pedro"+null

	mov edx, offset nombre2_12
	mov ecx, sizeof nombre2_12
	call readstring

	mov edx, offset nombre1_12
	call writeString
	call crlf

	mov edx, offset nombre2_12
	call writestring
	call crlf
	

	
		
		exit	
	
	main41 ENDP
	
	END main41
