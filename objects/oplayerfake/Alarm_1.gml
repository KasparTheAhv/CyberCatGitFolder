/// @description Insert description here
// You can write your code in this editor
if (timer>0)
{
timer-=1;	
alarm[1]=1;
} else {
	if (sequence==0)
	{
	with(oClickHere){allowed=true;}	
	instance_create_layer(x,y,"Characters",oPlayer);
	lubaliikumine=false;image_alpha=0;sprite_index=sJsPointer;image_speed=1;
	self.lubaalpha=true;
	with(oFollowPlayer) {target=oPlayer;}
	with (oVStick) {if (stick_id==1) {joonista=true;}}	
	alarm[4]=1;
	}
}