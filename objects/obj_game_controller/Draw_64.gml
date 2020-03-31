if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
draw_text(50, 50, string("Score: ") + string(__dnd_score));

var l1D970E86_0 = sprite_get_width(spr_playerIdleRight);
var l1D970E86_1 = 0;
if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
for(var l1D970E86_2 = __dnd_lives; l1D970E86_2 > 0; --l1D970E86_2) {
	draw_sprite(spr_playerIdleRight, 0, 800 + l1D970E86_1, 35);
	l1D970E86_1 += l1D970E86_0;
}

if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
currentLives = __dnd_lives;

if(currentLives <= 0)
{
	draw_text_transformed(x, y, "" + string("Oh no! Game Over! Press R to Restart the Game!"), 2, 2, 0);
}