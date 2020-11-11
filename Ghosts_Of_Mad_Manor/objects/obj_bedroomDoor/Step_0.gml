/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 798ED1FE
/// @DnDArgument : "obj" "obj_ghost1"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "obj" "obj_ghost1"
var l798ED1FE_0 = false;
l798ED1FE_0 = instance_exists(obj_ghost1);
if(!l798ED1FE_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 40D11FEA
	/// @DnDParent : 798ED1FE
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "door_unlocked"
	door_unlocked = true;

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 2B02DE0E
	/// @DnDParent : 798ED1FE
	/// @DnDArgument : "spriteind" "spr_door_unlocked"
	/// @DnDSaveInfo : "spriteind" "spr_door_unlocked"
	sprite_index = spr_door_unlocked;
	image_index = 0;
}