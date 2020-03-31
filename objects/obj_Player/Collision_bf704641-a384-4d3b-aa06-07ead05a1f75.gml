/// @description Insert description here
// You can write your code in this editor
/*
@Author Jack Sloan
@Version 3.18.2020
*/

if(y < other.y+8) and (vspeed>0){

//audio_play_sound(snd_kill_monster,0,0);
instance_destroy(other);
__dnd_score += real(25);
vspeed = -6;

} else {
	with(obj_game_controller) {
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
	var currentLives = __dnd_lives;
}

with(obj_game_controller) {
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
	__dnd_lives += real(-1);
}
	if(currentLives > 0)
{
	instance_change(obj_Player, true);
	room_restart()
}
}