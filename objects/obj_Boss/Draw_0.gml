/// @description Insert description here
// You can write your code in this editor
var lay_id = layer_get_id("boss");
//shader_set(shader_blue)
obj_Boss.image_blend = make_color_rgb(0, 0, shader_blue);
//layer_shader(lay_id, shader_blue);
if shaderScore == 1 {
	//shader_set(shader_blue)
	layer_shader(lay_id, shader_blue);
	//draw_self();
}

if shaderScore == 2 {
	//shader_reset();
	//shader_set(shader_green);
	//draw_self();
	shader_reset();
	layer_shader(lay_id, shader_green);
	//draw_self();
}

if shaderScore == 3 {
	shader_reset();
	//shader_set(shader_red);
	layer_shader(lay_id, shader_red);
	//draw_self();
}

if shaderScore == 4 {
	shader_reset();
	instance_destroy(obj_Boss);
}