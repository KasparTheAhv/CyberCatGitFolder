/// @desc
enum titanstates
{
	stay,
	follow,
	eat,
	spit,
	recovering,
} 
hspstuck=false;
spitdelay=0;
times=2;
canchase=true;
hsp=0;
vsp=0;
grv=0.4;
current_state=titanstates.stay;
tilemap = layer_tilemap_get_id("Collision");
triggerrate=0;
image_xscale=2;
image_yscale=2;
sprite_index=sTitan;
image_speed=1;
jalady=y+31;
// gun
followdelay=0;
firingdelay=0;
recoil=0;
dist=0;
xx=noone;
rotation=1;
yy=noone;

headx=noone;
heady=noone;
