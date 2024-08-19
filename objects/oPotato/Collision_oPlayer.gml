/// @desc
if (stage!=1) {exit;}

with(other)
{
	if !(immune)
	{
	play_sound(snOuch,false);		
	var scale = choose(-1,1);
	with (instance_create_layer(x,y-1,"Characters",oPlayerFall))
	{
	superplatform=other.superplatform;
	hsp= 2*scale;
	vsp= -3;
	if (sign(hsp) !=0) image_xscale = sign(hsp)*0.7;
	}
	instance_destroy(oPlayer);
	}	
}
