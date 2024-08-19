/// @description Insert description here
// You can write your code in this edivator
var myhsp=hsp;
var myvsp=vsp;
part_particles_create(oRoomController.part_sys, x, y,oRoomController.part4,irandom_range(7,12));
with (instance_create_layer(x,y,"Characters",oPlayerFall))
{
oFollowPlayer.target=oPlayerFall;
alarmer=false;
hsp=myhsp*0.5;
vsp=myvsp*0.7;
if (hsp>0) {image_xscale=0.7;}else{image_xscale=-0.7;}
image_speed=0;
grv=0.2;
collision=false;
tilemap = layer_tilemap_get_id("Collision");
tilemap2 = layer_tilemap_get_id("Platform");
sprite_index=global.sPlayerF;
die=true;
}
instance_destroy(self);
//oPlayerFall.die=true;
//oPlayerFall.hsp=myhsp*0.5;
//oPlayerFall.vsp=myvsp*0.7;