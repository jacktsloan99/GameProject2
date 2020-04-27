/// @description Drawing RMB for pick up / put down
// You can write your code in this editor
with grabTarget {
	if !mouse_check_button(mb_right) {
		draw_sprite(spr_E, 0, x, y-48);
	}
}