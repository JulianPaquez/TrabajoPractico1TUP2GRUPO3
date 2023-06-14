Algoritmo sin_titulo
	//dada una lista de 5 numeros indicar si existen numeros pares
	definir a, i, band como entero
	band=0
	para i<-1 hasta 5 con paso 1 Hacer
		leer a
		si a mod 2 =0 entonces 
			band=1
		FinSi
	FinPara
	
	si band=1 Entonces
		escribir "hay numeros pares"
	SiNo
		escribir " no hay numeros pares"
	FinSi
	
	
FinAlgoritmo
