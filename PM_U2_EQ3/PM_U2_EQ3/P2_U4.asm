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
vector byte 10,20,30,40,50


.code

	mainP2U4 PROC
	
		;L�gica del Programa
	mov esi,0
	mov eax,0
	;mov eax,vector[esi]
	mov al,vector[esi]
	call writedec

		exit	
	
	mainP2U4 ENDP
	
	END mainP2U4
