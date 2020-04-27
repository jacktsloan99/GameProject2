/// @description Destroy / Increase score
// You can write your code in this editor
// destory the enemy if it collides with the rum bottle 
audio_play_sound(snd_bottle,1,false);
if(other.hspeed > 0){
		obj_game_controller.__dnd_score += real(20);
		with(other) instance_change(obj_SkeletonDeathR,true);
	} else {
		obj_game_controller.__dnd_score += real(20);
		with(other) instance_change(obj_SkeletonDeathL,true);
	}
instance_destroy()