event_inherited();

if (instance_number(obj_kinasa)>=0 && obj_game.gameRun==1) {
//Crear los agonistas
var x1 = 0;
var x2 = 200;
var y1 = 200;
var y2 = 525;


for (var i = 0; i < 50; i++) {
    var x_pos = random_range(x1,x2);
    var y_pos = random_range(y1,y2);
	var agonista = instance_create_layer(x_pos, y_pos, "Instances", obj_kinasa);
	obj_game.cantidad_kinasa=obj_game.cantidad_kinasa+1
}

cliked = true;
}