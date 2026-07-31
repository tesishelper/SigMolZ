draw_self();

draw_set_font(f_textbox)
draw_set_halign(fa_left);
draw_set_valign(fa_middle);


var display_text = text;

if (cursor_visible && active) {
    display_text = string_insert("|", text, cursor_pos + 1);
}

//draw_set_color(c_white);
//draw_rectangle(x, y, x + width, y + height, false);


draw_set_color(c_black);
draw_text(x + 7, y + sprite_height / 2 , display_text);