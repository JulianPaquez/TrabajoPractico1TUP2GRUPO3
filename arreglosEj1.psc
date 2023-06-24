Proceso arreglosEj1
//	Escribir un algoritmo que cree un arreglo de dimensión 7,
//	asignarle un valor numérico cualquiera a cada posición y escribirlos en pantalla.

	definir num,arreglo,i Como Entero;
	Dimension arreglo[7];
	
	escribir "Ingresar los valores del arreglo";
	
	Para i<-1 Hasta 7 Con Paso 1 Hacer
		leer arreglo[i];
	FinPara
	
	Para i<-1 Hasta 7 Con Paso 1 Hacer
		escribir "Posicion: ", i, " Numero: ", arreglo[i];
	FinPara
FinProceso
