/// @description Insert description here
if (fadeout)
{
if (image_alpha>0)	{image_alpha-=0.02;} else {instance_destroy();}
}

vsp+=grv;
vsp=clamp(vsp,-3,3);

if (tilemap_get_at_pixel(tilemap,x,y+6)==1)
{
vsp=0;
speed=0;	
direction=0;
gravity=0;
dropped=true;
tornado=false;
} else {
	if (direction>=90) && (direction<=270)
	{
	image_angle+=2;
	} else {image_angle-=2;}
}

if (tornado)
{
dropped=false;
y+=vsp;
}
