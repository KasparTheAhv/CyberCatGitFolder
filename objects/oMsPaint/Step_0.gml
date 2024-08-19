/// @desc
if (tilemap_get_at_pixel(tiles,x+(hspeed*32),y)!=0) && (bounceallowed)
{
	bounceallowed=false; alarm[1]=50;
hspeed=hspeed*-1;
image_xscale=image_xscale*-1;
}