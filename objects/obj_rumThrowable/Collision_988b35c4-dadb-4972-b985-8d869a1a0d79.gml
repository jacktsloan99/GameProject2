/// @description Insert description here
// You can write your code in this editor
// destory the enemy if it collides with the rum bottle 
audio_play_sound(snd_bottle,1,false);
if(other.hspeed > 0){
		with(other) instance_change(obj_SkeletonDeathR,true);
	} else {
		with(other) instance_change(obj_SkeletonDeathL,true);
	}
