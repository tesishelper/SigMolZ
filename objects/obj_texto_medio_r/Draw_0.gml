draw_set_font(f_texto_medio);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_black);
draw_text_transformed(x +1 , y + 56, string(texto) + "", 0.7,0.7,0);
//draw_text(x +1 , y + 31, string(texto) + "");
draw_set_color(c_red);
draw_text_transformed(x  , y + 55, string(texto) + "", 0.7,0.7,0);
//draw_text(x + 0, y + 30, string(texto) + "");


// Coordenadas del rectángulo
var x1 = x-25;
var y1 = y + 160*1.5 - rectangle_h*1.5;
var x2 = x + 25; // ancho
var y2 = y + 160*1.5; // alto

// Dibujar el rectángulo


draw_rectangle(x1, y1, x2, y2, false); // false = sin bordes redondeados

draw_set_color(c_black);
draw_rectangle(x1, y1, x2, y1+2, false)
draw_rectangle(x1, y1, x1+2, y2, false); // true = con bordes redondeados
draw_rectangle(x2, y1, x2+2, y2, false);
draw_rectangle(x1, y2, x2, y2+2, false)

draw_set_halign(fa_left);
draw_set_valign(fa_top);


draw_set_colour($FFFFFFFF & $ffffff);
var l52123289_0=($FFFFFFFF >> 24);
draw_set_alpha(l52123289_0 / $ff);