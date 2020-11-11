/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 05231F18
/// @DnDArgument : "expr" "stunned"
/// @DnDArgument : "not" "1"
if(!(stunned))
{
	/// @DnDAction : YoYo Games.Instances.Call_User_Event
	/// @DnDVersion : 1
	/// @DnDHash : 517756AA
	/// @DnDParent : 05231F18
	event_user(0);
}