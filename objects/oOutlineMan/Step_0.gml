/// @desc
if (tilemap_get_at_pixel(tiles,x,y-5)!=0) && (bounceallowed)
{
bounceallowed=false; alarm[1]=10;
hspeed=hspeed*-1;
image_xscale=image_xscale*-1;
}