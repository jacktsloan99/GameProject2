/// @description Sound/Change to animation
// You can write your code in this editor
if timer == 0 {
instance_change(obj_TrapDoor,true);
audio_play_sound(snd_TrapDoorClose,1,false);
} else {
timer -= 1;
}