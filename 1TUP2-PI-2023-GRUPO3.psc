Algoritmo TrabajoPracticoIntegrador
	
	Definir opciones,codigo,i,mes,rubro,cantidadTotalvendidames,importeTotalVenta,contVentasMes,stock,codigoComp,sumaQ1Torn,sumaQ2Torn,sumaQ1Adhe,sumaQ2Adhe,sumaQ1Herrajes,sumaQ2Herrajes,sumaQ1Pintura,sumaQ2Pintura,sumaQ1Elec,sumaQ2Elec Como Entero;
	Definir n,articulos,codigoIngresado,CantExist,Quincena1,Quincena2,CantVendidaXMes,contTorn,contAdhe,contHerrajes,contPintura,contElec,TotalQTorn,TotalQAdhe,TotalQHerrajes,TotalQPintura,TotalQElec,rubroIngresado como entero;	
	definir PrecioVenta,Totalventa Como Real;
	definir valido,validoRub,encontrado Como Logico;
	definir descripcion como cadena;
	
	contVentasMes =0;
	
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
	dimension stock[n];
	dimension rubro[5];
	rubro[0]=100;
	rubro[1]=300;
	rubro[2]=450;
	rubro[3]=680;
	rubro[4]=720;
	
	contTorn = 0;
	sumaQ1Torn = 0;
	sumaQ2Torn = 0;
	TotalQTorn = 0;
	
	contAdhe = 0;
	sumaQ1Adhe = 0;
	sumaQ2Adhe = 0;
	TotalQAdhe = 0;
	
	contHerrajes = 0;
	sumaQ1Herrajes = 0;
	sumaQ2Herrajes = 0;
	TotalQHerrajes = 0;
	
	contPintura =0;
	sumaQ1Pintura =0;
	sumaQ2Pintura =0;
	TotalQPintura = 0;
	
	contElec = 0;
	sumaQ1Elec = 0;
	sumaQ2Elec= 0;
	TotalQElec = 0;
	
	
	
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
		ValidarRubro(rubro);
		
		
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
		
		escribir "Por favor ingrese nuevamente el rubro";
		leer rubroIngresado;
		Si rubroIngresado = rubro[0] Entonces
			contTorn = contTorn + 1;
			sumaQ1Torn = sumaQ1Torn + Quincena1[i];
			sumaQ2Torn = sumaQ2Torn + Quincena2[i];
			TotalQTorn = Quincena1[i] + Quincena2[i];
			
			
		SiNo
			si rubroIngresado = rubro[1] Entonces
				contAdhe = contAdhe +1;
				sumaQ1Adhe = sumaQ1Adhe + Quincena1[i];
				sumaQ2Torn = sumaQ2Adhe + Quincena2[i];
				TotalQAdhe = Quincena1[i] + Quincena2[i];
			SiNo
				si rubroIngresado = rubro[2] entonces 
					contHerrajes = contHerrajes + 1;
					sumaQ1Herrajes = sumaQ1Herrajes + Quincena1[i];
					sumaQ2Herrajes = sumaQ2Herrajes + Quincena2[i];
					TotalQHerrajes = Quincena1[i] + Quincena2[i];
				sino 
					si rubroIngresado = rubro[3] Entonces
						contPintura = contPintura + 1;
						sumaQ1Pintura = sumaQ1Pintura + Quincena1[i];
						sumaQ2Pintura = sumaQ2Pintura + Quincena2[i];
						TotalQPintura = Quincena1[i] + Quincena2[i];
					SiNo
						contElec = contElec + 1;
						sumaQ1Elec = sumaQ1Elec + Quincena1[i];
						sumaQ2Elec= sumaQ2Elec + Quincena2[i];
						TotalQElec = Quincena1[i] + Quincena2[i];
					FinSi
				FinSi
			FinSi
		FinSi
		
		
		cantidadTotalvendidames[i] = Quincena1[i] + Quincena2[i];
		importeTotalVenta[i] = cantidadTotalvendidames[i] * precioVenta[i];
		contVentasMes = contVentasMes + importeTotalVenta[i];
		stock[i] = CantExist[i] - (Quincena1[i] + Quincena2[i]);
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
				OrdenadaPorCantVendida(CodigoIngresado,n,descripcion , cantidadTotalvendidames ,ImporteTotalventa,precioVenta,contVentasMes) ;
				
			3:
				Escribir "Stock actual de los articulos";
				StockActual(codigoIngresado,n,descripcion, stock);
				
			4:
				Escribir "Buscar articulo por codigo.";
					leer codigoComp;
					encontrado <- BuscarArticuloPorCodigo(CodigoIngresado,codigoComp,n,descripcion,Quincena1,Quincena2,stock,importeTotalVenta);
					       
			5:
				Escribir "Mostrando estadisticas...";
				MostrarEstadisticasA(rubro,contTorn,contAdhe,contHerrajes,contPintura,contElec,n);
				mostrarestadisticasB(sumaQ1Torn,sumaQ2Torn,sumaQ1Adhe,sumaQ2Adhe,sumaQ1Herrajes,sumaQ2Herrajes,sumaQ1Pintura,sumaQ2Pintura,sumaQ1Elec,sumaQ2Elec,TotalQTorn,TotalQAdhe,TotalQHerrajes,TotalQPintura,TotalQElec);
				MostrarEstadisticasC1(sumaQ1Torn,sumaQ1Adhe,sumaQ1Herrajes,sumaQ1Pintura,sumaQ1Elec);
				MostrarEstadisticasC2(sumaQ2Torn,sumaQ2Adhe,sumaQ2Herrajes,sumaQ2Pintura,sumaQ2Elec);
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

