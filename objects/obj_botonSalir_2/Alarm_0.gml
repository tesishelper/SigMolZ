event_inherited();

obj_game.gameRun = -1;

if (instance_number( obj_texto_confirmar) > 1){
    instance_destroy(); // Este ya existe, destruimos el duplicado
}

if (instance_number( obj_boton_SI_2) > 1){
    instance_destroy(); // Este ya existe, destruimos el duplicado
}

if (instance_number( obj_boton_NO_2) > 1){
    instance_destroy(); // Este ya existe, destruimos el duplicado
}



instance_create_layer( 560, 400, "mensajes", obj_boton_SI_2);

instance_create_layer( 810 , 400, "mensajes", obj_boton_NO_2);

instance_create_layer(0, 0, "mensajes", obj_texto_confirmar);