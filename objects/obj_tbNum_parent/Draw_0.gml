draw_self();

draw_set_font(f_textbox)
draw_set_halign(fa_left);
draw_set_valign(fa_middle);

var x_pos = x + 20;
var y_pos = y + sprite_height/2;
var display_text = text;

if (cursor_visible && active) {
	
	draw_set_color(c_black)
	
	draw_rectangle(x_pos+string_width(text), y_pos -15,x_pos+string_width(text)+2,y_pos + 15, false);
   // display_text = string_insert("|", text, cursor_pos + 1);

}

//draw_set_color(c_white);
//draw_rectangle(x, y, x + width, y + height, false);


draw_set_color(c_black);
draw_text(x_pos , y_pos , display_text);
draw_set_color(c_white);
draw_set_halign(fa_left);