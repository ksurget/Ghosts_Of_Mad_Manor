/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 4E66E9C7
/// @DnDArgument : "cond" "i < room_height-50"
/// @DnDArgument : "expr" "i += 100"
for(i = 0; i < room_height-50; i += 100) {
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 61B2ED2A
	/// @DnDParent : 4E66E9C7
	/// @DnDArgument : "xpos" "room_width"
	/// @DnDArgument : "ypos" "i+50"
	/// @DnDArgument : "objectid" "obj_shoe"
	/// @DnDSaveInfo : "objectid" "obj_shoe"
	instance_create_layer(room_width, i+50, "Instances", obj_shoe);

	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 0407EF6C
	/// @DnDInput : 2
	/// @DnDApplyTo : {obj_shoe}
	/// @DnDParent : 4E66E9C7
	/// @DnDArgument : "value" "-5"
	/// @DnDArgument : "value_1" "180"
	/// @DnDArgument : "instvar" "4"
	/// @DnDArgument : "instvar_1" "12"
	with(obj_shoe) {
	hspeed = -5;
	image_angle = 180;
	}
}

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 5B50F08C
/// @DnDArgument : "steps" "300"
alarm_set(0, 300);