/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 22A1DFC4
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "move_speed"
move_speed = 1;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 51C123FA
/// @DnDArgument : "expr" "can_suck"
if(can_suck)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3EAE839E
	/// @DnDParent : 51C123FA
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_suck"
	/// @DnDSaveInfo : "objectid" "obj_suck"
	instance_create_layer(x + 0, y + 0, "Instances", obj_suck);
}