/// @description Go To Next Room
// You can write your code in this editor
if(keyboard_check_pressed(vk_enter))
{
	instance_destroy();
	room_goto_next();
}
