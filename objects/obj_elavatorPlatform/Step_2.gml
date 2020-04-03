/// @description Insert description here
// You can write your code in this editor
with(obj_Player)

if(place_meeting(x,y+1,other) && !place_meeting(x,y,other))
{

y += other.vspeed
}
