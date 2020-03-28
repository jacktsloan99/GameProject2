/// @description Insert description here
// You can write your code in this editor
player_x = obj_Player.x;
player_y = obj_Player.y;

// if distance from the enemy to the player is less then 200 = 
// stop the pathing and go for the player avoding boxes
if (point_distance(x, y, player_x, player_y)) < 200 {
	path_end();
	mp_potential_step_object(player_x, player_y, 2.0, obj_Wall)
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
