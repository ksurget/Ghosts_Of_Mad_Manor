/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 0DAF37AD
/// @DnDArgument : "expr" "stunned"
if(stunned)
{
	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 2F1D021A
	/// @DnDParent : 0DAF37AD
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "obj_suck"
	/// @DnDSaveInfo : "object" "obj_suck"
	var l2F1D021A_0 = instance_place(x + 0, y + 0, obj_suck);
	if ((l2F1D021A_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 170CA264
		/// @DnDParent : 2F1D021A
		/// @DnDArgument : "expr" "10"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "other.hitpoints"
		other.hitpoints += 10;
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 3A0ECA72
		/// @DnDParent : 2F1D021A
		instance_destroy();
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 5688B26F
else
{
	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 2771E41F
	/// @DnDParent : 5688B26F
	/// @DnDArgument : "obj" "obj_player"
	/// @DnDSaveInfo : "obj" "obj_player"
	var l2771E41F_0 = false;
	l2771E41F_0 = instance_exists(obj_player);
	if(l2771E41F_0)
	{
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 4D7EAEE4
		/// @DnDParent : 2771E41F
		/// @DnDArgument : "script" "inflict_damage"
		/// @DnDArgument : "arg" "20"
		/// @DnDSaveInfo : "script" "inflict_damage"
		script_execute(inflict_damage, 20);
	}
}