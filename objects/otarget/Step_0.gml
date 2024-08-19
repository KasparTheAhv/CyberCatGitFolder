if (follow!=noone)
{
	if instance_exists(follow)
	{
self.x=follow.x;
self.y=follow.y;
	}
}
image_angle+=3;

if (sisse)
{
	if (image_xscale>0.7)
	{
	image_xscale-=0.01;
	image_yscale-=0.01;
	} else {sisse=false;}
	
} else {
	if (image_xscale<1)
	{
	image_xscale+=0.01;
	image_yscale+=0.01;
	} else {sisse=true;}
}

if (instance_exists(oPlayer)) && (lubakustumine)
{
if (oPlayer.immune==false){instance_destroy(self);}
}