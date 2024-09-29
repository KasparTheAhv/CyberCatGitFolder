image_speed=0;
grv=0.3;
image_index=3;
vsp=0;
hsp=0;
kustun=false;
depth=self.depth+20;
image_alpha=1;
image_speed=0;image_xscale=0.5;image_yscale=0.5;
tilemap = layer_tilemap_get_id("Collision");
tilemap2 = layer_tilemap_get_id("Platform");
nonippy=false;
if instance_exists(oRoomController)
{ 
oRoomController.alarm[5]=1;
}