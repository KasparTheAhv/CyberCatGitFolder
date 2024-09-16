tilemap = layer_tilemap_get_id("RatCollision");
image_xscale=0.75;
image_yscale=0.75;
image_speed=0;
image_index=0;
hspamp=0;
hsp=0;

enum bunstates
{
walk,
stand,
escape,
}

cur_state=bunstates.walk;
alarm[0]=60;