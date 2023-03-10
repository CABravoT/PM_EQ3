TITLE NombrePrograma

;DESCRPICIÓN 
;Objetivo: Archivo de Ejemplo
;
; Autore(s):
;         BRAVO TORRES CESAR AUGUSTO 
;         ESCAMILLA GONZALEZ CYNTIA VANESSA 

; Semestre: 8vo Semestre ISC 
;FIN DESCRPICIÓN

INCLUDE Irvine32.inc  

.data
; Área de Declaración de Variables
variable1_2 byte 10 ;1 byte
variable2_2 word 240 ;2 bytes
variable3_2 dword 300h  ; bytes

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
		;Lógica del Programa
	
		
		exit	
	
	main1 ENDP
	
	END main1
