Algoritmo ordenarNumeros
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
	
FinAlgoritmo
