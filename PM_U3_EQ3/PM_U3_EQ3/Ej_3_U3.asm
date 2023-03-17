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
var1_ej3 dword 20d
var2_ej3 dword 25d
var3_ej3 dword 30d
titulo_ej3 db "Naufrago Feliz", 0

tarjeta_ej3 db "¿Tarjeta?", 0

.code

	mainE3U3 PROC
		println "que tipo de hamburguesa quiere?"
		println "1) sencilla"
		println "2) doble"
		println "3) triple"
		call readint
		cmp eax,2
		jz doble
		;cmp eax,2
		jl sencilla
		;cmp eax,3
		jg triple

		sencilla:
		println "cuantas quiere?"
		call readInt
		mul var1_ej3
		push eax
		jmp continuar

		doble:
		println "cuantas quiere?"
		call readInt
		mul var2_ej3
		push eax
		jmp continuar

		triple:
		println "cuantas quiere?"
		call readInt
		mul var3_ej3
		push eax
		jmp continuar

		

	;call msgboxAsk ;6=si 7=no   ;no lo entiendas, asi lo da la libreria
	;cmp eax,6		;6 significa si
	;jnz salir
	;jz ciclo

	
	continuar:
	
	mov ecx,0
	mov ebx,0
	
	mov edx, offset tarjeta_ej3
	mov ebx, offset titulo_ej3
	call msgboxAsk
	cmp eax, 6
	jg tarjetaNo

	
	;tarjetaSi:
	println "El total es: $"
	pop eax
	add eax,5
	call writeDec
	jmp salir

	tarjetaNo:
	println "El total es: $"
	pop eax
	call writeDec

		salir:
		exit	
	
	mainE3U3 ENDP
	
	END mainE3U3
