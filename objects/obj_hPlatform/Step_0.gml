/// @description Insert description here
// You can write your code in this editor
mask_index = spr_hPlatform;
if (place_meeting(x+hspeed,y,obj_Wall)){
	while (!place_meeting(x+sign(hspeed),y,obj_Wall)){
		x += sign(hspeed)
	}
	hspeed = 0;
	direction = (direction + 180) % 360;
}
x+= hspeed;

if (instance_exists(obj_Player)){
	if obj_Player.y +(obj_Player.sprite_height/2) > y {
		mask_index = -1;
	}
	else{
		mask_index = spr_mPlatforms
	}
}