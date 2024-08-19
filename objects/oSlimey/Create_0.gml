/// @desc
tilemap = layer_tilemap_get_id("Collision");
image_xscale=choose(-0.75,0.75);
image_yscale=0.75;
vsp=0;
grv=0.2;
cooldown=false; 
mutating=false;
image_speed=0;
self.depth=depth-14;
bored=0;
sprite_index=sSlimeyD;
image_index=5;
hspamp=0;
hsp=0;
enum slistates
{
walk,
stand,
chase,
pool,
}

cur_state=slistates.pool;
alarm[0]=60;
