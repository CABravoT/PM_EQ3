;TITLE NombrePrograma

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
	
		;Lógica del Programa
	
		
		exit	
	
	main ENDP
	
	END main
