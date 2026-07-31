event_inherited();

//guardamos las listas con resultados a la lista general

if (ds_list_size(obj_game.listas)<10){ //hasta 10 partidas
	
	// copiamos la lista 0
	var lista0 = ds_list_create();
	for (var i =0; i < ds_list_size(obj_game.coordenadas); i++){
	   var elemento = obj_game.coordenadas[| i];
       ds_list_add(lista0, elemento);}
	   
	//copiamos la lista 1
	var lista1 = ds_list_create();
	for (var i =0; i < ds_list_size(obj_game.coordenadas_1); i++){
	   var elemento = obj_game.coordenadas_1[| i];
       ds_list_add(lista1, elemento);}
	   
	//copiamos la lista 2
	var lista2 = ds_list_create();
	for (var i=0; i < ds_list_size(obj_game.coordenadas_2); i++){
	   var elemento = obj_game.coordenadas_2[| i];
       ds_list_add(lista2, elemento);}   
	   
	//agregamos datos de la cantidad de agonista y antagonista de la partida
	
	var modo = "modo";
	
	if(obj_game.dinamic_model) {modo = "\n\nDynamic Model";}
	if(obj_game.static_model) {modo = "\n\nStatic Model";}
	if(!obj_game.dinamic_model && !obj_game.static_model) {modo = "\n\nStatic & Dinamic Model" }
	
	var cantidades = [obj_game.cantidad_agonista, obj_game.cantidad_antagonista];
	var metadato = "Agonis#: "+ string(obj_game.cantidad_agonista)+ "\nAgonis afin: " + string(obj_game.afinidad_agonista);
	    metadato = metadato + "\nAntagonis#: " + string(obj_game.cantidad_antagonista)+ "\nAntagonis afin: " + string(obj_game.afinidad_antagonista);
		metadato = metadato + modo;
	//agregamos la partida a la lista de listas incluido el metadato y las cantidades
	var elementos = [lista0, lista1,lista2, metadato,cantidades];
	ds_list_add(obj_game.listas, elementos)
	
}

else {
	
	//eliminamos el elemento más viejo
	ds_list_delete(obj_game.listas, 0); // Elimina el primer elemento (índice 0)
	
	//agregamos uno nuevo a la lista
	
	// copiamos la lista 0
	var lista0 = ds_list_create();
	for (var i = 0; i < ds_list_size(obj_game.coordenadas); i++){
	   var elemento = obj_game.coordenadas[| i];
       ds_list_add(lista0, elemento);}
	   
	//copiamos la lista 1
	var lista1 = ds_list_create();
	for (var i =0 ; i < ds_list_size(obj_game.coordenadas_1); i++){
	   var elemento = obj_game.coordenadas_1[| i];
       ds_list_add(lista1, elemento);}
	   
	//copiamos la lista 2
	var lista2 = ds_list_create();
	for (var i =0 ; i < ds_list_size(obj_game.coordenadas_2); i++){
	   var elemento = obj_game.coordenadas_2[| i];
       ds_list_add(lista2, elemento);}   
	
//agregamos datos de la cantidad de agonista y antagonista de la partida
	
	var cantidades = [obj_game.cantidad_agonista, obj_game.cantidad_antagonista];
	var metadato = "Agonis#: "+ string(obj_game.cantidad_agonista)+ "\nAgonis afin: " + string(obj_game.afinidad_agonista);
	    metadato = metadato + "\nAntagonis#: " + string(obj_game.cantidad_antagonista)+ "\nAntagonis afin: " + string(obj_game.afinidad_antagonista);
		
	//agregamos la partida a la lista de listas incluido el metadato y las cantidades
	var elementos = [lista0, lista1,lista2, metadato,cantidades];
	ds_list_add(obj_game.listas, elementos);
}


room_goto(room_resultados);