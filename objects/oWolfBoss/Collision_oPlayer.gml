/// @desc
if (landed) {exit;}
if (current_state==wolfstates.howl) {exit;}

if (self.x<other.x)	{ var scale=1; } else {var scale=-1;}


with(other)
{
	if !(immune)
	{
	alarm[8]=30;
	self.image_blend=c_orange;	
	play_sound(snOuch,false);		

	with (instance_create_layer(x,y-1,"Characters",oPlayerFall))
	{
	superplatform=other.superplatform;
	hsp= 4*scale;
	vsp= -4;
	if (sign(hsp) !=0) image_xscale = sign(hsp)*0.7;
	}
	instance_destroy(oPlayer);
	}	
}