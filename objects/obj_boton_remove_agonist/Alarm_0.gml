event_inherited();

if (instance_number(obj_agonista) > 0 && obj_game.gameRun==1) {

with (obj_agonista) {
    instance_destroy();
}

}