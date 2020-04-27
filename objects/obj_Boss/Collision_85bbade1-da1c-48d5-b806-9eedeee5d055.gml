/// @description Minus Boss Life
// You can write your code in this editor
if (bossLives > 0) {
 audio_play_sound(snd_SpiderHit,1,false);
 bossLives -=1;
} else {
 audio_play_sound(snd_SpiderDead,1,false);
 instance_destroy();
}