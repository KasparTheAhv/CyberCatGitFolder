/// @desc


if (expand)
{
	if (scale<1)
	{
	scale+=0.02;
	}
} else {
	if (scale>0)
	{
	scale-=0.02;
	} else {instance_destroy();}
}


if (oFollowPlayer.x>x)
{
image_xscale=scale;
} else {image_xscale=scale*-1;}
image_yscale=scale;


xx=x+lengthdir_x(2,imangle);
yy=y+lengthdir_y(2,imangle);
if (imangle<360) {imangle+=3;} else {imangle=0;}