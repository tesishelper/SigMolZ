event_inherited();




//limpiamos las partidas previas

obj_game.metadato = "";

obj_game.porcentaje_0 = 0;
 obj_game.porcentaje_1 = 0;
 obj_game.porcentaje_2 = 0 ;

 ds_list_clear(obj_game.coordenadas);
 ds_list_clear(obj_game.coordenadas_1);
 ds_list_clear(obj_game.coordenadas_2);
 
 ds_list_clear(obj_game.listas);
 

if (obj_tbNum_ago_num.text==""){obj_tbNum_ago_num.text="0"};
if (obj_tbNum_ago_afin.text==""){obj_tbNum_ago_afin.text="0"};
if (obj_tbNum_antago_num.text==""){obj_tbNum_antago_num.text="0"};
if (obj_tbNum_antago_afin.text==""){obj_tbNum_antago_afin.text="0"};

metadato ="Delete all saved \nsimulations.";
metadato += "\n\nSaved simulations: 0";