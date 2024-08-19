/// @desc
enum fatmanstates
{
	stay,
	wander,
	follow,
	spit,
}
target=noone;
immobile=true;
imshots=0;
shownhint=false;
canchase=true;
hsp=0;
current_state=fatmanstates.stay;
vsp=0;
tilemap = layer_tilemap_get_id("Collision");
triggerrate=0;
image_xscale=-1.5;
image_yscale=1.5;
sprite_index=sFatMan;
image_speed=0.5;
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
// elud
elud=50;
maxelud=50;