/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5BBD63F7
/// @DnDArgument : "expr" "sign(random_range(-10,10))"
/// @DnDArgument : "var" "dir_flip"
dir_flip = sign(random_range(-10,10));

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 4395EA0B
/// @DnDArgument : "steps" "random_range(90,180)"
/// @DnDArgument : "alarm" "10"
alarm_set(10, random_range(90,180));