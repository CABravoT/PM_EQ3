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
INCLUDE macros.inc  


.data
; Área de Declaración de Variables

nombre byte 20 dup('A')


.code

	main40 PROC
	mov edx, offset nombre
	mov ecx, sizeof nombre
	call readstring  ;"Pedro"+null
	call writestring

	
		
		exit	
	
	main40 ENDP
	
	END main40
