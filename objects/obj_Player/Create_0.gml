/// @description Insert description here
// You can write your code in this editor
/*
@Author Jack Sloan
@Version 3.18.2020
*/
jumps = 0;
maxJumps = 2;
gravity_direction = 270;
globalvar characterDirection;
characterDirection = true;
// setting the variable for the bullet firing rate in step
globalvar characterThrowableCooldown;
characterThrowableCooldown = 0;
direction = point_direction(mouse_x,mouse_y,obj_Player.x,obj_Player.y);


/// hopfully will let me change and set the shader for the boss
globalvar shaderScore;
shaderScore = 0;



// for the finite state machine for pushing
enum States {
	regular,
	pushing
}
enum GrabAxis {
	none,
	horizontal,
	vertical
}
state = States.regular
grabTarget = noone
grabDirection = GrabAxis.none
// end of fintie state machine