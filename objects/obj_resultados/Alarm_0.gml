
var actividad =0;
var agonista =0;


var antagonista =0;


//limpiamos las listas

ds_list_clear(coordenadas_6); //borramos la lista con las coordenadas de actividad vs []
ds_list_add(coordenadas_6, [0,0]) // agregamos el punto cero
		
ds_list_clear(coordenadas_7); //borramos la lista con las coordenadas de actividad vs [antagonista]
//ds_list_add(coordenadas_7, [0,0]) // agregamos el punto cero

// trabajamos sobre el agonista

for ( var e =0; e < ds_list_size(listas); e++){

		var array = listas[| e];
		
		var coordenadas_1 = array[1];
		
		if (indice < ds_list_size(coordenadas_1)){
			
				var elementos_lista = coordenadas_1[| indice];
				actividad = elementos_lista[1];
		
		}
		else { actividad= 0;}
		
		var cantidad = array[4];//el array cantidades esta en el indice 4 de listas
		agonista = cantidad[0];// la cantidad de agonista esta en el indice 0 del array cantidades
		
		
		
		 ds_list_add(coordenadas_6, [agonista, actividad])
		
			
	
	}
	
	//ordenar la lista 6
	
	// Convertir la lista a array
var tam = ds_list_size(coordenadas_6);
var datos = array_create(tam);

for (var i = 0; i < tam; i++) {
    datos[i] = coordenadas_6[| i];
}

// Ordenar el array por x (posición 0)
array_sort(datos, function(a, b) {
    return a[0] - b[0];
});

// Vaciar y volver a llenar la lista ordenada
ds_list_clear(coordenadas_6);
for (var i = 0; i < tam; i++) {
    ds_list_add(coordenadas_6, datos[i]);
}
	
	
// Trabajamos con el antagonista	
	
for ( var e =0; e < ds_list_size(listas); e++){

		var array = listas[| e];
		
		var coordenadas_1 = array[1];
		
		if (indice < ds_list_size(coordenadas_1)){
			
				var elementos_lista = coordenadas_1[| indice];
				actividad = elementos_lista[1];
		
		}
		else { actividad= 0;}
		
		var cantidad = array[4]; //el array cantidades esta en el indice 4 de listas
		antagonista = cantidad[1];// la cantidad de antagonista esta en el indice 1 del array cantidades
		
		
		 ds_list_add(coordenadas_7, [antagonista, actividad])
		
			
	
	}
	
	//ordenar la lista 7
	
	// Convertir la lista a array
var tam2 = ds_list_size(coordenadas_7);
var datos2 = array_create(tam2);

for (var i = 0; i < tam2; i++) {
    datos2[i] = coordenadas_7[| i];
}

// Ordenar el array por x (posición 0)
array_sort(datos2, function(a, b) {
    return a[0] - b[0];
});

// Vaciar y volver a llenar la lista ordenada
ds_list_clear(coordenadas_7);
for (var i = 0; i < tam2; i++) {
    ds_list_add(coordenadas_7, datos2[i]);
}	
	
	
	
audio_play_sound(botonClick, 0, 0, 1.0, undefined, 1.0);