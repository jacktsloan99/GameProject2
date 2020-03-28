/// @description Insert description here
// You can write your code in this editor

// Line to change to the death sprite

with(obj_game_controller) {
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
	var currentLifes = __dnd_lives;
}

with(obj_game_controller) {
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
	__dnd_lives += real(-1);
}

if(currentLifes > 0)
{
	instance_change(obj_Player, true);

	x = xstart;
	y = ystart;
}