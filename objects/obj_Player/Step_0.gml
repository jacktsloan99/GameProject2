/// @description Insert description here
// You can write your code in this editor
/*
@Author Jack Sloan
@Version 3.18.2020
*/
key_down = keyboard_check(ord("S"))
if(instance_place(x,y+1,obj_mPlatform)){
var ride = instance_place(x,y+1,obj_mPlatform)
hspeed := ride.hspeed
}
else
{
hspeed = 0;
}



//Checks for blocks that can be walked on.
if place_meeting(x,y+1,obj_Wall) or place_meeting(x,y+1,obj_Platform) or place_meeting(x,y+1,obj_TrapDoor){
 gravity = 0;

} else {
gravity = .5;
}
//allows player to double jump 
if (jumps == 0 and vspeed < 0 and characterDirection == true){
	sprite_index = spr_playerDoubleR
	image_speed = 1.5;
}
if (jumps == 0 and vspeed < 0 and characterDirection == false){
	sprite_index = spr_playerDoubleL
	image_speed = 1.5;
}



// idle animations for standing and carrying box
if keyboard_check(vk_nokey) {
	if state == States.lifting {
		//If the direction is left and not moving change to idle
		if (characterDirection == false) {
			sprite_index = spr_carryingIdleL;
			image_speed = 1.5;
		}
		// If the direction is right and not moving change to idle
		else if (characterDirection == true) {
			sprite_index = spr_carryingIdleR;
			image_speed = 1.5;
		}
	} else {

		if (characterDirection == true){
			sprite_index = spr_playerIdleRight;
			image_speed = 1.5;
		}
		else if (characterDirection == false){
			sprite_index = spr_playerIdleLeft;
			image_speed = 1.5;
		}
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
		 //sets how long inbetween each rum is thrown
		characterThrowableCooldown = 24;
	}
	characterThrowableCooldown += -1;
}

// Finite state machine / Box movement
if state == States.lifting {
	// show_debug_message(boxInHand)
		// How the box moves above player and stays - will fall back down due to gravity
		if boxInHand == false {
			inst = instance_place(obj_Player.x, obj_Player.y, obj_Box)
			boxInHand = true;
		} else {
			if inst != noone {
				inst.gravity = 0;
				inst.hspeed = obj_Player.hspeed + 2
				inst.vspeed = obj_Player.vspeed + 10
				inst.x = obj_Player.x;
				inst.y = obj_Player.y - 50;
			}
		}
	}