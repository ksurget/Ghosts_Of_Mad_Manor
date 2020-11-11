/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 446C3841
/// @DnDArgument : "obj" "obj_player"
/// @DnDSaveInfo : "obj" "obj_player"
var l446C3841_0 = false;
l446C3841_0 = instance_exists(obj_player);
if(l446C3841_0)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
	/// @DnDVersion : 1
	/// @DnDHash : 1C5EEB16
	/// @DnDParent : 446C3841
	/// @DnDArgument : "x1" "8"
	/// @DnDArgument : "y1" "8"
	/// @DnDArgument : "x2" "256"
	/// @DnDArgument : "y2" "16"
	/// @DnDArgument : "value" "obj_player.hitpoints"
	/// @DnDArgument : "backcol" "$FF000000"
	/// @DnDArgument : "barcol" "$FF00AACC"
	/// @DnDArgument : "mincol" "$FF0000CC"
	/// @DnDArgument : "maxcol" "$FF26E500"
	draw_healthbar(8, 8, 256, 16, obj_player.hitpoints, $FF000000 & $FFFFFF, $FF0000CC & $FFFFFF, $FF26E500 & $FFFFFF, 0, (($FF000000>>24) != 0), (($FF00AACC>>24) != 0));

	/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
	/// @DnDVersion : 1
	/// @DnDHash : 3F0FBAE9
	/// @DnDParent : 446C3841
	/// @DnDArgument : "x" "8"
	/// @DnDArgument : "y" "20"
	if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
	draw_text(8, 20, string("Score: ") + string(__dnd_score));
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 71112539
else
{
	/// @DnDAction : YoYo Games.Drawing.Set_Alignment
	/// @DnDVersion : 1.1
	/// @DnDHash : 0D7D05C1
	/// @DnDParent : 71112539
	/// @DnDArgument : "halign" "fa_center"
	/// @DnDArgument : "valign" "fa_bottom"
	draw_set_halign(fa_center);
	draw_set_valign(fa_bottom);

	/// @DnDAction : YoYo Games.Drawing.Set_Font
	/// @DnDVersion : 1
	/// @DnDHash : 26E0E663
	/// @DnDParent : 71112539
	/// @DnDArgument : "font" "big_font"
	/// @DnDSaveInfo : "font" "big_font"
	draw_set_font(big_font);

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 14EA1187
	/// @DnDParent : 71112539
	/// @DnDArgument : "expr" "beat_game"
	if(beat_game)
	{
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 02E93966
		/// @DnDParent : 14EA1187
		/// @DnDArgument : "color" "$FF00AACC"
		draw_set_colour($FF00AACC & $ffffff);
		var l02E93966_0=($FF00AACC >> 24);
		draw_set_alpha(l02E93966_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 0B76B8BC
		/// @DnDParent : 14EA1187
		/// @DnDArgument : "x" "799"
		/// @DnDArgument : "y" "419"
		/// @DnDArgument : "caption" ""
		/// @DnDArgument : "var" ""CONGRATULATIONS YOU WON""
		draw_text(799, 419,  + string("CONGRATULATIONS YOU WON"));
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 2692046E
	/// @DnDParent : 71112539
	else
	{
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 5D870F82
		/// @DnDParent : 2692046E
		/// @DnDArgument : "expr" "game_over"
		if(game_over)
		{
			/// @DnDAction : YoYo Games.Drawing.Draw_Value
			/// @DnDVersion : 1
			/// @DnDHash : 1903E009
			/// @DnDParent : 5D870F82
			/// @DnDArgument : "x" "799"
			/// @DnDArgument : "y" "419"
			/// @DnDArgument : "caption" ""
			/// @DnDArgument : "var" ""GAME OVER""
			draw_text(799, 419,  + string("GAME OVER"));
		}
	}

	/// @DnDAction : YoYo Games.Drawing.Set_Font
	/// @DnDVersion : 1
	/// @DnDHash : 49CA9D82
	/// @DnDParent : 71112539
	/// @DnDArgument : "font" "score_font"
	/// @DnDSaveInfo : "font" "score_font"
	draw_set_font(score_font);

	/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
	/// @DnDVersion : 1
	/// @DnDHash : 1ADED40D
	/// @DnDParent : 71112539
	/// @DnDArgument : "x" "799"
	/// @DnDArgument : "y" "476"
	/// @DnDArgument : "caption" ""Your Score: ""
	if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
	draw_text(799, 476, string("Your Score: ") + string(__dnd_score));

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 32257B02
	/// @DnDParent : 71112539
	/// @DnDArgument : "x" "799"
	/// @DnDArgument : "y" "519"
	/// @DnDArgument : "caption" ""
	/// @DnDArgument : "var" ""PRESS CTRL + R TO RESTART""
	draw_text(799, 519,  + string("PRESS CTRL + R TO RESTART"));
}