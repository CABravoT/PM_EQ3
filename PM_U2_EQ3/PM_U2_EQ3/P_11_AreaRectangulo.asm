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

.data
; �rea de Declaraci�n de Variables

var1_11 dword 10d

message1_11 db "ingrese base: ",0
message2_11 db "ingrese altura: ",0
message3_11 db "el area es : ",0

.code

	main11 PROC
	
		;L�gica del Programa

		;mensaje 1
		mov edx, offset message1_11 ;Cal 1
		call writestring ;imprime mensaje
		call crlf
		call readint ;lee un numero y lo guarda en eax
		;disponibles ebx y ecx
		mov ebx, eax ;guarda el valor de eax en ebx

		mov edx, offset message2_11 ;Cal 1
		call writestring ;imprime mensaje
		call crlf
		call readint ;lee un numero y lo guarda en eax
		 mul ebx ; aqui multiplica eax y ebx y esto se guarda en eax

		 call crlf
		 mov edx, offset message3_11
		 call writestring

		 call writeint

	
		
		exit	
	
	main11 ENDP
	
	END main11
