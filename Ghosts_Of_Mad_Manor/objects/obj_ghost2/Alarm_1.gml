/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 00C4D513
/// @DnDArgument : "obj" "obj_player"
/// @DnDSaveInfo : "obj" "obj_player"
var l00C4D513_0 = false;
l00C4D513_0 = instance_exists(obj_player);
if(l00C4D513_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 573A37D4
	/// @DnDParent : 00C4D513
	/// @DnDArgument : "var" "count"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "3"
	if(count < 3)
	{
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 6A85C79A
		/// @DnDParent : 573A37D4
		speed = 0;
	
		/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
		/// @DnDVersion : 1
		/// @DnDHash : 7E2972F6
		/// @DnDParent : 573A37D4
		/// @DnDArgument : "x" "obj_player.x"
		/// @DnDArgument : "y" "obj_player.y"
		direction = point_direction(x, y, obj_player.x, obj_player.y);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 637A6D27
		/// @DnDParent : 573A37D4
		/// @DnDArgument : "expr" "angle_difference(image_angle, direction)/45"
		/// @DnDArgument : "var" "spin_speed"
		spin_speed = angle_difference(image_angle, direction)/45;
	
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 6F3DB6F0
		/// @DnDParent : 573A37D4
		/// @DnDArgument : "steps" "50"
		/// @DnDArgument : "alarm" "2"
		alarm_set(2, 50);
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 6F02C706
	/// @DnDParent : 00C4D513
	else
	{
		/// @DnDAction : YoYo Games.Instances.Call_User_Event
		/// @DnDVersion : 1
		/// @DnDHash : 5496BA80
		/// @DnDParent : 6F02C706
		event_user(0);
	}
}