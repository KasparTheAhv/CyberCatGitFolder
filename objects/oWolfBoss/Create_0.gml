/// @desc
tilemap = layer_tilemap_get_id("Collision");
tilemap2 = layer_tilemap_get_id("Platform");
tilemap3 = layer_tilemap_get_id("CollisionSmall");
landed=true;
self.depth=depth-15;
image_speed=0;
image_index=0;
vsp=0;
hsp=0;
grv=0.2;
elud=50;
maxelud=elud;
bounceblock=false;
howllock=0;
imangle=0
canatk=true;
readytofight=false;
enum wolfstates
{
sleep,
wait,
howl,
chase,
attack,
climb,
stand,
}

howlup=true;
current_state=wolfstates.sleep;
