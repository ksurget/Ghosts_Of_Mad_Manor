/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 65A290C1
event_inherited();

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3AA6DECA
/// @DnDArgument : "expr" "true"
/// @DnDArgument : "var" "obj_game.beat_game"
obj_game.beat_game = true;

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 79BD67A1
/// @DnDApplyTo : {obj_player}
with(obj_player) instance_destroy();

/// @DnDAction : YoYo Games.Rooms.Go_To_Room
/// @DnDVersion : 1
/// @DnDHash : 524AA313
/// @DnDArgument : "room" "rm_end"
/// @DnDSaveInfo : "room" "rm_end"
room_goto(rm_end);