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




.code

	main39 PROC
	println "Ingresa el valor de A: "
	call readInt
	println "Ingresa el valor de B: "
	mov ebx,eax
	call readInt
	add eax,ebx
	call waitmsg
	println "la suma es: "
	call writeDec

	
		
		exit	
	
	main39 ENDP
	
	END main39