SubProceso ValidarRubro(rubro)
	definir valido Como Logico;
	definir contTorn,contAdhe,contHerrajes,contPintura,contElec como entero;
	definir rubroIngresado como entero;
	definir i como entero;
	
	
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



subproceso  ordenadaPorDescripcion(descripcion,n,codigoIngresado,PrecioVenta)
	definir i,j,pos_menor ,aux como entero;
	definir aux1 como cadena;
	
	Para i <- 0 Hasta n - 2 Con Paso 1 Hacer
		pos_menor <-i;
				Para j <- i+1 Hasta n - 2 Con Paso 1 Hacer
					Si descripcion[j] > descripcion[pos_menor] Entonces
							// Intercambiar los valores
							aux1 = descripcion[j];
							descripcion[j] = descripcion[j + 1];
							descripcion[j + 1] = aux1;
							
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

SubProceso OrdenadaPorCantVendida(CodigoIngresado,n, descripcion , cantidadTotalvendidames ,ImporteTotalventa,precioVenta,contVentasMes) 
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
		
		escribir " El monto total de ventas realizada en el mes es: ", contVentasMes;
		
	FinPara
	
	

FinSubProceso

SubProceso StockActual ( codigoIngresado,n, descripcion, stock)
	definir i como entero;
	Para i <- 0 Hasta n-1 Con Paso 1 Hacer
		Escribir "Código:", codigoIngresado[i];
		escribir " Descripcion :",descripcion[i];
		escribir " Stock actual: ", stock[i];
	FinPara
	
FinSubProceso

SubProceso encontrado <- BuscarArticuloPorCodigo(CodigoIngresado,codigoComp,n,descripcion,Quincena1,Quincena2,stock,importeTotalVenta)
    definir i  Como Entero;
	definir encontrado como logico;
	
	encontrado = falso;
    Para i<-0 Hasta n-1 Con Paso 1 Hacer
        Si codigoComp=CodigoIngresado[i] Entonces
			encontrado = verdadero;
            escribir " Descripcion :",descripcion[i];
            escribir " Stock actual: ", stock[i];
            escribir "Cantidad vendida en la quincena 1:  ", Quincena1[i];
            escribir "Cantidad vendida en la quincena 1:  ", Quincena2[i];
            
			
        SiNo
			//si codigoComp <> CodigoIngresado[i] entonces
			encontrado = falso;
				escribir "No existe artículo con ese código";
				
			//FinSi
			
		    
        FinSi
    FinPara
FinFuncion


SubProceso MostrarEstadisticasA(rubro,contTorn,contAdhe,contHerrajes,contPintura,contElec,n)
	
	definir porcentajeTorn,porcentajeAdhe,porcentajeHerrajes,porcentajePintura,porcentajeElec Como Real;
	
	porcentajeTorn = (contTorn *100)/n;
	porcentajeAdhe=(contAdhe*100)/n;
	porcentajeHerrajes=(contHerrajes*100)/n;
	porcentajePintura= (contPintura*100)/n;
	porcentajeElec = (contElec*100)/n;
	
	escribir "el porcentaje del rubro tornillos es ",porcentajeTorn;
	escribir "el porcentaje del rubro adhesivos es ",porcentajeAdhe;
	escribir "el porcentaje del rubro herrajes es ",porcentajeHerrajes;
	escribir "el porcentaje del rubro pintura es ",porcentajePintura;
	escribir "el porcentaje del rubro electricidad es ",porcentajeElec;
	
