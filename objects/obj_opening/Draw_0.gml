/// @description Insert description here
// You can write your code in this editor
var alpha =($FF000084 >> 24);
draw_set_alpha(alpha / $ff);
	
draw_set_font(fnt_titleScreens);
draw_set_halign(fa_center);
draw_set_valign(fa_bottom);
draw_set_colour($FFFFFFFF & $ffffff);
draw_text(512, 780, string("Press 'Enter' To Begin") + "");
draw_set_font(fnt_titleScreens);
draw_set_halign(fa_left);
draw_set_valign(fa_bottom);
draw_set_colour(c_lime & $ffffff);
draw_text(512, 780, string("Piraty Bootay!") + "");