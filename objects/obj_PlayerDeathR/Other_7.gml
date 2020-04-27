/// @description Insert description here
// You can write your code in this editor
audio_play_sound(snd_PlayerDeath,1,false);
if room == roomLevel1{
	audio_stop_sound(snd_Level1);
}
if room == roomLevel2{
	
	audio_stop_sound(snd_level2);
}
if room == roomLevel3{

	audio_stop_sound(snd_level3);
}
room_restart();