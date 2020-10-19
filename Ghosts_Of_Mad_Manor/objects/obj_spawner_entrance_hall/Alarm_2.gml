/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 0285B436
/// @DnDArgument : "cond" "i < room_width-50"
/// @DnDArgument : "expr" "i += 100"
for(i = 0; i < room_width-50; i += 100) {
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 237FD231
	/// @DnDParent : 0285B436
	/// @DnDArgument : "xpos" "i+50"
	/// @DnDArgument : "ypos" "room_height"
	/// @DnDArgument : "objectid" "obj_shoe"
	/// @DnDSaveInfo : "objectid" "obj_shoe"
	instance_create_layer(i+50, room_height, "Instances", obj_shoe);

	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 2C2D471D
	/// @DnDInput : 2
	/// @DnDApplyTo : {obj_shoe}
	/// @DnDParent : 0285B436
	/// @DnDArgument : "value" "-5"
	/// @DnDArgument : "value_1" "90"
	/// @DnDArgument : "instvar" "5"
	/// @DnDArgument : "instvar_1" "12"
	with(obj_shoe) {
	vspeed = -5;
	image_angle = 90;
	}
}

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 7E88695F
/// @DnDArgument : "steps" "180"
/// @DnDArgument : "alarm" "3"
alarm_set(3, 180);