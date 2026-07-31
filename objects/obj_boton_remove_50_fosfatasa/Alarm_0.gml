event_inherited();

if (instance_number(obj_fosfatasa) >= 50 && obj_game.gameRun==1) {

for (var i = 0; i < 50; i++)
{
    var inst = instance_find(obj_fosfatasa, 0);
    
    if (inst != noone)
    {
        instance_destroy(inst);
		obj_game.cantidad_fosfatasa=obj_game.cantidad_fosfatasa-1
    }
}

if (instance_number(obj_fosfatasa) < 50 && obj_game.gameRun==1) {

with (obj_fosfatasa) {
    instance_destroy();
}
		obj_game.cantidad_fosfatasa=0
    
}


cliked = true;


}