/// @description Sound / Destroy room
// You can write your code in this editor
if(keyboard_check_pressed(vk_enter))
{
	audio_stop_sound(snd_Intro);
	instance_destroy();
	room_goto_next();
}
