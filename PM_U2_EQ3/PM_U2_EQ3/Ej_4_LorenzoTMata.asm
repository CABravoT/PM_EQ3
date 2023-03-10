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
INCLUDE macros.inc  


.data
; Área de Declaración de Variables
var1_ej4 dword 200d
var2_ej4 dword 150d
var3_ej4 dword 100d
var4_ej4 dword 50d


tarjeta_ej3 db "¿desea continuar con el tratamiento?", 0

.code

	mainE4U3 PROC
		println "a que cita viene?"
		call readInt
		mov ebx,0

		
		

		

	;call msgboxAsk ;6=si 7=no   ;no lo entiendas, asi lo da la libreria
	;cmp eax,6		;6 significa si
	;jnz salir
	;jz ciclo

	
	continuar:
	
	mov ecx,0
	mov ebx,0
	
;	mov edx, offset tarjeta_ej3
;	mov ebx, offset titulo_ej3
	call msgboxAsk
	cmp eax, 6
	jg tarjetaNo

	
	
	tarjetaNo:
		salir:
		exit	
	
	mainE4U3 ENDP
	
	END mainE4U3
