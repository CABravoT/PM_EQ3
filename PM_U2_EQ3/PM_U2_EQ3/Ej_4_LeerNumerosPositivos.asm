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

msj1_E4 db "Ingresa numero: "
.code

	mainE4 PROC
	
		;L�gica del Programa

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
