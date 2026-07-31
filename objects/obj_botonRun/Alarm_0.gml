event_inherited();




//limpiamos las partidas previas

obj_game.metadato = "";

obj_game.porcentaje_0 = 0;
 obj_game.porcentaje_1 = 0;
 obj_game.porcentaje_2 = 0 ;

 ds_list_clear(obj_game.coordenadas);
 ds_list_clear(obj_game.coordenadas_1);
 ds_list_clear(obj_game.coordenadas_2);
 ds_list_clear(obj_game.coordenadas_3);
 ds_list_clear(obj_game.coordenadas_4);
 ds_list_clear(obj_game.coordenadas_5);
 

if (obj_tbNum_ago_num.text==""){obj_tbNum_ago_num.text="0"};
if (obj_tbNum_ago_afin.text==""){obj_tbNum_ago_afin.text="0"};
if (obj_tbNum_antago_num.text==""){obj_tbNum_antago_num.text="0"};
if (obj_tbNum_antago_afin.text==""){obj_tbNum_antago_afin.text="0"};



//Definimos las propiedades de los agonistas


var agonistaCantidad= real(obj_tbNum_ago_num.text)
	

if(agonistaCantidad<0) { agonistaCantidad=0};
if(agonistaCantidad>obj_game.cantidad_maxima) { agonistaCantidad=obj_game.cantidad_maxima};



var agonistaAfinidad = real(obj_tbNum_ago_afin.text);

if(agonistaAfinidad<0) { agonistaAf=0};
if(agonistaAfinidad>obj_game.afinidad_maxima) { agonistaAfinidad=obj_game.afinidad_maxima};




obj_game.cantidad_agonista = agonistaCantidad;
obj_game.afinidad_agonista = agonistaAfinidad;

// Definimos las propiedades de los antagonistas

var antagonistaCantidad = real(obj_tbNum_antago_num.text);

if(antagonistaCantidad<0) { antagonistaCantidad=0};
if(antagonistaCantidad>obj_game.cantidad_maxima) { antagonistaCantidad=obj_game.cantidad_maxima};



var antagonistaAfinidad = real(obj_tbNum_antago_afin.text);

if(antagonistaAfinidad<0) { antagonistaAf=0};
if(antagonistaAfinidad>obj_game.afinidad_maxima) { antagonistaAfinidad=obj_game.afinidad_maxima};



obj_game.cantidad_antagonista = antagonistaCantidad;
obj_game.afinidad_antagonista = antagonistaAfinidad;

obj_game.gameRun = -1;

room_goto(room_juego);