/// @description Insert description here
// You can write your code in this editor
/*
@Author Jack Sloan
@Version 3.18.2020
*/
gravity_direction = 270;
globalvar characterDirection;
characterDirection = true;
// setting the variable for the bullet firing rate in step
globalvar characterThrowableCooldown;
characterThrowableCooldown = 0;
direction = point_direction(mouse_x,mouse_y,obj_Player.x,obj_Player.y);
