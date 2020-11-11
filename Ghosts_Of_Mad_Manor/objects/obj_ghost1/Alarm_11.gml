/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 44DEE8E7
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "stunned"
stunned = false;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 64BDDE7F
/// @DnDArgument : "expr" "heal_up"
/// @DnDArgument : "var" "hitpoints"
hitpoints = heal_up;

/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
/// @DnDVersion : 1
/// @DnDHash : 148E51C8
image_speed = 1;

/// @DnDAction : YoYo Games.Instances.Color_Sprite
/// @DnDVersion : 1
/// @DnDHash : 6363AFA8
image_blend = $FFFFFFFF & $ffffff;
image_alpha = ($FFFFFFFF >> 24) / $ff;