FinSubProceso



	// recomendacion 3 subprocesos
	//Una funcion mas que es mostrar estadisticas
	Subproceso mostrarestadisticasB(sumaQ1Torn,sumaQ2Torn,sumaQ1Adhe,sumaQ2Adhe,sumaQ1Herrajes,sumaQ2Herrajes,sumaQ1Pintura,sumaQ2Pintura,sumaQ1Elec,sumaQ2Elec,TotalQTorn,TotalQAdhe,TotalQHerrajes,TotalQPintura,TotalQElec)
		
		definir porcentajeQ1Torn,porcentajeQ2Torn,porcentajeQ1Adhe,porcentajeQ2Adhe,porcentajeQ1Herrajes,porcentajeQ2Herrajes,porcentajeQ1pintura,porcentajeQ2pintura,porcentajeQ1Elec,porcentajeQ2Elec como real;
		
		porcentajeQ1Torn = (sumaQ1Torn * 100)/TotalQTorn;
		
		porcentajeQ2Torn = (sumaQ2Torn * 100)/TotalQTorn;
		
		porcentajeQ1Adhe = (sumaQ1Adhe * 100) / TotalQAdhe;
		
		porcentajeQ2Adhe =  (sumaQ2Adhe * 100) / TotalQAdhe;
		
		porcentajeQ1Herrajes = (sumaQ1Herrajes *100) / TotalQHerrajes;
		
		porcentajeQ2Herrajes = (sumaQ2Herrajes *100) / TotalQHerrajes;
		
		porcentajeQ1pintura = (sumaQ1Pintura * 100 ) / TotalQPintura;
		
		porcentajeQ2pintura = (sumaQ2Pintura * 100 ) / TotalQPintura;
		
		porcentajeQ1Elec = (sumaQ1Elec * 100 ) / TotalQElec;
		
		porcentajeQ2Elec = (sumaQ2Elec * 100 ) / TotalQElec;
		
		escribir "Porcentaje de venta de tornillos sobre la quincena 1 es : ",porcentajeQ1Torn;
		escribir "Porcentaje de venta de tornillos sobre la quincena 2  es : ",porcentajeQ1Torn;
		escribir "Porcentaje de venta de adhesivos sobre la quincena 1 es : ",porcentajeQ1Adhe;
		escribir "Porcentaje de venta de adhesivos sobre la quincena 2  es : ",porcentajeQ2Adhe ;
		escribir "Porcentaje de venta de herrajes sobre la quincena 1 es : ", porcentajeQ1Herrajes;
		escribir "Porcentaje de venta de herrajes sobre la quincena 2 es : ", porcentajeQ2Herrajes;
		escribir "Porcentaje de venta de pintura sobre la quincena 1 es : ", porcentajeQ1pintura;
		escribir "Porcentaje de venta de pintura sobre la quincena 2 es : ", porcentajeQ2pintura;
		escribir "Porcentaje de venta de electricidad sobre la quincena 1 es : ", porcentajeQ1Elec;
		escribir "Porcentaje de venta de electricidad sobre la quincena 2 es : ", porcentajeQ2Elec;
		
		
		
		
FinSubProceso
	//definir porcentajeTQ1orn,porcentajeTQ2orn...
	
//porcentajeTQ1orn = (sumaQ1Torn * 100)/totalQtorn...
//porcentajeTQ2orn = (sumaQ2Torn * 100)/totalQtorn...


