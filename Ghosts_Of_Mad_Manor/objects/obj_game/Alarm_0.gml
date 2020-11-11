/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 5FC5B663
/// @DnDArgument : "expr" "game_over"
/// @DnDArgument : "not" "1"
if(!(game_over))
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 4FB40BB9
	/// @DnDParent : 5FC5B663
	/// @DnDArgument : "expr" "beat_game"
	/// @DnDArgument : "not" "1"
	if(!(beat_game))
	{
		/// @DnDAction : YoYo Games.Instance Variables.Set_Score
		/// @DnDVersion : 1
		/// @DnDHash : 541E81DA
		/// @DnDParent : 4FB40BB9
		/// @DnDArgument : "score" "-1"
		/// @DnDArgument : "score_relative" "1"
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		__dnd_score += real(-1);
	
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 4444FC31
		/// @DnDParent : 4FB40BB9
		/// @DnDArgument : "steps" "90"
		alarm_set(0, 90);
	}
}