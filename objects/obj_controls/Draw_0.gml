/// @description Text
// You can write your code in this editor
draw_set_font(fnt_controlScreen);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_colour(c_blue & $ffffff);
draw_text(1046, 350, string(" CONTROLS:\n") + "");
draw_set_colour(c_white & $ffffff);
draw_text(1046, 410, string(" Right Mouse Button (RMB) - pick up boxes\n Hold Down Left Mouse Button - shoot projectiles\n A and D - left and right movement\n Single jump - press space bar once\n Double jump - press space bar again while in the air\n S - will make the No Eye Woodie fall through platform") + "");
draw_set_colour(c_lime & $ffffff);
draw_text(1046, 740, string(" \n \n \n GOAL:\n") + "");
draw_set_colour(c_white & $ffffff);
draw_text(1046, 1000, string(" No Eye Woodie has found a treasure map and is determined to get his treasure\n To get his treasure, No Eye Woodie will have to \n match the three different colored blocks (red, blue, and green)\n to their corresponding switch to unlock the doors to reach the treasure!\n BEWARE! Death restarts the whole puzzle, and you only get 5 lives!") + "");
draw_set_font(fnt_controlScreen);
draw_set_halign(fa_center);
draw_set_valign(fa_bottom);
draw_set_colour(c_red & $ffffff);
draw_text(1046, 1400, string("Press 'Enter' To Continue") + "");