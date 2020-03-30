/// @description Pushing aad Pulling Finite State Machine
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

if keyboard_check_direct(ord("E"))
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
	//if characterDirection == false && hspeed == 0 {
		//sprite_index = spr_playerIdleLeft;
	//}
	//if characterDirection == true && hspeed == 0 {
		//sprite_index = spr_playerIdleRight;
	//}
	if characterDirection == false && hspeed == 0 {
		sprite_index = spr_playerIdleLeft;
	}
	if characterDirection == true && hspeed == 0 {
		sprite_index = spr_playerIdleRight;
	}
	obj_Box.gravity = 0;
	obj_Box.x = obj_Player.x;
	obj_Box.y = obj_Player.y - 60;
}

if keyboard_check_released(ord("E")) {
	if characterDirection == false && hspeed != 0 {
		sprite_index = spr_playerMoveL;
	}
	if characterDirection == true && hspeed != 0 {
		sprite_index = spr_playerMoveR;
	}
	if characterDirection == false && hspeed == 0 {
		sprite_index = spr_playerIdleLeft;
	}
	if characterDirection == true && hspeed == 0 {
		sprite_index = spr_playerIdleRight;
	}
}