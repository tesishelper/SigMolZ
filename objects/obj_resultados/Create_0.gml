porcentaje_0 = obj_game.porcentaje_0;
porcentaje_1 = obj_game.porcentaje_1;
porcentaje_2 = obj_game.porcentaje_2;

listas = obj_game.listas;


coordenadas_6 = obj_game.coordenadas_6;
coordenadas_7 = obj_game.coordenadas_7;

checkbox_listas = ds_list_create();

posX = 0;

dibujar_linea = false;

for (var i=0; i< ds_list_size(listas); i++){
		
var instancia = instance_create_layer( x + posX , y - 50, "mensajes", obj_checkbox_generico);
instancia.chequeado = true;
instancia.index = i;
instancia.image_xscale = 0.5;
instancia.image_yscale = 0.5;

if (i == ds_list_size(listas)-1){ instancia.chequeado = true;}
else {instancia.chequeado = false;}

var elemento= listas[| i];

instancia.metadato = elemento[3];

ds_list_add(checkbox_listas,instancia);
	
	posX+=60;
}


//coordenadas = obj_game.coordenadas;
//coordenadas_1 = obj_game.coordenadas_1;
//coordenadas_2 = obj_game.coordenadas_2;

contador =60;
x_0 = x + 35;
y_120 = y + 32;
y_0 = y +  400;
x_pos = x+50;
y_pos = y + 32;

//estos valores son para ajustar la pocicion de los puntos
contador =60;
segundos =0;
indice = 0; //indice de para extraer informacion de las listas

delta_x = 10;
escala_x = 10;
delta_y = 500;
escala_y = 2.75;
