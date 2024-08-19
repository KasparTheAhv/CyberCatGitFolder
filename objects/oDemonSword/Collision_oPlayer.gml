/// @desc
if !instance_exists(oDemon) {exit;}

with(other)
{
	if !(immune)
	{
	alarm[8]=30;
	self.image_blend=c_orange;
	alarm[8]=30;	
	play_sound(snOuch,false);		
	var scale=choose(1,-1);
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