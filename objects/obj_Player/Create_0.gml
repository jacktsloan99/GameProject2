/// @description A lot Of Stuff
// You can write your code in this editor
/*
@Author Jack Sloan
@Version 3.18.2020
*/
key_down = false;
jumps = 0;
maxJumps = 2;
gravity_direction = 270;
globalvar characterDirection;
characterDirection = true;
// setting the variable for the bullet firing rate in step
globalvar characterThrowableCooldown;
characterThrowableCooldown = 0;
direction = point_direction(mouse_x,mouse_y,obj_Player.x,obj_Player.y);




// for the finite state machine for pushing
enum States {
	walking,
	lifting
}
enum GrabAxis {
	none,
	horizontal,
	vertical
}
state = States.walking
grabTarget = noone
grabDirection = GrabAxis.none
boxInHand = false;
inst = noone; 
// end of fintie state machine