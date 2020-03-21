/// @description Insert description here
// You can write your code in this editor
/*
@Author Jack Sloan
@Version 3.18.2020
*/
//Checks for blocks that can be walked on.
if place_meeting(x,y+1,obj_Wall) or place_meeting(x,y+1,obj_Platform){
 gravity = 0;
} else {
gravity = .5;
}

//Keeps player from falling through the floor


// idle sprite
if keyboard_check(vk_nokey)
{
	if (characterDirection == true){
		sprite_index = spr_playerIdleLeft;
		image_speed = 1.5;
	}
	else{
		sprite_index = spr_playerIdleRight;
		image_speed = 1.5;
	}
}