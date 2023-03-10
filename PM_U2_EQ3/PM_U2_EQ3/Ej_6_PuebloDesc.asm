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
msg1_E6 db " %"

.code

	mainE6U3 PROC
		println "Cuantas tarjetas tiene?"
		call readInt
		cmp eax,1
		jg mulTarjeta

		println "De que tipo es su tarjeta?"
		jmp continuar


		mulTarjeta:
		
		

	;call msgboxAsk ;6=si 7=no   ;no lo entiendas, asi lo da la libreria
	;cmp eax,6		;6 significa si
	;jnz salir
	;jz ciclo

	
	continuar:
	
	;pop eax
	mul eax
	println "Usted tiene un aumento de: "
	cmp eax,80
	jge masoch
	
	call writedec
	mov edx, offset msg1_E6
	call writeString
	jmp salir

	masoch:
	mov eax,80
	call writeDec
	mov edx, offset msg1_E6
	call writeString
	
	

		salir:
		exit	
	
	mainE6U3 ENDP
	
	END mainE6U3
