
draw_self();

 draw_set_font(f_texto_medio);
 
 draw_set_halign(fa_left);
draw_set_valign(fa_middle);


draw_text(x + 35, y + sprite_height/2 ,  string(index));

draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_set_font(f_texto_chico);

// Luego, si la variable está activa, dibuja el rectángulo negro
if (mostrar_rect) {
    draw_set_color(c_black);
    draw_rectangle(x , y +30, x + 160, y + 150, false); // Coordenadas relativas
	draw_set_color(c_white);
	draw_text( x+3, y+35, metadato);
}



