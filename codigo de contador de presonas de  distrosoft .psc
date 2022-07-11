Algoritmo sin_titulo
	Definir n1 Como Real
	Definir n2 Como Real
	Definir n3 Como Real
	Definir n4 Como Real
	Definir n5 Como Real
	Definir n6 Como Real
	Definir n7 Como Real
	Definir n8 Como Real
	
	Definir suma Como Real
	Definir resta Como Real
	
	Escribir '|------------------------------------|'
	Escribir '|                                    |'
	Escribir '| Contador de presona de maximo de 4 |'
	Escribir '|                                    |'
	Escribir '|------------------------------------|'
	
	Escribir '                                      '
	Escribir '  Ingresa la cantidad de presonas     '
	Leer n1
	
	Escribir '                                      '
	Escribir '  Ingresa la cantidad de presonas     '
	Leer n2
	
	Escribir '                                      '
	Escribir '  Ingresa la cantidad de presonas     '
	Leer n3
	
	Escribir '                                      '
	Escribir '  Ingresa la cantidad de presonas     '
	Leer n4
	
	suma <- n1+n2+n3+n4
	Escribir 'cantida de presona que acaba de ingresar ',suma
	
	Mientras suma<=3 Hacer
		Escribir '                                      '
		Escribir '  Ingresa la cantidad de presonas     '
		Leer n1
		
		Escribir '                                      '
		Escribir '  Ingresa la cantidad de presonas     '
		Leer n2
		
		Escribir '                                      '
		Escribir '  Ingresa la cantidad de presonas     '
		Leer n3
		
		Escribir '                                      '
		Escribir '  Ingresa la cantidad de presonas     '
		Leer n4
		
		suma <- n1+n2+n3+n4
		Escribir 'cantida de presona que acaba de ingresar ',suma
		
	FinMientras
	
		Si suma<=4 Entonces
			Escribir 'cantida de presona maximas :',suma
			
			Escribir 'presona que estan adentro: ',4
			
				Escribir "cuantas presona salieron"
				Leer n5
				resta <- suma-n5
				Escribir "dentro: "  resta
				
				Escribir "cuantas presona salieron"
				Leer n6
				resta <- suma-n5-n6
				Escribir "dentro: " resta
				
				Escribir "cuantas presona salieron"
				Leer n7
				resta <- suma-n5-n6-n7
				Escribir "dentro: " resta
				
				Escribir "cuantas presona salieron"
				Leer n8
				resta <- suma-n5-n6-n7-n8
				Escribir "dentro :" resta
		
		
		FinSi
FinAlgoritmo
