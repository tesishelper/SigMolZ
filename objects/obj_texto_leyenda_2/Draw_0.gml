/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 1B87B01D
/// @DnDArgument : "font" "f_texto_medio"
/// @DnDSaveInfo : "font" "f_texto_medio"
draw_set_font(f_texto_medio);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 46BB043C
/// @DnDArgument : "halign" "fa_center"
draw_set_halign(fa_center);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 52C19E2A
/// @DnDArgument : "color" "$FF000000"
draw_set_colour($FF000000 & $ffffff);
var l52C19E2A_0=($FF000000 >> 24);
draw_set_alpha(l52C19E2A_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 0B72B722
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" "texto"
draw_text(x + 0, y + 0, string(texto) + "");

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 6C5C36ED
draw_set_colour($FFFFFFFF & $ffffff);
var l6C5C36ED_0=($FFFFFFFF >> 24);
draw_set_alpha(l6C5C36ED_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 0E2A5D13
draw_set_halign(fa_left);
draw_set_valign(fa_top);