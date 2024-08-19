if !(immune)
{
	var amp=1;
	play_sound(snOuch,false);	
	var scale=choose(-1,1);
	with (instance_create_layer(x,y-1,"Characters",oPlayerFall))
	{
		superplatform=other.superplatform;
	hsp= 2*scale*amp;
	vsp= -3*amp;
	if (sign(hsp) !=0) image_xscale = sign(hsp)*0.75;
	}
	instance_destroy(other);
	instance_destroy(oPlayer);
}

