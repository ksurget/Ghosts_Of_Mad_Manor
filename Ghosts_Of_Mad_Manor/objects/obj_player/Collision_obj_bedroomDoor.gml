/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 4D448485
/// @DnDApplyTo : other
/// @DnDArgument : "expr" "door_unlocked"
with(other) var l4D448485_0 = door_unlocked;
if(l4D448485_0)
{
	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 06B785CC
	/// @DnDParent : 4D448485
	/// @DnDArgument : "room" "rm_bedroom"
	/// @DnDSaveInfo : "room" "rm_bedroom"
	room_goto(rm_bedroom);
}