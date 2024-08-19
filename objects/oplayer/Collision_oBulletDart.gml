if !(immune) && !(bulletshield)
{
	instance_destroy(other);
	play_sound(snOuch,false);		
	var scale=choose(1,-1);
	with (instance_create_layer(x,y-1,"Characters",oPlayerFall))
	{
	superplatform=other.superplatform;
	hsp= 2*scale;
	vsp= -3;
	if (sign(hsp) !=0) image_xscale = sign(hsp)*0.7;
	}
	instance_destroy(oPlayer);
}

if (bulletshield)
{
	if !(other.bounced)
	{
	other.bounced=true;
	other.direction=other.direction+180+irandom_range(-45,45);
	other.image_angle=other.direction;
	}
}
