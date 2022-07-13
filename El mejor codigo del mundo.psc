Algoritmo sin_titulo
	Definir n1,contador Como Entero
	contador=0
	Escribir '|-------------------------------|'
	Escribir '|                               |'
	Escribir '| Presiona 0 para que agregar   |'
	Escribir '|          una presona          |'
	Escribir '|                               |'
	Escribir '|-------------------------------|'
	Escribir '|-------------------------------|'
	Escribir '|                               |'
	Escribir '|    Presiona 2 para que una    |'
	Escribir '|    presona salga del lugar    |'
	Escribir '|                               |'
	Escribir '|-------------------------------|'
	Mientras contador<=9 Hacer
		Leer n1
		Esperar 1 Segundo
		contador <- contador+1
		contador <- contador-n1
		Escribir 'Gente que queda dentro : ',contador
	FinMientras
	Escribir 'ya llego al limite de presonas permitidas :',contador
FinAlgoritmo
