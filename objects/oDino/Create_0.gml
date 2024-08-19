/// @description Insert description here
// You can write your code in this editor
lineX=0;
lineY=0;
atplayer=false;
scale=2;
grv=0.3;
sounded=false;
indiX=global.gameWidth*0.6;
indiY=global.gameHeight*0.06;
image_speed=1;
image_xscale=2;
image_yscale=2;
ChargeCooldown=false;
JumpCooldown=false;
tilemap = layer_tilemap_get_id("Collision");
hsp=0;
vsp=0;
enum dinostates
{
idle,
explore,
charge,
jump,
}
current_state=dinostates.idle;