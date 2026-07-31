/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 5413524F
draw_self();

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 2F17ED64
/// @DnDArgument : "font" "f_boton"
/// @DnDSaveInfo : "font" "f_boton"
draw_set_font(f_boton);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 6603BF07
draw_set_colour($FFFFFFFF & $ffffff);
var l6603BF07_0=($FFFFFFFF >> 24);
draw_set_alpha(l6603BF07_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 62A805DD
/// @DnDArgument : "halign" "fa_center"
/// @DnDArgument : "valign" "fa_middle"
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 705DDC6F
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale" "0.29"
/// @DnDArgument : "yscale" "0.6"
/// @DnDArgument : "caption" ""kinase 1 On""
draw_text_transformed(x + 0, y + 0, string("kinase 1 On") + "", 0.29, 0.6, 0);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 7E3EF5FD
draw_set_halign(fa_left);
draw_set_valign(fa_top);