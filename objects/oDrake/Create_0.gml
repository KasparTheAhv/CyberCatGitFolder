/// @desc
enum drakestates
{
	stay,
	walk,
	leave,
}
garlicdeath=false;
grv=0.2;
vsp=0;
image_xscale=1;
image_speed=0;
image_index=0;
image_yscale=1;
hsp=0;
depth=depth-13;
cur_state=drakestates.stay;
landed=true;
tilemap = layer_tilemap_get_id("Collision");
whatydif=62*image_yscale;
var wtf = x+38;
with (instance_create_layer(wtf,y-whatydif,"Characters",oChainEaringStart))
{
ydif=other.whatydif;	
}


// +19x -74y dif 