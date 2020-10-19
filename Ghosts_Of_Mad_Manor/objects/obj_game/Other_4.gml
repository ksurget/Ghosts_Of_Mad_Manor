/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 53A2F032
/// @DnDArgument : "obj" "obj_spawner_entrance_hall"
/// @DnDSaveInfo : "obj" "obj_spawner_entrance_hall"
var l53A2F032_0 = false;
l53A2F032_0 = instance_exists(obj_spawner_entrance_hall);
if(l53A2F032_0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 1776FCCB
	/// @DnDApplyTo : {obj_spawner_entrance_hall}
	/// @DnDParent : 53A2F032
	/// @DnDArgument : "steps" "60"
	with(obj_spawner_entrance_hall) {
	alarm_set(0, 60);
	
	}
}