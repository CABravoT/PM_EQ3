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

cadena db "ingresa un numero :" , 0

var1_2 dword 10d
var2_2 dword 2d

.code

	main5 PROC
	
		;Lógica del Programa

		mov edx, offset cadena
		call writestring
		call crlf
		
		 call readint
		 ;lee un valor ingrrssado por conlola y lo muestra en eax

		mov eax, var1_2

		call crlf

		call writeint; echo para comprobar el contenido de eax

		;add var1_2, var2_2 ; resultado en eax
		
		exit	
	
	main5 ENDP
	
	END main5
