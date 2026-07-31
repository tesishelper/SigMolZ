if (obj_game.gameRun){

var estado_0 = 0;
var estado_1 = 0;
var estado_2 = 0;
porcentaje_0 = 0;
porcentaje_1 = 0;
porcentaje_2 = 0;

// Total de instancias del objeto
var total = instance_number(obj_receptor);

// Evitamos división por cero
if (total > 0) {
    // Contar instancias por estado
    with (obj_receptor) {if (estado == 0) estado_0 += 1;  }
	with (obj_receptor) {if (estado == 1) estado_1 += 1;  }
	with (obj_receptor) {if (estado == 2) estado_2 += 1;  }
	 
	 
    // Calcular porcentajes
    porcentaje_0 = (estado_0 / total) * 150;
    porcentaje_1 = (estado_1 / total) * 150;
    porcentaje_2 = (estado_2 / total) * 150;
	
	  
}

/*contador += 1;

if (contador>= 60){
	// agregamos a la lista los porecentejes_0
   var puntos = [x_pos, y_pos-porcentaje_0]	;
   ds_list_add(coordenadas,puntos);
   
   // agregamos a la lista los porecentejes_1
   puntos = [x_pos, y_pos-porcentaje_1]	;
   ds_list_add(coordenadas_1,puntos);
   
   // agregamos a la lista los porecentejes_2
   puntos = [x_pos, y_pos-porcentaje_2]	;
   ds_list_add(coordenadas_2,puntos);
         
   x_pos += 10;
   contador=0;
   
   */
   //Este codigo ajusta todos los puntos al espacio de la tabla
 
 if(ds_list_size(coordenadas)>60){
				
	for (var i =0; i < ds_list_size(coordenadas);i++){
			var delta2 = 350/ds_list_size(coordenadas);				
			var punto = coordenadas[| i];
				punto[0] = i*delta2+ x_0;
				coordenadas[| i]= punto;}
				
	for (var i =0; i < ds_list_size(coordenadas_1);i++){
			var delta2 = 350/ds_list_size(coordenadas_1);				
			var punto = coordenadas_1[| i];
				punto[0] = i*delta2+ x_0;
				coordenadas_1[| i]= punto;}			
			
	for (var i =0; i < ds_list_size(coordenadas_2);i++){
			var delta2 = 350/ds_list_size(coordenadas_2);				
			var punto = coordenadas_2[| i];
				punto[0] = i*delta2+ x_0;
				coordenadas_2[| i]= punto;}		
			
			}
   
   
   
   
}
