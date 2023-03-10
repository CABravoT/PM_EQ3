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

var1_9 dword 2d
ingre1 db "ingrese m", 0
ingre2 db "ingrese x", 0
ingre3 db "ingrese b", 0
mensaje db "Y vale: ", 0




.code

	main9 PROC
	
		;Lógica del Programa
		
		mov edx, offset ingre1
		call writestring
		call crlf
		call readInt  ; readInt almacena en eax

		mov ecx, eax  ; vas a respaldar en ecx el valor de eax


		call crlf

		mov edx, offset ingre2
		call writestring
		call crlf
		call readInt
		mul ecx  ; se va a multiplicar eax que multiplica a ecx= m*x
		mov ecx, eax

		call crlf

		mov edx, offset ingre3
		call writestring
		call crlf
		call readInt
		add eax,ecx

		call crlf

		mov edx, offset mensaje
		call writestring

		call writeInt
		call crlf
		

		exit	
	
	main9 ENDP
	
	END main9
