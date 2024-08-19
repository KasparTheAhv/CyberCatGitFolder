/// @desc
spin=false;
paremale=false;
image_xscale=1.5;
image_yscale=1.5;
who=instance_nearest(x,y,oDemon);
self.depth=who.depth-5;
rotspeed=15;
tilemap = layer_tilemap_get_id("Collision");