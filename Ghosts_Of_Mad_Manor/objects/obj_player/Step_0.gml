/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 39C425A0
/// @DnDArgument : "angle" "point_direction(x, y, mouse_x, mouse_y)"
image_angle = point_direction(x, y, mouse_x, mouse_y);

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 62070DB7
/// @DnDArgument : "code" "vspeed=clamp(vspeed,-move_speed,move_speed)$(13_10)hspeed=clamp(hspeed,-move_speed,move_speed)"
vspeed=clamp(vspeed,-move_speed,move_speed)
hspeed=clamp(hspeed,-move_speed,move_speed)

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 122D6CFD
/// @DnDArgument : "key" "ord("W")"
/// @DnDArgument : "not" "1"
var l122D6CFD_0;
l122D6CFD_0 = keyboard_check(ord("W"));
if (!l122D6CFD_0)
{
	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 1083AAB9
	/// @DnDParent : 122D6CFD
	/// @DnDArgument : "key" "ord("S")"
	/// @DnDArgument : "not" "1"
	var l1083AAB9_0;
	l1083AAB9_0 = keyboard_check(ord("S"));
	if (!l1083AAB9_0)
	{
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 3AE6F24A
		/// @DnDParent : 1083AAB9
		/// @DnDArgument : "speed" "-sign(vspeed)"
		/// @DnDArgument : "speed_relative" "1"
		/// @DnDArgument : "type" "2"
		vspeed += -sign(vspeed);
	}
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 59CF4E89
/// @DnDArgument : "key" "ord("A")"
/// @DnDArgument : "not" "1"
var l59CF4E89_0;
l59CF4E89_0 = keyboard_check(ord("A"));
if (!l59CF4E89_0)
{
	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 605A32A5
	/// @DnDParent : 59CF4E89
	/// @DnDArgument : "key" "ord("D")"
	/// @DnDArgument : "not" "1"
	var l605A32A5_0;
	l605A32A5_0 = keyboard_check(ord("D"));
	if (!l605A32A5_0)
	{
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 05DF4B93
		/// @DnDParent : 605A32A5
		/// @DnDArgument : "speed" "-sign(hspeed)"
		/// @DnDArgument : "speed_relative" "1"
		/// @DnDArgument : "type" "1"
		hspeed += -sign(hspeed);
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 37FD3890
/// @DnDArgument : "var" "speed"
/// @DnDArgument : "not" "1"
if(!(speed == 0))
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 35C1D781
	/// @DnDParent : 37FD3890
	image_speed = 1;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0A3BDB90
/// @DnDArgument : "var" "speed"
if(speed == 0)
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 74E310A2
	/// @DnDParent : 0A3BDB90
	/// @DnDArgument : "speed" "0"
	image_speed = 0;

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 3AA98EB5
	/// @DnDParent : 0A3BDB90
	/// @DnDArgument : "spriteind" "spr_playermove"
	/// @DnDSaveInfo : "spriteind" "spr_playermove"
	sprite_index = spr_playermove;
	image_index = 0;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 5AB6E84B
/// @DnDArgument : "expr" "cheat_heal"
if(cheat_heal)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6E5C853E
	/// @DnDParent : 5AB6E84B
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "hitpoints"
	hitpoints += 1;
}