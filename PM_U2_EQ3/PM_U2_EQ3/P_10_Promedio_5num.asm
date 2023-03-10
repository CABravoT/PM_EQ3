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
msjEntrada_10 db "Ingrtesa una calificacion", 0
msjResultado db "El promedio es: ", 0


.code

	main10 PROC
	
		;Lógica del Programa
		mov edx, offset msjEntrada_10 ;Cal 1
		call writeint ;imprime cociente
		call crlf
		call readint ;lee un numero y lo guarda en eax
		;disponibles ebx y ecx
		mov ebx, eax ;guarda el valor de eax en ebx

		mov edx, offset msjEntrada_10  ;cal 2
		call writeint ;imprime cociente
		call crlf
		call readint ;lee un numero y lo guarda en eax
		;resguardar u operar
		;Operar

		add ebx, eax ;suma cal1+cal2

		mov edx, offset msjEntrada_10  ;cal 3
		call writeint ;imprime cociente
		call crlf
		call readint ;lee un numero y lo guarda en eax
		;resguardar u operar
		;Operar

		add ebx, eax ;suma cal1+cal2

		mov edx, offset msjEntrada_10  ;cal 4
		call writeint ;imprime cociente
		call crlf
		call readint ;lee un numero y lo guarda en eax
		;resguardar u operar
		;Operar

		add ebx, eax ;suma cal1+cal2

		mov edx, offset msjEntrada_10  ;cal 5
		call writeint ;imprime cociente
		call crlf
		call readint ;lee un numero y lo guarda en eax
		;resguardar u operar
		;Operar ; pero guardar en eax para facilitar la proxima division
		
		add eax, ebx

		;division es eax entre registro o una variable edx debe estar en 0 para guardar el residuo para evitar overlow
		;
		mov edx, 0 ; para guardar el residuo y evitar overflow

		;ecx no cuenta con algun valor de momento
		;y en ebx el valor ya no se utilizara porque ya ue utilizado al realizar la suma anterior 
		;en este sentido se puede utilizar ebx o ecx, se escogio ecx

		mov ecx, 5
		div  ecx  ; el cociente se guarda en eax

		call writeint



		exit	
	
	main10 ENDP
	
	END main10
