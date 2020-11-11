/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6ADD258E
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "attacking"
attacking = false;

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 113E17C4
/// @DnDArgument : "obj" "obj_player"
/// @DnDSaveInfo : "obj" "obj_player"
var l113E17C4_0 = false;
l113E17C4_0 = instance_exists(obj_player);
if(l113E17C4_0)
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 434A191D
	/// @DnDParent : 113E17C4
	/// @DnDArgument : "expr" "stunned"
	/// @DnDArgument : "not" "1"
	if(!(stunned))
	{
		/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
		/// @DnDVersion : 1
		/// @DnDHash : 6E2D8F8E
		/// @DnDParent : 434A191D
		image_angle = 0;
	
		/// @DnDAction : YoYo Games.Random.Get_Random_Number
		/// @DnDVersion : 1
		/// @DnDHash : 407EABF5
		/// @DnDParent : 434A191D
		/// @DnDArgument : "var" "d20roll"
		/// @DnDArgument : "type" "1"
		/// @DnDArgument : "max" "19"
		d20roll = floor(random_range(0, 19 + 1));
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 34F01FF5
		/// @DnDParent : 434A191D
		/// @DnDArgument : "var" "d20roll"
		/// @DnDArgument : "op" "3"
		/// @DnDArgument : "value" "9"
		if(d20roll <= 9)
		{
			/// @DnDAction : YoYo Games.Instances.Set_Alarm
			/// @DnDVersion : 1
			/// @DnDHash : 4E75E7CB
			/// @DnDParent : 34F01FF5
			/// @DnDArgument : "steps" "40"
			/// @DnDArgument : "alarm" "1"
			alarm_set(1, 40);
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 6CE8DD77
		/// @DnDParent : 434A191D
		else
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 23BDA516
			/// @DnDParent : 6CE8DD77
			/// @DnDArgument : "var" "d20roll"
			/// @DnDArgument : "op" "3"
			/// @DnDArgument : "value" "14"
			if(d20roll <= 14)
			{
				/// @DnDAction : YoYo Games.Paths.Start_Path
				/// @DnDVersion : 1.1
				/// @DnDHash : 35D95DF9
				/// @DnDParent : 23BDA516
				/// @DnDArgument : "path" "circle_room"
				/// @DnDArgument : "speed" "4"
				/// @DnDArgument : "relative" "true"
				/// @DnDSaveInfo : "path" "circle_room"
				path_start(circle_room, 4, path_action_stop, true);
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 0E6219E4
				/// @DnDParent : 23BDA516
				/// @DnDArgument : "expr" "true"
				/// @DnDArgument : "var" "attacking"
				attacking = true;
			
				/// @DnDAction : YoYo Games.Instances.Set_Alarm
				/// @DnDVersion : 1
				/// @DnDHash : 68F17B2C
				/// @DnDParent : 23BDA516
				alarm_set(0, 30);
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 44C6C1E0
			/// @DnDParent : 6CE8DD77
			else
			{
				/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
				/// @DnDVersion : 1.1
				/// @DnDHash : 3038E432
				/// @DnDParent : 44C6C1E0
				/// @DnDArgument : "direction" "270"
				direction = 270;
			
				/// @DnDAction : YoYo Games.Movement.Set_Speed
				/// @DnDVersion : 1
				/// @DnDHash : 5AA0D6BC
				/// @DnDParent : 44C6C1E0
				/// @DnDArgument : "speed" "1"
				speed = 1;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 37C066B5
				/// @DnDParent : 44C6C1E0
				/// @DnDArgument : "expr" "true"
				/// @DnDArgument : "var" "attacking"
				attacking = true;
			
				/// @DnDAction : YoYo Games.Instances.Set_Alarm
				/// @DnDVersion : 1
				/// @DnDHash : 1113966E
				/// @DnDParent : 44C6C1E0
				/// @DnDArgument : "alarm" "3"
				alarm_set(3, 30);
			
				/// @DnDAction : YoYo Games.Instances.Set_Alarm
				/// @DnDVersion : 1
				/// @DnDHash : 33CBDD40
				/// @DnDParent : 44C6C1E0
				/// @DnDArgument : "steps" "300"
				/// @DnDArgument : "alarm" "10"
				alarm_set(10, 300);
			}
		}
	}
}