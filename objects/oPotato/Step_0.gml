/// @desc

if (stage==0)
{
	if (ysca==1)
	{
		if (image_yscale<estSize) {image_yscale+=0.04;}
	} else {
		if (image_yscale>(estSize*ysca)) {image_yscale-=0.04;}
	}
	
	if (xsca==1)
	{
		if (image_xscale<estSize) {image_xscale+=0.04;} else {stage=1;}
	} else {
		if (image_xscale>(estSize*xsca)) {image_xscale-=0.04;} else {stage=1;}
	}

} 

if (stage==1) {
if (speed<6) {speed+=0.15;} 
direction=270;
}

if (stage!=2) && (stage!=3)
{
	if (tilemap_get_at_pixel(tilemap,x,y)!=0)
	{
		speed=0; stage=2; alarm[1]=60;
	}
}

if (stage==3)
{
	if (image_alpha>0) {image_alpha-=0.04;} else {instance_destroy();}
}