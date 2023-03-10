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
msj1_E5 db "Ingresa numero: "

.code

	mainE5 PROC
	
		;Lógica del Programa

		;realizar la sumaoria de tosos lo numeros que sean infresados 
		;hasta que se ingrese un numero negativo, el negativo no se suma
		mov ebx,0
		
		ciclo:
			
			;mov edx, offset msj1_E5
			;call writestring
			;call crlf
			
			call readInt ; eax
			add ebx,eax
			

			cmp eax, 0
			jge ciclo

			sub ebx, eax
			mov eax,ebx
			call writedec
			
				
		exit	
	
	mainE5 ENDP
	
	END mainE5
