;TITLE NombrePrograma

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

.code
;prueba de inm a mem

mov val1, 7

;prueba d einmediato a registro
 mov eax, 24

 ;prueba de registro a memoria
 mov variable1, eax

 ;prueba de memoria a rgistro
 mov abx, var1

 ;prueba de registro a registro
 mov ecx, ebx

	main PROC
	
		;L�gica del Programa
	
		
		exit	
	
	main ENDP
	
	END main
