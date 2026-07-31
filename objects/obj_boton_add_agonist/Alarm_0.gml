event_inherited();

if (instance_number(obj_agonista)==0 && obj_game.gameRun==1) {
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

cliked = true;
}