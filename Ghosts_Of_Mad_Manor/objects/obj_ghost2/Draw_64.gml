/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
/// @DnDVersion : 1
/// @DnDHash : 53BEB980
/// @DnDArgument : "x1" "299"
/// @DnDArgument : "y1" "869"
/// @DnDArgument : "x2" "1299"
/// @DnDArgument : "y2" "889"
/// @DnDArgument : "value" "hitpoints"
/// @DnDArgument : "backcol" "$FF000000"
/// @DnDArgument : "barcol" "$FF0094B2"
/// @DnDArgument : "mincol" "$FF2323B2"
/// @DnDArgument : "maxcol" "$FF33CC14"
draw_healthbar(299, 869, 1299, 889, hitpoints, $FF000000 & $FFFFFF, $FF2323B2 & $FFFFFF, $FF33CC14 & $FFFFFF, 0, (($FF000000>>24) != 0), (($FF0094B2>>24) != 0));

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 783F0F16
/// @DnDArgument : "font" "boss_font"
/// @DnDSaveInfo : "font" "boss_font"
draw_set_font(boss_font);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 176DDA69
/// @DnDArgument : "x" "349"
/// @DnDArgument : "y" "836"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "var" ""Jebediah Wallace""
draw_text(349, 836,  + string("Jebediah Wallace"));