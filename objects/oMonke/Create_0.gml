/// @description Insert description here
// You can write your code in this editor
tilemap = layer_tilemap_get_id("Platform");
tilemap2= layer_tilemap_get_id("Collision");
hsp=0;
vsp=0;
immune=false;
grv=0.2;
dir=0;
dirside=0;
cooleddown=true;
startgun=false;
whokill=noone;
firingdelay=105;
recoil=1;
circles=0;
elud=3;
enum monkeystates
{
	stay,
	tailthrow,
	orbit,
	flyandland,
}
scale=1;
walk=false;
image_speed=0;
current_state=monkeystates.stay;
alarm[0]=1;