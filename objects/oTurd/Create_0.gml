/// @desc
image_angle=0;
tilemap = layer_tilemap_get_id("Collision");
grv=0.3;
hsp=0;vsp=0;
wallcd=0;
self.depth=depth-13;
enum turdstates
{
	stay,
	roll,
	relocate
}
cur_state=turdstates.stay;

alarm[10]=irandom_range(600,1000);
