event_inherited();





//limpiamos las partidas previas

obj_game.metadato = "";
dinamic_model = false;
static_model = true;

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
//if (obj_tbNum_antago_num.text==""){obj_tbNum_antago_num.text="0"};
//if (obj_tbNum_antago_afin.text==""){obj_tbNum_antago_afin.text="0"};



//Definimos las propiedades de los agonistas


var agonistaCantidad= real(obj_tbNum_ago_num.text)
	

if(agonistaCantidad<0) { agonistaCantidad=0};
if(agonistaCantidad>obj_game.cantidad_maxima) { agonistaCantidad=obj_game.cantidad_maxima};

var agonistaAfinidad = real(obj_tbNum_ago_afin.text);

if(agonistaAfinidad<0) { agonistaAfinidad=0};
if(agonistaAfinidad>obj_game.afinidad_maxima) { agonistaAfinidad=obj_game.afinidad_maxima};

obj_game.cantidad_agonista = agonistaCantidad;
obj_game.afinidad_agonista = agonistaAfinidad;

//Definimos las propiedades de las kinasas


var kinasaCantidad= real(obj_tbNum_kinasa_num.text)
	

if(agonistaCantidad<0) { agonistaCantidad=0};
if(agonistaCantidad>obj_game.cantidad_maxima) { agonistaCantidad=obj_game.cantidad_maxima};


//Definimos las propiedades de las fosfatasas

var fosfatasaCantidad = real(obj_tbNum_fosfatasa_num.text)

if(fosfatasaCantidad<0) { fosfatasaCantidad=0};
if(fosfatasaCantidad>obj_game.cantidad_maxima) { fosfatasaCantidad=obj_game.cantidad_maxima};

obj_game.cantidad_kinasa = kinasaCantidad;
obj_game.cantidad_fosfatasa = fosfatasaCantidad;

// Definimos las propiedades de los antagonistas
/*
var antagonistaCantidad = real(obj_tbNum_antago_num.text);

if(antagonistaCantidad<0) { antagonistaCantidad=0};
if(antagonistaCantidad>obj_game.cantidad_maxima) { antagonistaCantidad=obj_game.cantidad_maxima};

var antagonistaAfinidad = real(obj_tbNum_antago_afin.text);

if(antagonistaAfinidad<0) { antagonistaAfinidad=0};
if(antagonistaAfinidad>obj_game.afinidad_maxima) { antagonistaAfinidad=obj_game.afinidad_maxima};

obj_game.cantidad_antagonista = antagonistaCantidad;
obj_game.afinidad_antagonista = antagonistaAfinidad;*/

obj_game.gameRun = -1;

room_goto(room_juego_2);