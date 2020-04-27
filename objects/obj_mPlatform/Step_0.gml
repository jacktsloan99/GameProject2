/// @description Collsion
// You can write your code in this editor
mask_index = spr_choice;

if(place_meeting(x+hspeed,y,obj_Wall)){
	while(!place_meeting(x+sign(hspeed),y,obj_Wall)){
		x += sign(hspeed)
	}
	hspeed = hspeed * -1;

	
}
if(place_meeting(x+hspeed,y,obj_GhostBlock)){
	while(!place_meeting(x+sign(hspeed),y,obj_GhostBlock)){
		x += sign(hspeed)
	}
	hspeed = hspeed * -1;

	
}

if (instance_exists(obj_Player)){
	if obj_Player.bbox_bottom > y || (obj_Player.key_down){
		mask_index = -1;
	}
	else{
		mask_index = spr_choice
	}
}