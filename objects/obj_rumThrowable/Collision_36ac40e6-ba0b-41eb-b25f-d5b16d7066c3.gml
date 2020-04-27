/// @description Destroy / Increase score
// You can write your code in this editor
audio_play_sound(snd_bottle,1,false);
if(other.hspeed > 0){
		obj_game_controller.__dnd_score += real(25);
		with(other) instance_change(obj_FlyerDeathR,true);
	} else {
		obj_game_controller.__dnd_score += real(25);
		with(other) instance_change(obj_FlyerDeathL,true);
	}
	instance_destroy()