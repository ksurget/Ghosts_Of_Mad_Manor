/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 59A6C6BE
/// @DnDArgument : "obj" "obj_player"
/// @DnDSaveInfo : "obj" "obj_player"
var l59A6C6BE_0 = false;
l59A6C6BE_0 = instance_exists(obj_player);
if(l59A6C6BE_0)
{
	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 00A87201
	/// @DnDParent : 59A6C6BE
	/// @DnDArgument : "x" "obj_player.x"
	/// @DnDArgument : "y" "obj_player.y"
	x = obj_player.x;
	y = obj_player.y;

	/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
	/// @DnDVersion : 1
	/// @DnDHash : 67A532CE
	/// @DnDParent : 59A6C6BE
	/// @DnDArgument : "angle" "point_direction(x, y, mouse_x, mouse_y)-90"
	image_angle = point_direction(x, y, mouse_x, mouse_y)-90;

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 2CE36DC6
	/// @DnDParent : 59A6C6BE
	/// @DnDArgument : "expr" "obj_player.can_suck"
	/// @DnDArgument : "not" "1"
	if(!(obj_player.can_suck))
	{
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 71CB929F
		/// @DnDParent : 2CE36DC6
		instance_destroy();
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 34D9EC84
else
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 33000C17
	/// @DnDParent : 34D9EC84
	instance_destroy();
}