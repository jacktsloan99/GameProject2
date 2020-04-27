/// @description Text
// You can write your code in this editor
var alpha =($FF000084 >> 24);
draw_set_alpha(alpha / $ff);


draw_set_font(fnt_titleScreens);
draw_set_halign(fa_left);
draw_set_valign(fa_bottom);
draw_set_colour(c_white & $ffffff);
draw_text(2, 402, string("Piraty Bootay!") + "");
	
draw_set_font(fnt_titleScreens);
draw_set_halign(fa_left);
draw_set_valign(fa_bottom);
draw_set_colour(c_black & $ffffff);
draw_text(2, 600, string("Press 'Enter' To Begin") + "");
