/// @description Insert description here
// You can write your code in this editor
if !(immune)
{
	immune=true;
	image_blend=c_red;
	alarm[1]=5;
	if instance_exists(oGUIBAR){oGUIBAR.cn-=25;}
	
	with(other)
	{
	spd=5;
	if (other.image_xscale<5){spscale=1.25;} else {spscale=6;}
	sprite_index=sNippy;
	side=false;
	}
}
