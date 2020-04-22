/// @description Jump
// You can write your code in this editor
/*
@Author Jack Sloan
@Version 3.18.2020
*/

//Checks t see if it will collide with a wall
if (place_meeting(x,y+1,obj_Wall) or place_meeting(x,y+1,obj_Platform)){
 jumps = maxJumps
}
if(keyboard_check_pressed(vk_space) and jumps > 0){
audio_play_sound(snd_Jump,1,false);
vspeed = -10;
jumps -=1;

}