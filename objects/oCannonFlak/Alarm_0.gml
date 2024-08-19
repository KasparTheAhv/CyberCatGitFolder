/// @desc shoot

if instance_exists(oFlakSihik)
{
var dir = point_direction(x,y,oFlakSihik.x,oFlakSihik.y);
if (firingdelay<0)
{
	recoil=3;
	firingdelay=120;
	play_sound(snBlastBig,false);
	with (instance_create_layer(x,y,"Dog",oBulletFlak))
	{
		image_xscale=0.75;
		image_yscale=0.75;
		speed=32;
		direction=dir;
		image_angle=dir;
	}
}
}