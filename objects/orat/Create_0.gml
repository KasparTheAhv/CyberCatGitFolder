/// @description Insert description here
// You can write your code in this editor
tilemap = layer_tilemap_get_id("RatCollision");
tilemap2 = layer_tilemap_get_id("Collision");
tilemap3 = layer_tilemap_get_id("Platform");
hsp=irandom_range(2,4);
vsp=0;
grv=0.3;
image_xscale=0.75;
image_yscale=0.75;
jumpdelay=70;
elud=1;
myside=1;
whatbase=noone;
distancefordraw=global.gameWidth*0.7;
self.depth=layer_get_depth("Characters")-10;