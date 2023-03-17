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
contenido db "Desea Iniciar con el procedimiento?", 0
preguntar db "Desea seguir?",0



.code

	mainE2U3 PROC
	mov ecx,0
	mov ebx,0
	push ebx
	call msgboxAsk
	cmp eax,6
	jnz salir
	jz ciclo

	ciclo:
	println "Ingresa la edad :"
	call readInt
	
	add ecx, eax
	pop ebx
	inc ebx
	push ebx
	

	mov edx, offset preguntar
	mov ebx, offset titulo
	



	call msgboxAsk ;6=si 7=no   ;no lo entiendas, asi lo da la libreria
	cmp eax,6		;6 significa si
	jnz salir
	jz ciclo

	imprimir:
	mov eax,ecx
	call writedec

	salir:
		
		exit	
	
	mainE2U3 ENDP
	
	END mainE2U3
