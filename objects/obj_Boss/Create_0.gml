/// @description Insert description here
// You can write your code in this editor

// storign the start of patrol, so the boss can go back to it
start_x = x;
start_y = y;

// 3 refers to how fast to follow the path
path_start(path_boss, 2, path_action_reverse, false);
depth = 10;

bossLives = 3;