/// @description Jump
// You can write your code in this editor
/*
@Author Jack Sloan
@Version 3.18.2020
*/

//Checks t see if it will collide with a wall
if place_meeting(x,y+1,obj_Wall) or place_meeting(x,y+1,obj_Platform){
 vspeed = -10;
}