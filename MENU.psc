Algoritmo MenuPrincipal
	imprimir"menu primcipal"
	imprimir"1.- FACTORIAL DE X NUMERO"
	imprimir"2.- FUNCION Z^2=X^2+Y^2"
	imprimir"3.- ORDENA 3 NUMEROS DE MAYOR A MENOR"
	imprimir "4.-SERIE FIBANACI DE X NUMERO"
	imprimir "ELIJA UNA OPCION"
	leer Z
	Segun z hacer
	1:
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
		2:
			escribir "favor ingrese el numero 1:"
			leer numero1
			escribir "favor de inggresar el numero2:"
			leer numero2
			escribir "ingrese numero 3:"
			leer numero3
			Si numero1 <= numero2 y numero1 <= numero3 Entonces
				menor <- numero1
				si numero2 <= numero3 Entonces
					medio <- numero2
					mayor <- numero3
				SiNo
					medio <- numero3
					mayor <- numero2
					
				FinSi
			SiNo 
				si numero2 <= numero1 y numero2 <= numero3 Entonces
					menor <- numero2
					si numero1 <= numero3 Entonces
						medio <- numero1
						mayor <- numero3
					SiNo
						medio <- numero3
						mayor <- numero1
					FinSi
				SiNo
					menor <- numero3
					si numero1 <= numero2 Entonces 
						medio <- numero1
						mayor<- numero2
					SiNo
						medio <- numero2
						mayor <- numero1
					FinSi
				FinSi
			Fin Si
			Escribir  mayor," " , medio, " ", menor
		3:
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
	FinSegun
FinAlgoritmo
