/// @description Insert description here
// You can write your code in this editor
image_speed=0;
hammerRot=220;
enum turtlestates
{
	idle,
	walk,
	chase,
	attack,
}
dist=noone;
cur_state=turtlestates.idle;
stillwalking=0;
vsp=0;
hsp=0;
alarm[0]=120;
startSwing=true;