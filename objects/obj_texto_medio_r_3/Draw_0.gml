draw_set_font(f_texto_grande);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);


draw_set_color(c_orange);

draw_rectangle(x-160, y-20, x+160,y+20, false);

draw_set_color(c_black);
//draw_text(x , y , string(texto) + "");
draw_text_transformed(x, y, "Nucleus", 0.4, 0.4, 0);



draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_set_color(c_white);

