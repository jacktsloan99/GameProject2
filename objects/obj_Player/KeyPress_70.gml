/// @description Insert description here
// You can write your code in this editor
	if(characterThrowableCooldown <= 0)
	{
		instance_create_depth(x,y, 0, obj_rumThrowable);
		 //sets how long inbetween each rum is thrown
		characterThrowableCooldown = 2;
	}
	characterThrowableCooldown += -1;