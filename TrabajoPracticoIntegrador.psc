Algoritmo TrabajoPracticoIntegrador
	
	Definir opciones,codigo,i,mes,rubro,cantidadTotalvendidames,importeTotalVenta Como Entero;
	Definir n,articulos,codigoIngresado,CantExist,Quincena1,Quincena2,CantVendidaXMes,stockActual como entero;	
	definir PrecioVenta,Totalventa Como Real;
	definir valido,validoRub Como Logico;
	definir descripcion como cadena;
	
	
	
	escribir "Ingresar el numero de articulos";
	leer n;
	Dimension articulos[n];
	Dimension codigoIngresado[n];
	Dimension PrecioVenta[n];
	Dimension descripcion[n];
	Dimension CantExist[n];
	Dimension Quincena1[n];
	Dimension Quincena2[n];
	Dimension cantidadTotalvendidames[n];
	dimension importeTotalVenta[n];
	//Dimension mes[3]; no entra el mes;
	
	
	Para i <- 0 Hasta n-1 Con Paso 1 Hacer
		//        Para j <- 0 Hasta n-1 Con Paso 1 Hacer
		escribir "ingrese el codigo del articulo";
		
		Repetir
			leer codigoIngresado[i];
			valido <- ValidarCodigo(codigoIngresado[i]);
		Hasta Que valido=Verdadero
		
		
		escribir "ingrese el rubro del articulo";
		Escribir "100 - Tornillos y tuercas";
		Escribir "300 - Adhesivos";
		Escribir "450 - Herrajes";
		Escribir "680 - Pinturas";
		Escribir "720 - Electricidad";
		ValidarRubro();
		
		escribir "ingrese la descripcion del articulo";
		leer descripcion[i];
		
		
		escribir "ingrese el precio de venta del articulo";
		leer PrecioVenta[i];
		
		escribir "ingrese la cantidad existente de los articulos";
		leer CantExist[i];
		
		escribir "Cantidad de articulos vendidos en la quincena 1";
		leer Quincena1[i];
		escribir "Cantidad de articulos vendidos en la quincena 2";
		leer Quincena2[i];
		
		cantidadTotalvendidames[i] = Quincena1[i] + Quincena2[i];
		importeTotalVenta[i] = cantidadTotalvendidames[i] * precioVenta[i];
		//        FinPara
    FinPara
	
	
	
	Repetir
		Escribir "Bienvenido a la ferreteria El Tornillo Loco";
		Escribir "Ingrese: ";
		Escribir "1. Mostrar lista de artículos ordenada por descripción";
		Escribir "2. Mostrar lista de artículos ordenada por cantidad vendida";
		Escribir "3. Mostrar stock actual de artículos";
		Escribir "4. Buscar artículo por código";
		Escribir "5. Mostrar estadísticas";
		Escribir "6. Salir";
		leer opciones;
		
		
		Segun opciones Hacer
			1:
				escribir "Lista de articulos ordenada por descripcion: ";
				ordenadaPorDescripcion(descripcion,n,codigoIngresado,PrecioVenta);
			2:
				Escribir "Lista de articulos ordenada por cantidad vendida: ";
				OrdenadaPorCantVendida(CodigoIngresado,n,descripcion , cantidadTotalvendidames ,ImporteTotalventa,precioVenta) ;
				//HACER FUNCION
				//ListaDeArticulosOrdenadaPorCantVendida();
			3:
				Escribir "Stock actual de los articulos";
				//HACER FUNCION
				//StockActual();
			4:
				Escribir "Buscar articulo por codigo.";
				//HACER FUNCION
				//BuscarArticuloPorCodigo();
			5:
				Escribir "Mostrando estadisticas...";
				//HACER FUNCION
				//MostrarEstadisticas();
			6:
				Escribir "Gracias por visitarnos :), saliendo del programa...";
			De Otro Modo:
				Escribir "El numero seleccionado no se encuentra en las opciones. Ingrese nuevamente";
		FinSegun
	Hasta Que opciones=6
	
FinAlgoritmo

Funcion valido <- ValidarCodigo(codigoIngresado)
	definir valido Como Logico;
	
	Si codigoIngresado<99999 & codigoIngresado>=10000 Entonces
		valido=Verdadero;
		
	SiNo
		Escribir "Codigo no admitido. Ingresar nuevamente";
		valido=Falso;
	FinSi
	
FinFuncion

SubProceso ValidarRubro
	definir valido Como Logico;
	definir rubro como entero;
	definir rubroIngresado como entero;
	definir i como entero;
	Dimension rubro[5];
	
	rubro[0]=100;
	rubro[1]=300;
	rubro[2]=450;
	rubro[3]=680;
	rubro[4]=720;
	
	Repetir
		leer rubroIngresado;
		Si rubroIngresado=rubro[0] | rubroIngresado=rubro[1] | rubroIngresado=rubro[2] | rubroIngresado=rubro[3] | rubroIngresado=rubro[4] Entonces
			valido=Verdadero;
		SiNo
			Escribir "Rubro no encontrado. Ingrese nuevamente";
			valido=Falso;
			i=4;
		FinSi
	Hasta Que valido=Verdadero
	
FinSubProceso

