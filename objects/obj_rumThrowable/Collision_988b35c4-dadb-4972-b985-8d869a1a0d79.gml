/// @description Insert description here
// You can write your code in this editor
// destory the enemy if it collides with the rum bottle 
if(other.hspeed > 0){
		with(other) instance_change(obj_SkeletonDeathR,true);
	} else {
		with(other) instance_change(obj_SkeletonDeathL,true);
	}
instance_destroy();