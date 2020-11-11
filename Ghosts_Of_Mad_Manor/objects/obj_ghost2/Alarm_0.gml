/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 5FA9E9E9
/// @DnDArgument : "expr" "stunned"
/// @DnDArgument : "not" "1"
if(!(stunned))
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 20B83384
	/// @DnDParent : 5FA9E9E9
	/// @DnDArgument : "expr" "attacking"
	if(attacking)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 0D84E159
		/// @DnDParent : 20B83384
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "obj_pot1"
		/// @DnDSaveInfo : "objectid" "obj_pot1"
		instance_create_layer(x + 0, y + 0, "Instances", obj_pot1);
	
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 0E80D57F
		/// @DnDParent : 20B83384
		/// @DnDArgument : "steps" "5"
		alarm_set(0, 5);
	}
}