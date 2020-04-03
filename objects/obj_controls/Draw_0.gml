/// @description Insert description here
// You can write your code in this editor
draw_set_font(fnt_titleScreens);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_colour(c_white & $ffffff);
draw_text(478, 250, string(" CONTROLS:\n E to pick up boxes\n A and D - left and right movement\n Single jump - press space bar once\n Double jump - press space bar again the in air\n Left mouse click - shoot projectiles") + "");
draw_set_font(fnt_titleScreens);
draw_set_halign(fa_center);
draw_set_valign(fa_bottom);
draw_set_colour($FFFFFFFF & $ffffff);
draw_text(512, 780, string("Press 'Enter' To Continue") + "");