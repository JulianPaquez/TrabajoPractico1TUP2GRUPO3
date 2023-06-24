Proceso TrabajoPractico
		Definir n,articulos,codigo,codigoIngresado ,CantExist,Quincena1,Quincena2,CantVendidaXMes,stockActual como entero;
		definir descripcion como cadena;
		definir PrecioVenta,Totalventa Como Real;
		
		
		escribir "Ingresar el numero de articulos";
		leer n;
		Dimension articulos[n];
		dimension codigo[5];
		
		
		
		
		Para i <- 1 Hasta n-1 Con Paso 1 Hacer
			Para j <-0 Hasta n-1 Con Paso 1 Hacer
				escribir "ingrese el codigo del articulo";
				leer codigo[i,j];
				
				escribir "ingrese la descripcion del articulo";
				leer descripcion;
				
				escribir "ingrese el precio de venta del articulo";
				leer PrecioVenta;
				
				escribir "ingrese la cantidad existente de los articulos";
				leer CantExist;
				
				escribir "ingrese la cantidad de articulos vendidos por quincena";
				leer Quincena1;
				leer Quincena2;
			FinPara
			
		FinPara
		
FinProceso

Funcion valido <- ValidarCodigo( codigo )
	definir valido Como Logico;
	definir i como entero;
	
	Para i <- 1 Hasta 5 Con Paso 1 Hacer
		Si codigo[3,i] = codigoIngresado Entonces
			acciones_por_verdadero
		SiNo
			acciones_por_falso
		FinSi
	FinPara
	
FinFuncion

