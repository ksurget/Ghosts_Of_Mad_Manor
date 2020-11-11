/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
/// @DnDVersion : 1.1
/// @DnDHash : 718098D2
/// @DnDArgument : "direction" "270"
direction = 270;

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 061C22C5
/// @DnDArgument : "obj" "obj_player"
/// @DnDSaveInfo : "obj" "obj_player"
var l061C22C5_0 = false;
l061C22C5_0 = instance_exists(obj_player);
if(l061C22C5_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
	/// @DnDVersion : 1
	/// @DnDHash : 68009504
	/// @DnDParent : 061C22C5
	/// @DnDArgument : "direction" "point_direction(x,y,obj_player.x,obj_player.y) + random_range(-10,10)"
	direction = point_direction(x,y,obj_player.x,obj_player.y) + random_range(-10,10);
}

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 4A656250
/// @DnDArgument : "speed" "shot_speed"
speed = shot_speed;