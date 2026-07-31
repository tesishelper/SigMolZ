event_inherited();

if (instance_number(obj_fosfatasa)==0 && obj_game.gameRun==1) {
//Crear los agonistas
var x1 = 400;
var x2 = 800;
var y1 = 200;
var y2 = 525;


for (var i = 0; i < obj_game.cantidad_fosfatasa; i++) {
    var x_pos = random_range(x1,x2);
    var y_pos = random_range(y1,y2);
    var fosfatasa =instance_create_layer(x_pos, y_pos, "Instances", obj_fosfatasa);
	//fosfatasa.afinidad = obj_game.afinidad_antagonista
	
}

cliked = true;
}