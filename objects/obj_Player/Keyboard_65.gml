/// @description Move Left
// You can write your code in this editor
/*
@Author Jack Sloan
@Version 3.18.2020
*/
var ifBlockIsThere = instance_place(x + -2.5, y + 0, obj_Wall);

//Checks t see if it will collide with a wall
if (!(ifBlockIsThere > 0)){
	characterDirection = false;
	// change the sprite to the left
	sprite_index = spr_playerMoveL;
	image_speed = 1.5;
	// using the jump to method from the princess. Jumps us to the left
	x += -2.5;
	y += 0;
} 
