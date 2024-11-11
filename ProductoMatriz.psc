Algoritmo MultiplicacionMatriz
	
	     Escribir "MATRIZ A"
		imprimir "DIME LA CANTIDAD DE CLUMNAS "
		Leer C
		Imprimir " DIME LA CANTIDAD DE FILAS "
		Leer R
		E=1
		Dimension matrizA(R,C)
		Mientras (E<=R)
			M=1
			Mientras (M<=C)
				Imprimir "ingresa la selda -> " E "," M
				Leer matrizA(E,M)
				M=M+1
			FinMientras
			E=E+1
		FinMientras
		
		Escribir "MATRIZ B"
		imprimir "DIME LA CANTIDAD DE CLUMNAS "
		Leer cb
		Imprimir " DIME LA CANTIDAD DE FILAS "
		Leer rb
		eb=1
		Dimension matrizB(R,C)
		Mientras (eb<=rb)
			mb=1
			Mientras (mb<=cb)
				Imprimir "ingresa la selda -> " eb "," mb
				Leer matrizB(eb,mb)
				mb=mb+1
			FinMientras
			eb=eb+1
		FinMientras
		
		
		
		//Imprimir 
		Escribir "MATRIZ A"
		s=1
		Mientras (s<=r)
			n=1
			Mientras (n<=cb)
				Escribir Sin Saltar matrizA[s,n],""
				n=n+1
			FinMientras
			s=s+1
			Escribir con salto
			
		FinMientras	
		
		Escribir "MATRIZ B"
		sb=1
		Mientras (sb<=rb)
			nb=1
			Mientras (nb<=cb)
				Escribir Sin Saltar matrizB[sb,nb],""
				nb=nb+1
			FinMientras
			sb=sb+1
			Escribir con salto
			
		FinMientras	
		
		Escribir "MATRIZ R"
		H=sb*s
		P=nb*n
		Dimension matrizR(H,P)
		sb=1
		Mientras (sb<=rb)
			nb=1
			Mientras (nb<=cb)
				
				Escribir Sin Saltar matrizR[H,P],""
				nb=nb+1
			FinMientras
			sb=sb+1
			Escribir con salto
			
		FinMientras	
		
FinAlgoritmo