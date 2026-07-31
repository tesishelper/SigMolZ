event_inherited();




//limpiamos las partidas previas

obj_game.metadato = "";

obj_game.porcentaje_0 = 0;
 obj_game.porcentaje_1 = 0;
 obj_game.porcentaje_2 = 0 ;
 obj_game.porcentaje_3 = 0;
 obj_game.porcentaje_4 = 0;
 obj_game.porcentaje_5 = 0 ;

 ds_list_clear(obj_game.coordenadas);
 ds_list_clear(obj_game.coordenadas_1);
 ds_list_clear(obj_game.coordenadas_2);
 ds_list_clear(obj_game.coordenadas_3);
 ds_list_clear(obj_game.coordenadas_4);
 ds_list_clear(obj_game.coordenadas_5);
 
 ds_list_clear(obj_game.listas_1);
 ds_list_clear(obj_game.listas_2);
 

if (obj_tbNum_ago_num.text==""){obj_tbNum_ago_num.text="0"};
if (obj_tbNum_ago_afin.text==""){obj_tbNum_ago_afin.text="0"};
//if (obj_tbNum_antago_num.text==""){obj_tbNum_antago_num.text="0"};
//if (obj_tbNum_antago_afin.text==""){obj_tbNum_antago_afin.text="0"};

metadato ="Delete all saved \nsimulations.";
metadato += "\n\nSaved simulations: 0";