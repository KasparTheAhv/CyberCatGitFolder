/// @desc
image_speed=0;
image_index=0;
activated=false;
whatbase=noone;
flyspeed=choose(2,3);
atkangle=180;
righthanded=choose(false,true);
elud=0;
tilemap = layer_tilemap_get_id("Collision");
if instance_exists(oPlayerGod)
{
	image_blend=c_aqua;
} else {
	image_blend=$ff65fb;
}