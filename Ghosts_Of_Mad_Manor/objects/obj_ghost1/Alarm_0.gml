/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 5D8606FC
/// @DnDArgument : "expr" "stunned"
/// @DnDArgument : "not" "1"
if(!(stunned))
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 433C7630
	/// @DnDParent : 5D8606FC
	/// @DnDArgument : "var" "random_range(0,19)"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "6"
	if(random_range(0,19) < 6)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 2E223467
		/// @DnDParent : 433C7630
		/// @DnDArgument : "xpos" "random_range(-50,50)"
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos" "random_range(-50,50)"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "obj_bottle1"
		/// @DnDSaveInfo : "objectid" "obj_bottle1"
		instance_create_layer(x + random_range(-50,50), y + random_range(-50,50), "Instances", obj_bottle1);
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 42468E8E
	/// @DnDParent : 5D8606FC
	else
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 03F6A1BE
		/// @DnDParent : 42468E8E
		/// @DnDArgument : "xpos" "random_range(-50,50)"
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos" "random_range(-50,50)"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "obj_bottle2"
		/// @DnDSaveInfo : "objectid" "obj_bottle2"
		instance_create_layer(x + random_range(-50,50), y + random_range(-50,50), "Instances", obj_bottle2);
	}

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 2E5B8959
	/// @DnDParent : 5D8606FC
	/// @DnDArgument : "steps" "random_range(30, 150)"
	alarm_set(0, random_range(30, 150));
}