/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 1B00D1F2
/// @DnDArgument : "key" "ord("R")"
var l1B00D1F2_0;
l1B00D1F2_0 = keyboard_check_pressed(ord("R"));
if (l1B00D1F2_0)
{
	/// @DnDAction : YoYo Games.Game.Restart_Game
	/// @DnDVersion : 1
	/// @DnDHash : 7F78252B
	/// @DnDParent : 1B00D1F2
	game_restart();
}