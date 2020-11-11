/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 6179157D
/// @DnDArgument : "expr" "caught"
if(caught)
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 4514A7D0
	/// @DnDParent : 6179157D
	/// @DnDArgument : "code" "hspeed= clamp(hspeed,-3,3)$(13_10)vspeed= clamp(vspeed,-3,3)"
	hspeed= clamp(hspeed,-3,3)
	vspeed= clamp(vspeed,-3,3)

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 29DFFEE9
	/// @DnDParent : 6179157D
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "obj_suck"
	/// @DnDArgument : "not" "1"
	/// @DnDSaveInfo : "object" "obj_suck"
	var l29DFFEE9_0 = instance_place(x + 0, y + 0, obj_suck);
	if (!(l29DFFEE9_0 > 0))
	{
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 01C4A0AA
		/// @DnDParent : 29DFFEE9
		/// @DnDArgument : "speed" "-sign(hspeed)"
		/// @DnDArgument : "speed_relative" "1"
		/// @DnDArgument : "type" "1"
		hspeed += -sign(hspeed);
	
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 50A89586
		/// @DnDParent : 29DFFEE9
		/// @DnDArgument : "speed" "-sign(vspeed)"
		/// @DnDArgument : "speed_relative" "1"
		/// @DnDArgument : "type" "2"
		vspeed += -sign(vspeed);
	}
}