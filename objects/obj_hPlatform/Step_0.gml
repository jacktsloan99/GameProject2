/// @description Insert description here
// You can write your code in this editor
mask_index = spr_hPlatform;

if(place_meeting(x+hspeed,y,obj_Wall)){
	while(!place_meeting(x+sign(hspeed),y,obj_Wall)){
		x += sign(hspeed)
	}
	hspeed = hspeed * -1;

	
}

if (instance_exists(obj_Player)) {
	if obj_Player.bbox_bottom > y{
		mask_index = -1;
	}
	else{
		mask_index = spr_mPlatforms
		if( place_meeting(x,y-1,obj_Player)){
			obj_Player.hspeed = hspeed;
		}
		else{
			obj_Player.hspeed = 0;
		}
	}
}
