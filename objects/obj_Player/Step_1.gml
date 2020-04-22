/// @description Finite State Machine
// You can write your code in this editor
if state == States.walking {
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

if mouse_check_button_pressed(mb_right) && grabTarget != noone {
	
	if abs(x-grabTarget.x)<abs(y-grabTarget.y){
			grabDirection = GrabAxis.vertical
	} else {
			grabDirection = GrabAxis.horizontal	
	}
	
	// change to state lifting - in step have it do the actual lifting code. 
	if state == States.lifting {
		state = States.walking;
		boxInHand = false;
		//plays dropping audio
		audio_play_sound(snd_dropping,1,false);
		with (grabTarget) speed = 0
	} else if instance_exists(grabTarget) && boxInHand == false {
		state = States.lifting;
		//plays audio for lifting box
		audio_play_sound(snd_lifting,1,false);
	}
}
