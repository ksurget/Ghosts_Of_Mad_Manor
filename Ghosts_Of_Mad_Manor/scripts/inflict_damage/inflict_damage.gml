/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 5DBA2CFE
/// @DnDComment : Script assets have changed$(13_10)for v2.3.0 see $(13_10)https://help.yoyogames.com/hc/en-us/articles/360005277377 $(13_10)for more information
/// @DnDArgument : "funcName" "inflict_damage"
/// @DnDArgument : "arg" "damage"
function inflict_damage(damage) 
{
	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 5487EA02
	/// @DnDParent : 5DBA2CFE
	/// @DnDArgument : "obj" "obj_player"
	/// @DnDSaveInfo : "obj" "obj_player"
	var l5487EA02_0 = false;
	l5487EA02_0 = instance_exists(obj_player);
	if(l5487EA02_0)
	{
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 5E7B9D65
		/// @DnDParent : 5487EA02
		/// @DnDArgument : "expr" "obj_player.invincible"
		/// @DnDArgument : "not" "1"
		if(!(obj_player.invincible))
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2F37017B
			/// @DnDParent : 5E7B9D65
			/// @DnDArgument : "expr" "-damage"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "obj_player.hitpoints"
			obj_player.hitpoints += -damage;
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5C16CC90
			/// @DnDParent : 5E7B9D65
			/// @DnDArgument : "var" "obj_player.hitpoints"
			/// @DnDArgument : "op" "3"
			if(obj_player.hitpoints <= 0)
			{
				/// @DnDAction : YoYo Games.Instances.Destroy_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 0376656C
				/// @DnDApplyTo : {obj_player}
				/// @DnDParent : 5C16CC90
				with(obj_player) instance_destroy();
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 3F1F4DD2
			/// @DnDParent : 5E7B9D65
			else
			{
				/// @DnDAction : YoYo Games.Instance Variables.Set_Score
				/// @DnDVersion : 1
				/// @DnDHash : 05764D6C
				/// @DnDApplyTo : {obj_game}
				/// @DnDParent : 3F1F4DD2
				/// @DnDArgument : "score" "-10"
				/// @DnDArgument : "score_relative" "1"
				with(obj_game) {
				if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
				__dnd_score += real(-10);
				}
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 770CE797
				/// @DnDParent : 3F1F4DD2
				/// @DnDArgument : "expr" "true"
				/// @DnDArgument : "var" "obj_player.invincible"
				obj_player.invincible = true;
			
				/// @DnDAction : YoYo Games.Instances.Set_Alarm
				/// @DnDVersion : 1
				/// @DnDHash : 7095C68D
				/// @DnDApplyTo : {obj_player}
				/// @DnDParent : 3F1F4DD2
				/// @DnDArgument : "steps" "60"
				with(obj_player) {
				alarm_set(0, 60);
				
				}
			
				/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
				/// @DnDVersion : 1
				/// @DnDHash : 02ABBF88
				/// @DnDApplyTo : {obj_player}
				/// @DnDParent : 3F1F4DD2
				/// @DnDArgument : "value" ".5"
				/// @DnDArgument : "instvar" "13"
				with(obj_player) {
				image_alpha = .5;
				}
			}
		}
	}
}