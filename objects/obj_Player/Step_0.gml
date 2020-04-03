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
//allows player to double jump 
if (jumps == 0 and vspeed < 0){
	sprite_index = spr_playerDoubleR
	image_speed = 1.5;
}


//Keeps player from falling through the floor

// idle animations - running animations are taken care of by the Key Down Events
if keyboard_check(vk_nokey)
{
	if (characterDirection == true){
		sprite_index = spr_playerIdleRight;
		image_speed = 1.5;
	}
	else{
		sprite_index = spr_playerIdleLeft;
		image_speed = 1.5;
	}
}

// Following the Mouse Code
point_direction(mouse_x,mouse_y,obj_Player.x,obj_Player.y);

// Throwable object code 
var leftMouseClickCheck;
leftMouseClickCheck = mouse_check_button(mb_left);
if (leftMouseClickCheck)
{
	if(characterThrowableCooldown <= 0)
	{
		instance_create_layer(x, y, "Layer_Bullet", obj_rumThrowable);
		// sets how long inbetween each rum is thrown
		characterThrowableCooldown = 32;
	}
	characterThrowableCooldown += -1;
}