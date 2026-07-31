//Crear los agonistas
var x1 = 287;
var x2 = 687;
var y1 = 212;
var y2 = 512;


for (var i = 0; i < obj_game.cantidad_agonista; i++) {
    var x_pos = random_range(x1,x2);
    var y_pos = random_range(y1,y2);
	var agonista = instance_create_layer(x_pos, y_pos, "Instances", obj_agonista);
	agonista.afinidad = obj_game.afinidad_agonista;

}

//Crear los antagonistas

for (var i = 0; i < obj_game.cantidad_antagonista; i++) {
    var x_pos = random_range(x1,x2);
    var y_pos = random_range(y1,y2);
    var antagonista =instance_create_layer(x_pos, y_pos, "Instances", obj_antagonista);
	antagonista.afinidad = obj_game.afinidad_antagonista

}

//Crear los receptores

var x_pos = 8;

for (var i = 0; i <137; i++) {
     x_pos = x_pos + 7;
    var y_pos = 685;
	
    var receptor =instance_create_layer(x_pos, y_pos, "Instances", obj_receptor);
	receptor.estado = 0;
	receptor.image_yscale = 1.0;
	receptor.image_xscale = 0.9;

}

x_pos =8; 

for (var i = 0; i <137; i++) {
     x_pos = x_pos + 7;
    var y_pos = 40;
	
    var receptor =instance_create_layer(x_pos, y_pos, "Instances", obj_receptor);
	receptor.estado = 0;
	receptor.image_angle = 180;
	receptor.image_yscale = 1.0;
	receptor.image_xscale = 0.9;

}

obj_game.gameRun = 1; 