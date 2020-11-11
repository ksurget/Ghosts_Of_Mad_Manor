/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 0644828C
/// @DnDArgument : "expr" "stunned"
if(stunned)
{
	/// @DnDAction : YoYo Games.Paths.Stop_Path
	/// @DnDVersion : 1
	/// @DnDHash : 75B9DCB4
	/// @DnDParent : 0644828C
	path_end();

	/// @DnDAction : YoYo Games.Instances.Color_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 6A3DB3BA
	/// @DnDParent : 0644828C
	/// @DnDArgument : "colour" "$FF4444E5"
	image_blend = $FF4444E5 & $ffffff;
	image_alpha = ($FF4444E5 >> 24) / $ff;

	/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 49B33FE4
	/// @DnDParent : 0644828C
	/// @DnDArgument : "speed" "0"
	image_speed = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4FD27E34
	/// @DnDParent : 0644828C
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "aggro"
	aggro = false;

	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 4AB51C3F
	/// @DnDParent : 0644828C
	/// @DnDArgument : "code" "hspeed= clamp(hspeed,-3,3)$(13_10)vspeed= clamp(vspeed,-3,3)"
	hspeed= clamp(hspeed,-3,3)
	vspeed= clamp(vspeed,-3,3)
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 3EEA2D73
else
{
	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 47BE9AD1
	/// @DnDParent : 3EEA2D73
	/// @DnDArgument : "obj" "obj_player"
	/// @DnDSaveInfo : "obj" "obj_player"
	var l47BE9AD1_0 = false;
	l47BE9AD1_0 = instance_exists(obj_player);
	if(l47BE9AD1_0)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2832F80A
		/// @DnDParent : 47BE9AD1
		/// @DnDArgument : "var" "d20roll"
		/// @DnDArgument : "op" "3"
		/// @DnDArgument : "value" "8"
		if(d20roll <= 8)
		{
			/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
			/// @DnDVersion : 1
			/// @DnDHash : 49824067
			/// @DnDParent : 2832F80A
			/// @DnDArgument : "angle" "spin_speed"
			/// @DnDArgument : "angle_relative" "1"
			image_angle += spin_speed;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 3A60AE72
		/// @DnDParent : 47BE9AD1
		else
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0C6E90C0
			/// @DnDParent : 3A60AE72
			/// @DnDArgument : "var" "d20roll"
			/// @DnDArgument : "op" "3"
			/// @DnDArgument : "value" "14"
			if(d20roll <= 14)
			{
				/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
				/// @DnDVersion : 1
				/// @DnDHash : 7970A57A
				/// @DnDParent : 0C6E90C0
				/// @DnDArgument : "angle" "10"
				/// @DnDArgument : "angle_relative" "1"
				image_angle += 10;
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 784A58BE
			/// @DnDParent : 3A60AE72
			else
			{
				/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
				/// @DnDVersion : 1
				/// @DnDHash : 2E409B90
				/// @DnDParent : 784A58BE
				/// @DnDArgument : "angle" "-20"
				/// @DnDArgument : "angle_relative" "1"
				image_angle += -20;
			}
		}
	}
}