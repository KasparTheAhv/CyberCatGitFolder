/// @desc
vsp+=grv;

//ground
if (tilemap_get_at_pixel(tilemap,x,y)!=0)
{
	if (vsp>1)
	{
	vsp=vsp*-0.6;
	} else {vsp=0;}
	if (hsp<0) {hsp+=0.1;}
} 



if (kustu)
{
if (image_alpha>0)	{image_alpha-=0.03;} else {instance_destroy();}
}
//
self.x+=hsp;
self.y+=vsp;