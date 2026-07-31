draw_self();

draw_set_font(f_texto_grande);

draw_set_colour($FFFFFFFF & $ffffff);
var l6603BF07_0=($FFFFFFFF >> 24);
draw_set_alpha(l6603BF07_0 / $ff);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(x + 0, y + 0, string("Run") + "");

draw_set_halign(fa_left);
draw_set_valign(fa_top);

// Luego, si la variable está activa, dibuja el rectángulo negro
if (mostrar_rect) {
	draw_set_font(f_texto_chico);
    draw_set_color(c_black);
    draw_rectangle(x - 130, y +30, x + 30, y + 150, false); // Coordenadas relativas
	draw_set_color(c_white);
	draw_text( x-127, y+35, metadato);
}