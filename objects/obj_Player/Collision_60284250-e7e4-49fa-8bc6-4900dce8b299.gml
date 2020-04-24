/// @description Kill Player
// You can write your code in this editor
obj_game_controller.__dnd_lives -=1;
if(hspeed > 0){
		instance_change(obj_PlayerDeathR,true);
	} else {
		instance_change(obj_PlayerDeathL,true);
	}