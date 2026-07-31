event_inherited();

obj_game.gameRun = obj_game.gameRun*(-1);

if (instance_number( obj_texto_confirmar) > 1){
    instance_destroy(); // Este ya existe, destruimos el duplicado
}

if (instance_number( obj_boton_SI) > 1){
    instance_destroy(); // Este ya existe, destruimos el duplicado
}

if (instance_number( obj_boton_NO) > 1){
    instance_destroy(); // Este ya existe, destruimos el duplicado
}

room_goto(room_menu_2);



//instance_create_layer( 560, 400, "mensajes", obj_boton_SI);

//instance_create_layer( 810 , 400, "mensajes", obj_boton_NO);

//instance_create_layer(0, 0, "mensajes", obj_texto_confirmar);