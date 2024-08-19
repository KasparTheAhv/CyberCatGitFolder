// initial variables
image_xscale=1.5;
image_yscale=1.5;
self.y=351;
self.x=-120;
myw=sprite_get_width(sTrain)*image_xscale;
mspeed=0;
myspd=0;


// train states
enum train2states
{
	stay,
	move,
	dock,
}
current_state=train2states.stay;

// get current tile 
var lay_id= layer_get_id("MajadRongiTaga");
var map_id=layer_tilemap_get_id(lay_id);
prevtiledata=tilemap_get(map_id,88,18);
totalwidth=myw*4;

// start the train movement
alarm[0]=400;