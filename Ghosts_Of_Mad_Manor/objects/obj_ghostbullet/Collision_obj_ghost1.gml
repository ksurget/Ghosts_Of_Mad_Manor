/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5EFE9179
/// @DnDArgument : "expr" "-damage"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "other.hitpoints"
other.hitpoints += -damage;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 496A6694
/// @DnDArgument : "var" "other.hitpoints"
/// @DnDArgument : "op" "3"
if(other.hitpoints <= 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 340EBDEE
	/// @DnDParent : 496A6694
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "other.stunned"
	other.stunned = true;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 30347AA2
	/// @DnDParent : 496A6694
	/// @DnDArgument : "var" "other.speed"
	other.speed = 0;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 068316A4
	/// @DnDApplyTo : other
	/// @DnDParent : 496A6694
	/// @DnDArgument : "steps" "stun_time"
	/// @DnDArgument : "alarm" "11"
	with(other) {
	alarm_set(11, stun_time);
	
	}
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 5E06D67E
instance_destroy();