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
db "segunda linea",0



.code

	main44 PROC
	mov edx, offset contenido 
	mov ebx, offset titulo
	call msgboxask
	println "El boton seleccionado es:"
	call writeInt ; respuesta
	
		
		exit	
	
	main44 ENDP
	
	END main44
