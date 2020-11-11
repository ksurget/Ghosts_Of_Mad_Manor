/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 04DE6562
event_inherited();

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 31BA834F
/// @DnDArgument : "expr" "caught"
/// @DnDArgument : "not" "1"
if(!(caught))
{
	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 0246F364
	/// @DnDParent : 31BA834F
	/// @DnDArgument : "script" "inflict_damage"
	/// @DnDArgument : "arg" "damage"
	/// @DnDSaveInfo : "script" "inflict_damage"
	script_execute(inflict_damage, damage);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 1834E7DD
	/// @DnDParent : 31BA834F
	instance_destroy();
}