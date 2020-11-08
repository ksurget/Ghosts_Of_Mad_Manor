/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 3DF82433
/// @DnDArgument : "expr" "can_suck"
/// @DnDArgument : "not" "1"
if(!(can_suck))
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 0444C6C8
	/// @DnDParent : 3DF82433
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_ghostbullet"
	/// @DnDSaveInfo : "objectid" "obj_ghostbullet"
	instance_create_layer(x + 0, y + 0, "Instances", obj_ghostbullet);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 56137F12
	/// @DnDParent : 3DF82433
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "can_suck"
	can_suck = true;
}