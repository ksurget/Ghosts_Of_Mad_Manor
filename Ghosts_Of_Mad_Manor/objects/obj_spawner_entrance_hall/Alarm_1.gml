/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 28860462
/// @DnDArgument : "cond" "i < room_height-50"
/// @DnDArgument : "expr" "i += 100"
for(i = 0; i < room_height-50; i += 100) {
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 071CD4AF
	/// @DnDParent : 28860462
	/// @DnDArgument : "ypos" "i+50"
	/// @DnDArgument : "objectid" "obj_shoe"
	/// @DnDSaveInfo : "objectid" "obj_shoe"
	instance_create_layer(0, i+50, "Instances", obj_shoe);

	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 7A853716
	/// @DnDInput : 2
	/// @DnDApplyTo : {obj_shoe}
	/// @DnDParent : 28860462
	/// @DnDArgument : "value" "5"
	/// @DnDArgument : "instvar" "4"
	/// @DnDArgument : "instvar_1" "12"
	with(obj_shoe) {
	hspeed = 5;
	image_angle = 0;
	}
}

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 2BAE2307
/// @DnDArgument : "steps" "300"
/// @DnDArgument : "alarm" "2"
alarm_set(2, 300);