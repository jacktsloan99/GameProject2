/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
/// @DnDVersion : 1
/// @DnDHash : 5DB6CA75
/// @DnDArgument : "x" "50"
/// @DnDArgument : "y" "50"
if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
draw_text(50, 50, string("Score: ") + string(__dnd_score));

/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Lives
/// @DnDVersion : 1
/// @DnDHash : 1D970E86
/// @DnDArgument : "x" "800"
/// @DnDArgument : "y" "35"
/// @DnDArgument : "sprite" "spr_playerIdleRight"
/// @DnDSaveInfo : "sprite" "177b57e7-539e-49d3-8ced-86657062384d"
var l1D970E86_0 = sprite_get_width(spr_playerIdleRight);
var l1D970E86_1 = 0;
if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
for(var l1D970E86_2 = __dnd_lives; l1D970E86_2 > 0; --l1D970E86_2) {
	draw_sprite(spr_playerIdleRight, 0, 800 + l1D970E86_1, 35);
	l1D970E86_1 += l1D970E86_0;
}

/// @DnDAction : YoYo Games.Instance Variables.Get_Lives
/// @DnDVersion : 1
/// @DnDHash : 2DCDFAAD
/// @DnDArgument : "var" "currentLifes"
if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
currentLifes = __dnd_lives;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 21CEB4A2
/// @DnDArgument : "var" "currentLifes"
/// @DnDArgument : "op" "3"
if(currentLifes <= 0)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 493E98A2
	/// @DnDParent : 21CEB4A2
	/// @DnDArgument : "x" "x"
	/// @DnDArgument : "y" "y"
	/// @DnDArgument : "xscale" "2"
	/// @DnDArgument : "yscale" "2"
	/// @DnDArgument : "caption" ""
	/// @DnDArgument : "text" ""Oh no! Game Over! Press R to Restart the Game!""
	draw_text_transformed(x, y, "" + string("Oh no! Game Over! Press R to Restart the Game!"), 2, 2, 0);
}