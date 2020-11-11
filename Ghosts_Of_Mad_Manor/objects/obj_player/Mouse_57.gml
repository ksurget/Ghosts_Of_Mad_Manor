/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 14CE6179
/// @DnDArgument : "expr" "3"
/// @DnDArgument : "var" "move_speed"
move_speed = 3;

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 728E8190
/// @DnDArgument : "obj" "obj_suck"
/// @DnDSaveInfo : "obj" "obj_suck"
var l728E8190_0 = false;
l728E8190_0 = instance_exists(obj_suck);
if(l728E8190_0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 0511DBF5
	/// @DnDApplyTo : {obj_suck}
	/// @DnDParent : 728E8190
	with(obj_suck) instance_destroy();
}