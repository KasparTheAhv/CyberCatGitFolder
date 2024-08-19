/// @desc
if (start==0)
{
	if (curY<maxY)
	{
	curY+=scale*0.5*1;	
	} else {start=3; alarm[0]=90; heartx=x-quarter_wid; hearty=y}
}
if (start==2)
{
	heartx-=6*(scale*0.01);
	hearty-=3*(scale*0.01);
	image_angle+=10;
	if (curY>0)
	{
	curY-=scale*0.5*2;
	} else {instance_destroy();}
}

if (start==3) {
if (image_alpha<1)	{image_alpha+=0.03;}
} else {
if (image_alpha>0)	{image_alpha-=0.12;}
}

x=0+view_width;
yy=0;
y=yy+view_height+2-curY;
