/// @description Insert description here
// You can write your code in this editor
/*
@Author Jack Sloan
@Version 3.18.2020
*/
if(y < other.y+8) and (vspeed>0){

//audio_play_sound(snd_kill_monster,0,0);
instance_destroy(other);
vspeed = -6;

} else {
room_restart()
}