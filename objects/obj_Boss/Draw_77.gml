/// @description Insert description here
// You can write your code in this editor

if shaderScore == 1 {
	shader_set(shader_blue)
	draw_self();
}

if shaderScore == 2 {
	shader_reset();
	shader_set(shader_green);
	draw_self();
}

if shaderScore == 3 {
	shader_reset();
	shader_set(shader_red);
}

if shaderScore == 4 {
	shader_reset();
	instance_destroy(obj_Boss);
}