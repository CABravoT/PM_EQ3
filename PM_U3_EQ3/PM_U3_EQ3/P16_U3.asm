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

titulo db "advertencia!!!", 0
contenido db "Desea Visualizar el resultado de la suma?", 0



.code

	main45 PROC
	println "Ingresa el valor de A "
	call readInt
	println "Ingresa el valor de B "
	mov ecx, eax
	call readInt 

	mov edx, offset contenido
	mov ebx, offset titulo
	add ecx,eax

	call msgboxAsk ;6=si 7=no   ;no lo entiendas, asi lo da la libreria
	
	cmp eax,6		;6 significa si
	jnz salir

	imprimir:
	mov eax,ecx
	call writedec

	salir:
		
		exit	
	
	main45 ENDP
	
	END main45
