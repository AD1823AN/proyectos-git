Algoritmo SerieFibanaci
	Definir _numero,a,b,tmp Como Entero
	escribir "serie de fibanaci"
	Escribir "Ingrese los numeros de la serie fibanaci:"
	leer _numero
	a=0
	b=1
	Para i<-1  Hasta _numero   Hacer
		Escribir i "-" a
		tmp=a+b
		a=b
		b=tmp
	Fin Para
FinAlgoritmo
