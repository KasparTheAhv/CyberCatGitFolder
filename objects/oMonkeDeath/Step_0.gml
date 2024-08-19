/// @desc
vsp+=grv;

vsp=clamp(vsp,-7,7);

if (tilemap_get_at_pixel(tilemap,x,y+vsp)==1) or (tilemap_get_at_pixel(tilemap2,x,y+vsp)==1)
{
vsp=0;	
}










self.y+=vsp;