TITLE NombrePrograma

;DESCRPICIÓN 
;Objetivo: Archivo de Ejemplo
;
; Autore(s):
;         BRAVO TORRES CESAR AUGUSTO 
;         ESCAMILLA GONZALEZ CYNTIA VANESSA 

; Semestre: 8vo Semestre ISC 
;FIN DESCRPICIÓN

INCLUDE Irvine32.inc  

.data
; Área de Declaración de Variables
;tipos de datos

variable1_2 byte 10 ;1 byte
variable2_2 word 240 ;2 bytes
variable3_2 dword 300h  ; bytes

.code

	main2 PROC
	
		;Lógica del Programa
	
		;registros de proposito general: eax, ebx, ecx, edx

		;eax = 32 bits
		;E = 16 BITES [ AX = 16 BITS]
		; CADA REGiSTRO DE PROP GRAL CUENTA CON LA PARTE E [EXTEND] Y SU COMPLEMENTO [EJ:AX]
		;LA PARTE EXTENDIDA NO SE PUEDE UTILIZR INDEPENDIENTEMENTE DEL REGISTRRO
		;SIN EMBARGO SU COMPLEMENTO SI PUEDE SET UTILIZADO

		;SI SE UTILIZA AX ENTONCES SE TENDRA UNA VARIABLE DE 16
		; SI A SU VEZ, AX, O SUS HERMANOS SE PUEDEN DESCOMPONER EN PARTE ALTA Y PARTE BAJA, 
		;CADA UNO CON 8 BITS DE CAPACIDAD

		;EJEMPLO: AX SERIA AH Y AL

		;MOV ESTE TIENE UN DESTINO/ORIGEN ----> DESTINO = ORIGEN

		MOV AH, 120


		MOV AX, 435H


		MOV EAX,1


		exit	
	
	main2 ENDP
	
	END main2