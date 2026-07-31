draw_set_font(f_texto_medio);

draw_set_halign(fa_left);
draw_set_valign(fa_top);



if (obj_game.dinamic_model){  obj_game.metadato = "Dinamic Model";}
if (obj_game.static_model) {  obj_game.metadato = "Static Model";}
if (!obj_game.static_model && !obj_game.dinamic_model){obj_game.metadato = "Static & Dinamic Model";}


// escribimos el texto
draw_text(x + 0, y + 0,  obj_game.metadato);

draw_text(x + 0, y + 30,  "Agonist      Num:  " + string(obj_game.cantidad_agonista));
draw_text(x + 0, y + 55,  "Agonist        Afin:  " + string(obj_game.afinidad_agonista));

draw_text(x + 0, y + 85,  "Antagonist Num:  " + string(obj_game.cantidad_antagonista));
draw_text(x + 0, y + 110,  "Antagonist   Afin:  " + string(obj_game.afinidad_antagonista));

draw_set_halign(fa_left);
draw_set_valign(fa_top);


// terminamos de anotar el metadato 
obj_game.metadato += "\n\nAgonist Num: " + string(obj_game.cantidad_agonista);
obj_game.metadato += "\nAgonist Afin: " + string(obj_game.afinidad_agonista);
obj_game.metadato += "\nAntagonist Num: " + string(obj_game.cantidad_antagonista);
obj_game.metadato += "\nAntagonist Afin: " + string(obj_game.afinidad_antagonista);

