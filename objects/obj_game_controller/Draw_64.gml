if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
draw_set_colour(c_white & $ffffff);
draw_text(450, 80, string("Score: ") + string(__dnd_score));

var l1D970E86_0 = sprite_get_width(spr_playerIdleRight);
var l1D970E86_1 = 0;
if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
for(var l1D970E86_2 = __dnd_lives; l1D970E86_2 > 0; --l1D970E86_2) {
	draw_sprite(spr_playerIdleRight, 0, 1400 + l1D970E86_1, 40);
	l1D970E86_1 += l1D970E86_0;
}

if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
currentLives = __dnd_lives;

if(currentLives <= 0)
{
	draw_text_transformed(1000, 600, "" + string(" Game Over! Press R to Restart the Game!"), 2, 2, 0);
	instance_destroy(obj_Player)
}
