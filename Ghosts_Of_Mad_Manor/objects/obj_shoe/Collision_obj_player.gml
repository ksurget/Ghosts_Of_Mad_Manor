/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 75365B5F
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "obj_suck"
/// @DnDSaveInfo : "object" "obj_suck"
var l75365B5F_0 = instance_place(x + 0, y + 0, obj_suck);
if ((l75365B5F_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 284234AF
	/// @DnDParent : 75365B5F
	/// @DnDArgument : "expr" "caught"
	if(caught)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 19344557
		/// @DnDParent : 284234AF
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "obj_player.can_suck"
		obj_player.can_suck = false;
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 25D05F0B
		/// @DnDParent : 284234AF
		instance_destroy();
	}
}