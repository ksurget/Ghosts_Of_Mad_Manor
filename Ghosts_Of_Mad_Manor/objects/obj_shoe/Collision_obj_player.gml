/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 284234AF
/// @DnDArgument : "expr" "suckable"
if(suckable)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 19344557
	/// @DnDParent : 284234AF
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "obj_player.can_suck"
	obj_player.can_suck = false;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 7C174EF4
/// @DnDArgument : "expr" "suckable"
/// @DnDArgument : "not" "1"
if(!(suckable))
{

}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 25D05F0B
instance_destroy();