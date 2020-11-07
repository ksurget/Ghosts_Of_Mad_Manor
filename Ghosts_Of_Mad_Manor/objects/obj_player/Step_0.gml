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