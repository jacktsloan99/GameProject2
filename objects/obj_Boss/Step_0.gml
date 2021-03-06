/// @description AI Work
// You can write your code in this editor
// Referenced https://www.youtube.com/watch?v=DG1L2Fbrhlg
// if distance from the enemy to the player is less then 450, orginal was 200 = 
// stop the pathing and go for the player avoding boxes
if instance_exists(obj_Player) {
	player_x = obj_Player.x;
	player_y = obj_Player.y;
	if (point_distance(x, y, player_x, player_y)) < 450 {
		path_end();
		// HERE IS THE SPEED OF THE BOSS - orginal was 2.0
		mp_potential_step_object(player_x, player_y, 2.5, obj_Wall)
	} 
	// if we are not less then 200 there are two options
	else if (path_index != path_boss) {
		// if its not on patrol move back
		// change the image to the right 
		image_xscale = -1;
		mp_potential_step_object(start_x, start_y, 1.5, obj_Wall);
	
		// when we get back to the origin path and start again
		if (abs(x - start_x) < 2 && abs (y - start_y) < 2) {
			path_start(path_boss, 2, path_action_reverse, false);
			// change the image back to the orginal way
			image_xscale = 1;
		}
	}
}

// lives controlling the doors
if (bossLives = 3){
instance_destroy(obj_BlueDoor);
} else if (bossLives = 2) {
instance_destroy(obj_RedDoor);
}else if (bossLives = 1){
instance_destroy(obj_GreenDoor);
}


