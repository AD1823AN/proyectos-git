Algoritmo FactorialdeUnNumero
	Definir n,x,factorial,suma Como Entero
	Escribir  " Ingresa los numeros"
	Leer n
	suma=0
	Mientras n>=0 Hacer
		x=1
		factorial=1
		Mientras x<=n Hacer
			factorial=factorial*x
			x=x+1
		FinMientras
		suma=suma+factorial
		Escribir " Factorial de ",n,"----",factorial
		n=n-1
	Fin Mientras
	
FinAlgoritmo
