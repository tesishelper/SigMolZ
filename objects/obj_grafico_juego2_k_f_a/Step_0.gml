if (obj_game.gameRun){

var kinasa2 = 0;
var fosfatasa2 = 0;
var kinasa3 = 0;
porcentaje_0 = 0;
porcentaje_1 = 0;
porcentaje_2 = 0;

// Total de instancias del objeto
var total_k = instance_number(obj_kinasa);
var total_k_2 = instance_number(obj_kinasa_2);
var total_f = instance_number(obj_fosfatasa);


// Evitamos división por cero
if (total_k > 0 ) {
    // Contar instancias por estado
    with (obj_kinasa) {if (modo == 2 ) kinasa2 += 1;  }
	//with (obj_fosfatasa) {if (modo == 2) fosfatasa2 += 1;  }
	//with (obj_kinasa_2) {if (modo == 3) kinasa3 += 1;  }
	 	 
    // Calcular porcentajes
    porcentaje_0 = (kinasa2 / total_k) * 150;
  //  porcentaje_2 = (kinasa3 / obj_game.ValorReferencia) * 150;
		  
}

if (total_k_2 > 0 ) {
    // Contar instancias por estado
   // with (obj_kinasa) {if (modo == 2 ) kinasa2 += 1;  }
	//with (obj_fosfatasa) {if (modo == 2) fosfatasa2 += 1;  }
	with (obj_kinasa_2) {if (modo == 3) kinasa3 += 1;  }
	 	 
    // Calcular porcentajes
   // porcentaje_0 = (kinasa2 / total_k) * 150;
    porcentaje_2 = (kinasa3 / total_k_2) * 150;
		  
}

if(total_k ==0) {porcentaje_0 = 0; }

if (total_f>0) {
    // Contar instancias por estado
   	with (obj_fosfatasa) {if (modo == 2) fosfatasa2 += 1;  }
	// Calcular porcentajes
    porcentaje_1 = (fosfatasa2 / total_f) * 150;
   
}

if(total_f ==0) {porcentaje_1 = 0;}

contador += 1;

if (contador>= 60){
	// agregamos a la lista los porecentejes_0
   var puntos = [segundos, porcentaje_0]	;
   ds_list_add(coordenadas,puntos);
   
   // agregamos a la lista los porecentejes_1
   puntos = [segundos, porcentaje_1]	;
   ds_list_add(coordenadas_1,puntos);
   
   // agregamos a la lista los porecentejes_2
   puntos = [segundos, porcentaje_2]	;
   ds_list_add(coordenadas_2,puntos);
         
   
   contador=0;
   segundos +=1;
   
   
   if(ds_list_size(coordenadas)== 180){
	   
	   obj_game.gameRun = false;
   }
   
   //Este codigo ajusta todos los puntos al espacio de la tabla
   
 if(ds_list_size(coordenadas)>60){
				
	for (var i =0; i < ds_list_size(coordenadas);i++){
			var delta2 = 60/ds_list_size(coordenadas);				
			var punto = coordenadas[| i];
				punto[0] = i*delta2;
				coordenadas[| i]= punto;}
				
	for (var i =0; i < ds_list_size(coordenadas_1);i++){
			var delta2 = 60/ds_list_size(coordenadas_1);				
			var punto = coordenadas_1[| i];
				punto[0] = i*delta2;
				coordenadas_1[| i]= punto;}			
			
	for (var i =0; i < ds_list_size(coordenadas_2);i++){
			var delta2 = 60/ds_list_size(coordenadas_2);				
			var punto = coordenadas_2[| i];
				punto[0] = i*delta2;
				coordenadas_2[| i]= punto;}		
			
			}
   
   
   
   
}}

