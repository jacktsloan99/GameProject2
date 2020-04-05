/// @description Insert description here
// You can write your code in this editor

mask_index = spr_vPlatform;


if(place_meeting(x,y + vspeeds ,obj_Wall)){
	while(!place_meeting(x,y + sign(vspeeds),obj_Wall)){
		y += sign(vpseeds)
	}
	

	
}

if (instance_exists(obj_Player)) {
	if obj_Player.bbox_bottom > y{
		mask_index = -1;
	}
	else{
		mask_index = spr_mPlatforms
		if( place_meeting(x,y-1,obj_Player)){
			obj_Player.vspeed = vspeeds;
		}
		else{
			obj_Player.vspeed = 0;
		}
	}
}
