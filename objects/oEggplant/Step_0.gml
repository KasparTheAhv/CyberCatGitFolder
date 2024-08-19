/// @desc
if (side==1)
{
	if (image_xscale<1)
	{
	image_xscale+=0.01;
	image_yscale+=0.01;
	} 
} else {
	if (image_xscale>-1)
	{
	image_xscale-=0.01;
	image_yscale+=0.01;
	} 
}


if (swayright)
{
	if (sway<375) {sway+=0.5;} else {swayright=false;}
	
} else {
	
	if (sway>345) {sway-=0.5;} else {swayright=true;}
	
}


image_angle=sway;