/// @description Insert description here
// You can write your code in this editor
//Shaders
if (bossLives = 3){
 shader_set(shader_blue);
 draw_self();
 shader_reset();
} else if (bossLives = 2) {
shader_set(shader_red);
 draw_self();
 shader_reset();
}else if (bossLives = 1){
shader_set(shader_green);
 draw_self();
 shader_reset();
}