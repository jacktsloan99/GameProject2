/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_Player)){
	if obj_Player.y +(obj_Player.sprite_height/2) > y {
		mask_index = -1;
	}
	else{
		mask_index = spr_mPlatforms
	}
}