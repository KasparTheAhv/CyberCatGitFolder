/// @desc
firingdelay=firingdelay-1;
recoil=max(0,recoil-1);

xx=x-lengthdir_x(recoil,image_angle);

if (shooting)
{
	if instance_exists(oFlakSihik)
	{
	image_angle = point_direction(x,y,oFlakSihik.x,oFlakSihik.y);
	}
	
	
if (image_angle>90) && (image_angle<270)
{
	image_yscale=-0.75;
} else {
	image_yscale=0.75;
}






}

