/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 3884C57A
/// @DnDArgument : "xpos" "random_range(144,878)"
/// @DnDArgument : "ypos" "random_range(280,684)"
/// @DnDArgument : "objectid" "obj_bible"
/// @DnDSaveInfo : "objectid" "obj_bible"
instance_create_layer(random_range(144,878), random_range(280,684), "Instances", obj_bible);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 62C04AA5
/// @DnDArgument : "steps" "random_range(210,390)"
/// @DnDArgument : "alarm" "9"
alarm_set(9, random_range(210,390));