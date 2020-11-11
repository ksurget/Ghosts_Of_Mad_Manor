/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 1353D064
/// @DnDArgument : "key" "ord("H")"
var l1353D064_0;
l1353D064_0 = keyboard_check_pressed(ord("H"));
if (l1353D064_0)
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 437268DB
	/// @DnDParent : 1353D064
	/// @DnDArgument : "expr" "cheat_heal"
	if(cheat_heal)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1DC94D80
		/// @DnDParent : 437268DB
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "cheat_heal"
		cheat_heal = false;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 53500EA7
	/// @DnDParent : 1353D064
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 23DFC4A9
		/// @DnDParent : 53500EA7
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "cheat_heal"
		cheat_heal = true;
	}
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Released
/// @DnDVersion : 1
/// @DnDHash : 2AC11F4C
/// @DnDArgument : "key" "ord("J")"
var l2AC11F4C_0;
l2AC11F4C_0 = keyboard_check_released(ord("J"));
if (l2AC11F4C_0)
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 36859FA6
	/// @DnDParent : 2AC11F4C
	/// @DnDArgument : "expr" "cheat_bullets"
	if(cheat_bullets)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5185E013
		/// @DnDParent : 36859FA6
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "cheat_bullets"
		cheat_bullets = false;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 6CE62A6A
	/// @DnDParent : 2AC11F4C
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3682701A
		/// @DnDParent : 6CE62A6A
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "cheat_bullets"
		cheat_bullets = true;
	}
}