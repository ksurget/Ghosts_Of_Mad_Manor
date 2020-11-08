/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 00A87201
/// @DnDArgument : "x" "obj_player.x"
/// @DnDArgument : "y" "obj_player.y"
x = obj_player.x;
y = obj_player.y;

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 67A532CE
/// @DnDArgument : "angle" "point_direction(x, y, mouse_x, mouse_y)-90"
image_angle = point_direction(x, y, mouse_x, mouse_y)-90;