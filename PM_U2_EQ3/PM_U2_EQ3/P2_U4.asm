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
vector byte 10,20,30,40,50


.code

	mainP2U4 PROC
	
		;Lógica del Programa
	mov esi,0
	mov eax,0
	;mov eax,vector[esi]
	mov al,vector[esi]
	call writedec

		exit	
	
	mainP2U4 ENDP
	
	END mainP2U4
