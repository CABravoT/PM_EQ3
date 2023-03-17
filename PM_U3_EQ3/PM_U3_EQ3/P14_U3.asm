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

titulo db "este es el titulo", 0
contenido db "Primera linea", 0dh, 0ah
contenido2 db "segunda linea",0



.code

	main43 PROC
	mov edx, offset contenido 
	mov ebx, offset titulo
	call msgbox
	
		
		exit	
	
	main43 ENDP
	
	END main43
