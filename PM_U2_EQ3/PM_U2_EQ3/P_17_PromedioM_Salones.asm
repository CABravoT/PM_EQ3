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
sumEdadesSalones_17 dword 0
sumTotalAlumnosSalones_17 dword 0


.code

	mainP17U3 PROC
		
		mov ebx,0; acumulador para el promedio de la escuela
		
		println "Cuantos salones tiene la escuela?"
		call readInt
		mov ecx, eax

		ciclo1:
		println "Cuantos Alumnos tiene el salon?"
		call readInt  ;total de alumnos de cada salon
		push ecx		;guarda en la pila el calor de la cantidad de salones
		mov ecx,eax

		mov edx, ecx ;cuantos alumnos tiene el salon...
			ciclo2:
					 
						println "Cual es la edad del alumno?
						call readInt ;la edad del alumnos
						add ebx, eax ; acumula la edad de las edades
				loop ciclo2

				; la suma de las edades del salon...
				;se necesita que eax tenga a la suma ; ahorita esta en ebx
				;se necsita que edx este en 0
				;en uyn registro o variable trener el numero de alimnos del salon

				mov eax, ebx ;se coa en ebx la suma de las edades acumuladas
				mov ebx,edx ; en ebx se coloca e total de alumnos que tiene el salon
				mov edx,0 ;en edx se coloca el 0 para dividir

				add sumEdadesSalones_17, eax 
				add sumTotalAlumnosSalones_17, ebx 

				div ebx ; eax/ebx == suma acumuada/ totaal alumnos salon

				
						println "El rpomedio de edades del salon es?
						call writeDec
						call crlf

						mov ebx,0; reinicia el contador de la suma de las edades
						pop ecx
			loop ciclo1
			mov edx, 0
			mov ebx,sumTotalAlumnosSalones_17 
			mov eax,sumEdadesSalones_17
			div ebx
 


		println "El primedio de edad de los salones es?
			
	
		exit	
	
	mainP17U3 ENDP
	
	END mainP17U3
