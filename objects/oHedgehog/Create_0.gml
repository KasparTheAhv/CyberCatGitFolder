/// @desc
hsp=0;
vsp=0;
tilemap = layer_tilemap_get_id("RatCollision");
curscale=1;
hyper=false;
roter=0;
enum hedgestates
{
ball,
walk,
stand,
escape
}

cur_state=hedgestates.stand;

alarm[0]=50;