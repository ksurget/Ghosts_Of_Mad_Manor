/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 459B9D24
/// @DnDArgument : "expr" "attacking"
if(attacking)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 75D9CEB7
	/// @DnDParent : 459B9D24
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_pot2"
	/// @DnDSaveInfo : "objectid" "obj_pot2"
	instance_create_layer(x + 0, y + 0, "Instances", obj_pot2);

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 7FB464B3
	/// @DnDParent : 459B9D24
	/// @DnDArgument : "steps" "3"
	/// @DnDArgument : "alarm" "3"
	alarm_set(3, 3);
}