SubProceso OrdenarPorDescripcion(descripcion,n)
	definir i Como Entero;
	
	Para i<-0 Hasta n-1 Con Paso 1 Hacer
		Escribir descripcion[i];
	FinPara
FinSubProceso

subproceso  ordenadaPorDescripcion(descripcion,n,codigoIngresado,PrecioVenta)
	definir i,j,pos_menor,aux como entero;
	
	Para i <- 0 Hasta n - 2 Con Paso 1 Hacer
		pos_menor <-i;
				Para j <- i+1 Hasta n - 1 Con Paso 1 Hacer
					Si descripcion[j] > descripcion[pos_menor] Entonces
							// Intercambiar los valores
							aux = descripcion[j];
							descripcion[j] = descripcion[j + 1];
							descripcion[j + 1] = aux;
							
							aux = codigoIngresado[j];
							codigoIngresado[j] = codigoIngresado[j + 1];
							codigoIngresado[j + 1] = aux;
							
							aux = precioVenta[j];
							precioVenta[j] = precioVenta[j + 1];
							precioVenta[j + 1] = aux;
						FinSi
					FinPara
		FinPara
		//		
			Escribir "Productos ordenados:";
			Para i = 0 Hasta n-1 Con Paso 1 Hacer
				Escribir "Código:", codigoIngresado[i];
				Escribir "descripcion: ",descripcion[i];
				Escribir "Precio de Venta:", precioVenta[i];
			FinPara
			
	
FinSubProceso

SubProceso OrdenadaPorCantVendida(CodigoIngresado,n, descripcion , cantidadTotalvendidames ,ImporteTotalventa,precioVenta) 
	definir i,j,pos_mayor,aux como entero;
	definir aux2 como cadena;
	Para i <- 0 Hasta n - 2 Hacer
		pos_mayor <-i;
		Para j <- i+1 Hasta n - 1 Con Paso 1 Hacer
			Si cantidadTotalvendidames[j] > cantidadTotalvendidames[pos_mayor] Entonces
				pos_mayor <- j;
			FinSi
		FinPara
		
			
				// Intercambiar los valores
			  aux <- cantidadTotalvendidames[i];
		      cantidadTotalvendidames[i] <- cantidadTotalvendidames[pos_mayor];
		      cantidadTotalvendidames[pos_mayor] <- aux;
			
		       aux <- codigoIngresado[i];
		       codigoIngresado[i] <- codigoIngresado[pos_mayor];
		       codigoIngresado[pos_mayor] <- aux;
			
		       aux <- importeTotalVenta[i];
		       importeTotalVenta[i] <- importeTotalVenta[pos_mayor];
		       importeTotalVenta[pos_mayor] <- aux;
			
		       aux <- precioVenta[i];
		       precioVenta[i] <- precioVenta[pos_mayor];
		       precioVenta[pos_mayor] <- aux;
			   
			   aux2 <- descripcion[i];
			   descripcion[i] <- descripcion[pos_mayor];
		       descripcion[pos_mayor] <- aux2;
				
			
	FinPara
	//		
	Escribir "Productos ordenados:";
	Para i <- 0 Hasta n-1 con paso 1 Hacer
		Escribir "Código:", codigoIngresado[i];
		escribir " Descripcion :",descripcion[i];
		Escribir "Cantidad Total vendida en el mes:", cantidadTotalvendidames[i];
		Escribir "Precio de Venta:", importeTotalVenta[i];
		
	FinPara
	
	

FinSubProceso


//SubProceso OrdenadaPorCantVendida(CodigoIngresado, n, descripcion, cantidadTotalvendidames, ImporteTotalventa, precioVenta)
//    Definir i, j, pos_mayor, aux como entero
//    Para i <- 0 Hasta n - 2 Hacer
//        pos_mayor <- i
//        Para j <- i + 1 Hasta n - 1 Con Paso 1 Hacer
//            Si cantidadTotalvendidames[j] > cantidadTotalvendidames[pos_mayor] Entonces
//                pos_mayor <- j
//            FinSi
//        FinPara
//		
//        // Intercambiar los valores de los productos
//        aux <- cantidadTotalvendidames[i]
//        cantidadTotalvendidames[i] <- cantidadTotalvendidames[pos_mayor]
//        cantidadTotalvendidames[pos_mayor] <- aux
//		
//        aux <- codigoIngresado[i]
//        codigoIngresado[i] <- codigoIngresado[pos_mayor]
//        codigoIngresado[pos_mayor] <- aux
//		
//        aux <- importeTotalVenta[i]
//        importeTotalVenta[i] <- importeTotalVenta[pos_mayor]
//        importeTotalVenta[pos_mayor] <- aux
//		
//        aux <- precioVenta[i]
//        precioVenta[i] <- precioVenta[pos_mayor]
//        precioVenta[pos_mayor] <- aux
//    FinPara
//	
//    // Mostrar productos ordenados en forma descendente
//    Escribir "Productos ordenados:"
//    Para i <- 0 Hasta n - 1 Con Paso 1 Hacer
//        Escribir "Código:", codigoIngresado[i]
//        Escribir "Descripción:", descripcion[i]
//        Escribir "Cantidad Total vendida en el mes:", cantidadTotalvendidames[i]
//        Escribir "Precio de Venta:", importeTotalVenta[i]
//    FinPara
//FinSubProceso



