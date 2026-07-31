event_inherited();

if (instance_number(obj_agonista) >= 50 && obj_game.gameRun==1) {

for (var i = 0; i < 50; i++)
{
    var inst = instance_find(obj_agonista, 0);
    
    if (inst != noone)
    {
        instance_destroy(inst);
		obj_game.cantidad_agonista=obj_game.cantidad_agonista-1
    }
}

if (instance_number(obj_agonista) < 50 && obj_game.gameRun==1) {

with (obj_agonista) {
    instance_destroy();
}
		obj_game.cantidad_agonista=0
    
}


cliked = true;


}