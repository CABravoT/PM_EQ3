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

.data
; Área de Declaración de Variables



msg1_14 db "Ingresa 1 numero ",0
msgPar_14 db "Es par ",0
msgImpar_14 db "es Impar ",0

.code

	main15 PROC
	
		;Lógica del Programa
		;imprimir del 1 al 109 con saltos condicionales
		 mov eax, 1

		 repetir:

		 call writedec
		 call crlf
		 add eax, 1

		 cmp eax, 10
		 jle repetir; mientras sea menor o igual repite

		 ; saltos mas comunes 

		 ;jz salta si es 0
		 ;je salta si es igual
		 ;jl salta si es menor
		 ;jg salta si es mayor
		 ; jnz salta si no es 0
		 ; jne salta si no es igual
		 ; jnl salta si no es menor
		 ; jng salta si no es mayor
		 ;jle salta si es menor o igual
		 ;jge salta si es mayor o igual
		

		
		
				
		exit	
	
	main15 ENDP
	
	END main15
