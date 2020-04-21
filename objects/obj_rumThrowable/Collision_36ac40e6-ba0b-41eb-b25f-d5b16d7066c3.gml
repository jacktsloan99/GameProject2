/// @description Insert description here
// You can write your code in this editor
audio_play_sound(snd_bottle,1,false);
if(other.hspeed > 0){
		with(other) instance_change(obj_FlyerDeathR,true);
	} else {
		with(other) instance_change(obj_FlyerDeathL,true);
	}