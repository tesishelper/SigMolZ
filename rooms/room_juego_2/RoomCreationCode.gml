//Crear los agonistas
var x1 = 0;
var x2 = 200;
var y1 = 200;
var y2 = 525;



for (var i = 0; i < obj_game.cantidad_agonista; i++) {
    var x_pos = random_range(x1,x2);
    var y_pos = random_range(y1,y2);
	var agonista = instance_create_layer(x_pos, y_pos, "Instances", obj_agonista);
	agonista.afinidad = obj_game.afinidad_agonista;
    agonista.modo = 2;
}

//Crear los antagonistas
/*
for (var i = 0; i < obj_game.cantidad_antagonista; i++) {
    var x_pos = random_range(x1,x2);
    var y_pos = random_range(y1,y2);
    var antagonista =instance_create_layer(x_pos, y_pos, "Instances", obj_antagonista);
	antagonista.afinidad = obj_game.afinidad_antagonista
	antagonista.modo = 2;
}
*/

//Crear las kinasas

 x1 = 400;
 x2 = 800;
 y1 = 200;
 y2 = 525;

for (var i = 0; i < obj_game.cantidad_kinasa; i++) {
    var x_pos = random_range(x1,x2);
    var y_pos = random_range(y1,y2);
    var kinasa =instance_create_layer(x_pos, y_pos, "Instances", obj_kinasa);
	kinasa.afinidad = obj_game.afinidad_antagonista
	
}

//Crear las kinasas_2

 x1 = 400;
 x2 = 800;
 y1 = 200;
 y2 = 525;

for (var i = 0; i < 1000; i++) {
    var x_pos = random_range(x1,x2);
    var y_pos = random_range(y1,y2);
    var kinasa =instance_create_layer(x_pos, y_pos, "Instances", obj_kinasa_2);
	kinasa.afinidad = obj_game.afinidad_antagonista
	
}

//Crear las fosfatasas

for (var i = 0; i < obj_game.cantidad_fosfatasa; i++) {
    var x_pos = random_range(x1,x2);
    var y_pos = random_range(y1,y2);
    var kinasa =instance_create_layer(x_pos, y_pos, "Instances", obj_fosfatasa);
	kinasa.afinidad = obj_game.afinidad_antagonista
	
}

//Crear los receptores
var y_pos = 0;

for (var i = 0; i <90; i++) {
     y_pos = y_pos + 8;
    var x_pos = 370;
	
    var receptor =instance_create_layer(x_pos, y_pos, "Instances", obj_receptor2);
	receptor.estado = 0;
	receptor.image_angle = 90;
	receptor.image_yscale = 0.5;
}



//Crear los poros
 y_pos = 0;

for (var i = 0; i <30; i++) {
     y_pos = y_pos + 24;
    var x_pos = 975;
	
    var receptor =instance_create_layer(x_pos, y_pos, "Instances", obj_poro);
	receptor.estado = 0;
	//receptor.image_angle = 90;
	receptor.image_xscale = 0.5;
	receptor.image_yscale = 0.3;
}

obj_game.gameRun = 1; 