/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 0644828C
/// @DnDArgument : "expr" "stunned"
if(stunned)
{
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
	/// @DnDHash : 6A30EEC8
	/// @DnDParent : 3EEA2D73
	/// @DnDArgument : "obj" "obj_player"
	/// @DnDSaveInfo : "obj" "obj_player"
	var l6A30EEC8_0 = false;
	l6A30EEC8_0 = instance_exists(obj_player);
	if(l6A30EEC8_0)
	{
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 309C1194
		/// @DnDParent : 6A30EEC8
		/// @DnDArgument : "expr" "aggro"
		if(aggro)
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0EA5184F
			/// @DnDParent : 309C1194
			/// @DnDArgument : "var" "distance_to_object(obj_player)"
			/// @DnDArgument : "op" "1"
			/// @DnDArgument : "value" "comfy_dist"
			if(distance_to_object(obj_player) < comfy_dist)
			{
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 03C6D61D
				/// @DnDParent : 0EA5184F
				/// @DnDArgument : "var" "distance_to_object(obj_player)"
				/// @DnDArgument : "op" "1"
				/// @DnDArgument : "value" "60"
				if(distance_to_object(obj_player) < 60)
				{
					/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
					/// @DnDVersion : 1
					/// @DnDHash : 5C65C101
					/// @DnDParent : 03C6D61D
					/// @DnDArgument : "x" "obj_player.x"
					/// @DnDArgument : "y" "obj_player.y"
					direction = point_direction(x, y, obj_player.x, obj_player.y);
				
					/// @DnDAction : YoYo Games.Movement.Set_Speed
					/// @DnDVersion : 1
					/// @DnDHash : 1C01C103
					/// @DnDParent : 03C6D61D
					/// @DnDArgument : "speed" "-2"
					speed = -2;
				}
			
				/// @DnDAction : YoYo Games.Common.Else
				/// @DnDVersion : 1
				/// @DnDHash : 3F6C2730
				/// @DnDParent : 0EA5184F
				else
				{
					/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
					/// @DnDVersion : 1
					/// @DnDHash : 12C83C11
					/// @DnDParent : 3F6C2730
					/// @DnDArgument : "direction" "point_direction(x,y,obj_player.x,obj_player.y)+(dir_flip*90)"
					direction = point_direction(x,y,obj_player.x,obj_player.y)+(dir_flip*90);
				
					/// @DnDAction : YoYo Games.Movement.Set_Speed
					/// @DnDVersion : 1
					/// @DnDHash : 5A17CC22
					/// @DnDParent : 3F6C2730
					/// @DnDArgument : "speed" "3"
					speed = 3;
				}
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 587A4E16
			/// @DnDParent : 309C1194
			else
			{
				/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
				/// @DnDVersion : 1
				/// @DnDHash : 2D2ED05E
				/// @DnDParent : 587A4E16
				/// @DnDArgument : "x" "obj_player.x"
				/// @DnDArgument : "y" "obj_player.y"
				direction = point_direction(x, y, obj_player.x, obj_player.y);
			
				/// @DnDAction : YoYo Games.Movement.Set_Speed
				/// @DnDVersion : 1
				/// @DnDHash : 2287B76E
				/// @DnDParent : 587A4E16
				/// @DnDArgument : "speed" "2"
				speed = 2;
			}
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 25C6379E
		/// @DnDParent : 6A30EEC8
		else
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6EAFC47B
			/// @DnDParent : 25C6379E
			/// @DnDArgument : "var" "distance_to_object(obj_player)"
			/// @DnDArgument : "op" "1"
			/// @DnDArgument : "value" "aggro_range"
			if(distance_to_object(obj_player) < aggro_range)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 32FF908B
				/// @DnDParent : 6EAFC47B
				/// @DnDArgument : "expr" "true"
				/// @DnDArgument : "var" "aggro"
				aggro = true;
			
				/// @DnDAction : YoYo Games.Instances.Set_Alarm
				/// @DnDVersion : 1
				/// @DnDHash : 148077F1
				/// @DnDParent : 6EAFC47B
				/// @DnDArgument : "steps" "1"
				alarm_set(0, 1);
			}
		}
	}
}