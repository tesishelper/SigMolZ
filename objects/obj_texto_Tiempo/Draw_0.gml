/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 1B87B01D
/// @DnDArgument : "font" "f_boton"
/// @DnDSaveInfo : "font" "f_boton"
draw_set_font(f_boton);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 46BB043C
/// @DnDArgument : "halign" "fa_center"
/// @DnDArgument : "valign" "fa_middle"
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 26D279AB
/// @DnDArgument : "color" "$FF000000"
draw_set_colour($FF000000 & $ffffff);
var l26D279AB_0=($FF000000 >> 24);
draw_set_alpha(l26D279AB_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 1B25EB3A
/// @DnDArgument : "x" "2"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale" "0.8"
/// @DnDArgument : "yscale" "0.9"
/// @DnDArgument : "caption" "string(segundos) + " s""
draw_text_transformed(x + 2, y + 2, string(string(segundos) + " s") + "", 0.8, 0.9, 0);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 61DC01D6
/// @DnDArgument : "color" "$FF00FFFF"
draw_set_colour($FF00FFFF & $ffffff);
var l61DC01D6_0=($FF00FFFF >> 24);
draw_set_alpha(l61DC01D6_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 264D36F5
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale" "0.8"
/// @DnDArgument : "yscale" "0.9"
/// @DnDArgument : "caption" "string(segundos) + " s""
draw_text_transformed(x + 0, y + 0, string(string(segundos) + " s") + "", 0.8, 0.9, 0);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 0E2A5D13
draw_set_halign(fa_left);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 09BC5CB1
draw_set_colour($FFFFFFFF & $ffffff);
var l09BC5CB1_0=($FFFFFFFF >> 24);
draw_set_alpha(l09BC5CB1_0 / $ff);