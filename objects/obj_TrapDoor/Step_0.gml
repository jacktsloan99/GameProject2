/// @description Insert description here
// You can write your code in this editor
//code adapted from 
// https://forum.yoyogames.com/index.php?threads/falling-platforms-when-touched-solved.21161/
if playerAbove
 {
 if timer == 0 {
 instance_change(obj_GhostBlock,true);
 audio_play_sound(snd_TrapDoorOpen,1,false);
 }
 else timer -= 1;
 }
else
 {
 if place_meeting(x, y-1, obj_Player) playerAbove = true;
 }