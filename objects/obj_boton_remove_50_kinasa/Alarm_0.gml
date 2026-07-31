event_inherited();

if (instance_number(obj_kinasa) >= 50 && obj_game.gameRun==1) {

for (var i = 0; i < 50; i++)
{
    var inst = instance_find(obj_kinasa, 0);
    
    if (inst != noone)
    {
        instance_destroy(inst);
		obj_game.cantidad_kinasa=obj_game.cantidad_kinasa-1
    }
}

if (instance_number(obj_kinasa) < 50 && obj_game.gameRun==1) {

with (obj_kinasa) {
    instance_destroy();
}
		obj_game.cantidad_kinasa=0
    
}


cliked = true;


}