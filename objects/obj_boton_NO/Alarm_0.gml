/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 00DEDA2F
event_inherited();

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2864F2CD
/// @DnDArgument : "expr" "obj_game.gameRun*(-1)"
/// @DnDArgument : "var" "obj_game.gameRun"
obj_game.gameRun = obj_game.gameRun*(-1);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 1B5C3A96
/// @DnDApplyTo : {obj_boton_NO}
with(obj_boton_NO) instance_destroy();

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 16C28789
/// @DnDApplyTo : {obj_boton_SI}
with(obj_boton_SI) instance_destroy();

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 32141565
/// @DnDApplyTo : {obj_texto_confirmar}
with(obj_texto_confirmar) instance_destroy();