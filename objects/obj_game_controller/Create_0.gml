/// @DnDAction : YoYo Games.Instance Variables.Set_Score
/// @DnDVersion : 1
/// @DnDHash : 13D0ABF9

__dnd_score = real(0);

/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
/// @DnDVersion : 1
/// @DnDHash : 7B012C69
/// @DnDArgument : "lives" "3"

__dnd_lives = real(5);
if room == roomLevel1{
	audio_play_sound(snd_Level1,0,true);
}
if room == roomLevel2{
	
	audio_play_sound(snd_level2,0,true);
}
if room == roomLevel3{

	audio_play_sound(snd_level3,0,true);
}