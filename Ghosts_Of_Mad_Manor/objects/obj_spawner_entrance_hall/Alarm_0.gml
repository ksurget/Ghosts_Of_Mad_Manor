/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 14B348F9
/// @DnDArgument : "cond" "i < room_width-50"
/// @DnDArgument : "expr" "i += 100"
for(i = 0; i < room_width-50; i += 100) {
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 218C206B
	/// @DnDParent : 14B348F9
	/// @DnDArgument : "xpos" "i+50"
	/// @DnDArgument : "objectid" "obj_shoe"
	/// @DnDSaveInfo : "objectid" "obj_shoe"
	instance_create_layer(i+50, 0, "Instances", obj_shoe);

	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 1CDEFE75
	/// @DnDInput : 2
	/// @DnDApplyTo : {obj_shoe}
	/// @DnDParent : 14B348F9
	/// @DnDArgument : "value" "5"
	/// @DnDArgument : "value_1" "270"
	/// @DnDArgument : "instvar" "5"
	/// @DnDArgument : "instvar_1" "12"
	with(obj_shoe) {
	vspeed = 5;
	image_angle = 270;
	}
}

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 231853EE
/// @DnDArgument : "steps" "180"
/// @DnDArgument : "alarm" "1"
alarm_set(1, 180);