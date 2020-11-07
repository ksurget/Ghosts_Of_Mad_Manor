/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 0ECF69F1
/// @DnDArgument : "type" "2"
vspeed = 0;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 28F9368C
/// @DnDArgument : "type" "1"
hspeed = 0;

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 48CA60CE
/// @DnDArgument : "key" "ord("W")"
var l48CA60CE_0;
l48CA60CE_0 = keyboard_check(ord("W"));
if (l48CA60CE_0)
{
	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 34623BF5
	/// @DnDParent : 48CA60CE
	/// @DnDArgument : "y" "move_speed"
	/// @DnDArgument : "y_relative" "1"
	
	y += move_speed;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 31AB4595
/// @DnDArgument : "key" "ord("S")"
var l31AB4595_0;
l31AB4595_0 = keyboard_check(ord("S"));
if (l31AB4595_0)
{
	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 7387A8C4
	/// @DnDParent : 31AB4595
	/// @DnDArgument : "y" "-move_speed"
	/// @DnDArgument : "y_relative" "1"
	
	y += -move_speed;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 42492419
/// @DnDArgument : "key" "ord("A")"
var l42492419_0;
l42492419_0 = keyboard_check(ord("A"));
if (l42492419_0)
{
	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 2211F23A
	/// @DnDParent : 42492419
	/// @DnDArgument : "x" "move_speed"
	/// @DnDArgument : "x_relative" "1"
	x += move_speed;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 1651B71A
/// @DnDArgument : "key" "ord("D")"
var l1651B71A_0;
l1651B71A_0 = keyboard_check(ord("D"));
if (l1651B71A_0)
{
	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 425128B3
	/// @DnDParent : 1651B71A
	/// @DnDArgument : "x" "-move_speed"
	/// @DnDArgument : "x_relative" "1"
	x += -move_speed;
}