/// @DnDAction : YoYo Games.Instance Variables.Set_Score
/// @DnDVersion : 1
/// @DnDHash : 7A9F2A18
/// @DnDApplyTo : {obj_game}
/// @DnDArgument : "score" "obj_ghost1.score_value"
/// @DnDArgument : "score_relative" "1"
with(obj_game) {
if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
__dnd_score += real(obj_ghost1.score_value);
}