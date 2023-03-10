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

msj1_E4 db "Ingresa numero: "
.code

	mainE4 PROC
	
		;Lógica del Programa

		;realizar la sumaoria de tosos lo numeros que sean infresados 
		;hasta que se ingrese un numero negativo, el negativo no se suma
		mov ebx,0
		ciclo:
			mov edx, offset msj1_E4
			call writestring
			call crlf
			inc ebx
			call readInt ; eax
			cmp eax, 0
			jge ciclo

			dec ebx
			mov eax,ebx
			call writedec
			
				
		exit	
	
	mainE4 ENDP
	
	END mainE4
