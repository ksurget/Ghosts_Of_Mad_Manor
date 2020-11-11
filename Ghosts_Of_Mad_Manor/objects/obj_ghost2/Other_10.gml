/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 68B1D013
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "attacking"
attacking = false;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0982022B
/// @DnDArgument : "code" "path_change_point(return_path,0,x,y,100)"
path_change_point(return_path,0,x,y,100)

/// @DnDAction : YoYo Games.Paths.Start_Path
/// @DnDVersion : 1.1
/// @DnDHash : 6A3F42F1
/// @DnDArgument : "path" "return_path"
/// @DnDArgument : "speed" "6"
/// @DnDArgument : "relative" "true"
/// @DnDSaveInfo : "path" "return_path"
path_start(return_path, 6, path_action_stop, true);