SubProceso MostrarEstadisticasC1(sumaQ1Torn,sumaQ1Adhe,sumaQ1Herrajes,sumaQ1Pintura,sumaQ1Elec)
	definir may ,Val como entero;
	may = -1;
	Si sumaQ1Torn > may Entonces
		may = sumaQ1Torn;
		Val = 1;
	SiNo
		
		Si  sumaQ1Adhe > may Entonces
			may = sumaQ1Adhe;
			Val = 2;
		SiNo
			
		  Si sumaQ1Herrajes > may Entonces
			  may = sumaQ1Torn;
			  Val = 3;
			SiNo
				
				Si sumaQ1Pintura> may Entonces
					may =  sumaQ1Pintura;
					Val = 4;
				SiNo
					Si sumaQ1Elec > may Entonces
						may = sumaQ1Elec;
						Val = 5;
					FinSi
				
				FinSi
			FinSi
		FinSi
	FinSi
	
	Segun val Hacer
		1:
			escribir "El rubro con mayor importe total en la quincena 1 es 100- tornillos y tuercas.";
		2:
			escribir "El rubro con mayor importe total en la quincena 1  es 300- adhesivos.";
		3:
			escribir "El rubro con mayor importe total en la quincena 1  es 450- Herrajes.";
		4:
			escribir "El rubro con mayor importe total en la quincena 1  es 680- Pintura.";
		5:
			escribir "El rubro con mayor importe total en la quincena 1  es 720- Electricidad.";
		De Otro Modo:
			Escribir "Opcion incorrecta";
	FinSegun


FinSubProceso


SubProceso MostrarEstadisticasC2(sumaQ2Torn,sumaQ2Adhe,sumaQ2Herrajes,sumaQ2Pintura,sumaQ2Elec)
	definir may ,Val como entero;
	may = -1;
	Si sumaQ2Torn > may Entonces
		may = sumaQ2Torn;
		Val = 1;
		
		Si  sumaQ2Adhe > may Entonces
			may = sumaQ2Adhe;
			Val = 2;
			
			Si sumaQ2Herrajes > may Entonces
				may = sumaQ1Torn;
				Val = 3;
				
				Si sumaQ2Pintura> may Entonces
					may =  sumaQ2Pintura;
					Val = 4;
					Si sumaQ2Elec > may Entonces
						may = sumaQ2Elec;
						Val = 5;
					FinSi
					
				FinSi
			FinSi
		FinSi
	FinSi
	
	Segun val Hacer
		1:
			escribir "El rubro con mayor importe total en la quincena 2 es 100- tornillos y tuercas.";
		2:
			escribir "El rubro con mayor importe total en la quincena 2  es 300- adhesivos.Con el importe .";
		3:
			escribir "El rubro con mayor importe total en la quincena 2  es 450- Herrajes.Con el importe .";
		4:
			escribir "El rubro con mayor importe total en la quincena 2  es 680- Pintura.Con el importe ";
		5:
			escribir "El rubro con mayor importe total en la quincena 2  es 720- Electricidad.Con el importe ";
		De Otro Modo:
			Escribir "Opcion incorrecta";
	FinSegun
	
	
FinSubProceso

	
	//Si sumaQ1Torn > sumaQ1Adhe Entonces
	//acciones_por_verdaderoSiNo
		//si...
	//FinSi
	
	//subprocesoC2(sumaQ2Torn,sumaQ2Adhe...)
    //Si sumaQ1Torn > sumaQ1Adhe Entonces
	//acciones_por_verdaderoSiNo
	//si...
	//FinSi



//SubProceso MostrarEstadisticas(n, codigoIngresado, descripcion, cantidadTotalvendidames, importeTotalVenta)
//	definir i,totalrubro, totalRubroQ1, totalRubroQ2,rubro como entero;
//	definir porcentajeRubro,porcentajeQuincenaQ1,porcentajeQuincenaQ2 como real;
//	dimension totalrubro[5];
//	Dimension porcentajeRubro[5];
//	Dimension totalRubroQ1[5];
//    Dimension totalRubroQ2[5];
//	Dimension porcentajeQuincenaQ1[5];
//    Dimension porcentajeQuincenaQ2[5];
//	Para i <-0 Hasta n-1 Con Paso 1 Hacer
//		rubro = codigoIngresado[i] / 1000; // Obtener los 3 primeros dígitos del código
//		
//		totalrubro[i] = totalrubro[i] + cantidadTotalvendidames[i];
//	FinPara
//	
//	Para i <-0 Hasta 4 Con Paso 1 Hacer
//		porcentajeRubro[i] = (totalRubro[i] / contVentasMes) *100;
//		escribir "Porcentaje de artículos vendidos en el rubro", i * 100, "-", (i + 1) * 100, ": ", porcentajeRubro[i], "%";
//	FinPara
//	
//	Para i <- 0 Hasta n - 1 Con Paso 1 Hacer
//		rubro = codigoIngresado[i] / 1000; // Obtener los 3 primeros dígitos del código
//				
//		Si i < n/2 entonces
//	     totalRubroQ1[rubro] <- totalRubroQ1[rubro] + cantidadTotalvendidames[i];
//		SiNo
//		totalRubroQ2[rubro] <- totalRubroQ2[rubro] + cantidadTotalvendidames[i];
//		FinSi
//	FinPara
//	
//	Para i <- 0 Hasta 4 Con Paso 1 Hacer
//	   porcentajeQuincenaQ1[i] <- (totalRubroQ1[i] / totalVentas) * 100;
//	   porcentajeQuincenaQ2[i] <- (totalRubroQ2[i] / totalVentas) * 100;
//	    escribir "Porcentaje de venta de la quincena 1 en el rubro", i * 100, "-", (i + 1) * 100, ": ", porcentajeQuincenaQ1[i], "%";
//		escribir "Porcentaje de venta de la quincena 2 en el rubro", i * 100, "-", (i + 1) * 100, ": ", porcentajeQuincenaQ2[i], "%";
//	FinPara
//FinSubProceso












