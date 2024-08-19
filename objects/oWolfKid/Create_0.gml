/// @desc
enum wolfkidstates
{
chase,
attack,
climb,
}
imangle=0;
doglock=false;
tilemap = layer_tilemap_get_id("Collision");
tilemap2 = layer_tilemap_get_id("Platform");
tilemap3 = layer_tilemap_get_id("CollisionSmall");
landed=false;
self.depth=depth-15;
image_speed=0;
image_xscale=0.75;
image_yscale=0.75;
grv=0.2; 
vsp=0;
elud=10;
bounceblock=false;
canatk=true;



current_state=wolfkidstates.attack;
sprite_index=sWolfATK;
image_speed=0;
image_index=0;
hsp=0;
alarm[2]=1;
