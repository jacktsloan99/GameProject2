/// @description Finite State Machine
// You can write your code in this editor
if state = States.regular {
	var bestDistance = maxGrabDistance
	grabTarget = noone;
	with obj_Box {
		var thisDistance = point_distance(x,y,other.x,other.y);
		if thisDistance < bestDistance {
			bestDistance = thisDistance
			other.grabTarget = id
		}
	}
}

if mouse_check_button(mb_right)
//keyboard_check_direct(ord("E"))
{
	
	if state = States.pushing {
		state = States.regular
		with (grabTarget) speed = 0
	}
	else if instance_exists(grabTarget){
		state = States.pushing
		if abs(x-grabTarget.x)<abs(y-grabTarget.y){
			grabDirection = GrabAxis.vertical
		} else {
			grabDirection = GrabAxis.horizontal
		}
	}
	//for seting up the sprites for moving
	// The carrying animation is in the A/D key down events
	// If the direction is Left and not moving change to idle
	if characterDirection == false && hspeed == 0 {
		sprite_index = spr_carryingIdleL;
	}
	// If the direction is right and not moving change to idle
	if characterDirection == true && hspeed == 0 {
		sprite_index = spr_carryingIdleR;
	}
	// To prevent the issue of the boxes collecting on top of one another
	// It captures the ID of the specifc box and will change it to the 
	// character x and above the players Y
	var inst;
	inst = instance_place(obj_Player.x, obj_Player.y, obj_Box)
	if inst != noone {
		//inst.speed = 10;
		inst.gravity = 0;
		inst.hspeed = obj_Player.hspeed + 2
		inst.vspeed = obj_Player.vspeed + 2
		inst.x = obj_Player.x;
		inst.y = obj_Player.y - 45;
	}
}

if mouse_check_button_released(mb_right) {
	// When you release the E key
	// change the spirte to left if you are still moving
	state = States.regular;
	if characterDirection == false && hspeed != 0 {
		sprite_index = spr_playerMoveL;
	}
	// change the spirte to right running anition if you are still moving
	if characterDirection == true && hspeed != 0 {
		sprite_index = spr_playerMoveR;
	}
	// change the spirte to left if you are no longer carrying the box and not moving
	if characterDirection == false && hspeed == 0 {
		sprite_index = spr_playerIdleLeft;
	}
	// change the spirte to right if you are no longer carrying the box and not moving
	if characterDirection == true && hspeed == 0 {
		sprite_index = spr_playerIdleRight;
	}
}