//SubProceso MostrarEstadisticas(n, codigoIngresado, descripcion, cantidadTotalvendidames, importeTotalVenta)
//   definir i, rubro, totalVentas, totalRubro, rubroMaxVentasQ1, rubroMaxVentasQ2 como entero;
//   definir porcentajeRubro, porcentajeQuincenaQ1, porcentajeQuincenaQ2 como real;
//	
//   escribir "Mostrando estadísticas...";
//	
// Calcular porcentaje de la cantidad de artículos vendidos por rubro
//    Dimension totalRubro[5];
//   Dimension porcentajeRubro[5];
//
//   Para i <- 0 Hasta n - 1 Con Paso 1 Hacer
//        rubro <- codigoIngresado[i] / 1000; // Obtener los 3 primeros dígitos del código
//		
//        totalRubro[rubro] <- totalRubro[rubro] + cantidadTotalvendidames[i];
//    FinPara
//	
//    totalVentas <- sumarElementosArray(cantidadTotalvendidames, n);
//	Para i <- 0 Hasta 4 Con Paso 1 Hacer
//       porcentajeRubro[i] <- (totalRubro[i] / totalVentas) * 100;
//        escribir "Porcentaje de artículos vendidos en el rubro", i * 100, "-", (i + 1) * 100, ": ", porcentajeRubro[i], "%";
//    FinPara
//	
//    // Calcular porcentaje de venta de cada quincena por rubro sobre el total del mes
//    Dimension totalRubroQ1[5];
//   Dimension totalRubroQ2[5];
//   Dimension porcentajeQuincenaQ1[5];
//   Dimension porcentajeQuincenaQ2[5];
//	
//   Para i <- 0 Hasta n - 1 Con Paso 1 Hacer
//       rubro <- codigoIngresado[i] / 1000; // Obtener los 3 primeros dígitos del código
//		
//        Si i < n/2 entonces
//            totalRubroQ1[rubro] <- totalRubroQ1[rubro] + cantidadTotalvendidames[i];
//        SiNo
//            totalRubroQ2[rubro] <- totalRubroQ2[rubro] + cantidadTotalvendidames[i];
//        FinSi
//    FinPara
//	
//    Para i <- 0 Hasta 4 Con Paso 1 Hacer
//       porcentajeQuincenaQ1[i] <- (totalRubroQ1[i] / totalVentas) * 100;
//        porcentajeQuincenaQ2[i] <- (totalRubroQ2[i] / totalVentas) * 100;
//        escribir "Porcentaje de venta de la quincena 1 en el rubro", i * 100, "-", (i + 1) * 100, ": ", porcentajeQuincenaQ1[i], "%";
//       escribir "Porcentaje de venta de la quincena 2 en el rubro", i * 100, "-", (i + 1) * 100, ": ", porcentajeQuincenaQ2[i], "%";
//    FinPara
//
//   // Calcular rubro con el mayor importe total de ventas en cada quincena
//    rubroMaxVentasQ1 <- obtenerRubroMaxVentas(totalRubroQ1);
//    rubroMaxVentasQ2 <- obtenerRubroMaxVentas(totalRubroQ2);
//	
//    escribir "Rubro con mayor importe total de ventas en la quincena 1: ", rubroMaxVentasQ1;
//    escribir "Rubro con mayor importe total de ventas en la quincena 2: ", rubroMaxVentasQ2;
//	
//FinSubProceso








