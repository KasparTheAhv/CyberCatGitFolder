/// @desc
tar=oFollowPlayer;
tilemap = layer_tilemap_get_id("Collision");
tilemap2 = layer_tilemap_get_id("Platform");
vsp=0;
grv=0.3;
spotx=x;
cooldown=0;
landed=true;
drop=false;
image_yscale=0.5;
image_xscale=0.5;
self.depth=depth-15;