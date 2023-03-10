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

.data
; Área de Declaración de Variables
msj1_E8 db "Ingresa ladoA: ", 0

msj2_E8 db "Ingresa ladoB: ",0
msj3_E8 db "Ingresa ladoC: ",0
msj4_E8 db "El Area es: ",0
var1_E8 dword 2d

.code

	mainE8 PROC
	
		;Lógica del Programa

		mov edx, offset msj1_E8
		call writestring
		call readInt ;leer el lado a
		call crlf
		mov ecx, eax ;lado a esta en ecx

		
		mov edx, offset msj2_E8
		call writestring
		call readInt ;leer el lado b
		call crlf
		mov ebx, eax ;lado b esta en ebx
		

		mov edx, offset msj3_E8
		call writestring
		call readInt ;leer el lado c

		;lado c esta en eax
		
		call crlf
		; los valores de los lados estan guarados asi:
		;ladoc -->eax
		;ladob -->ebx
		;ladoa -->ecx

		;sacar area de rectangulo
		push eax
		mul ebx
		
		
		mov edx,eax  ;el area del rect esta en edx
		;add edx,5
		;mov eax, edx
		

		;calcular area de triangulo
		
		pop eax
		

		sub ecx, eax  ;aqui se calcula el lado a-c
		mov eax, ecx
		
		mul ebx			;base x altura del triangulo
		
		mov ebx,edx
		
		div var1_E8
				
		add eax, ebx
		
		mov edx, offset msj4_E8
		call writestring
		call writeint


		
		exit	
	
	mainE8 ENDP
	
	END mainE8
