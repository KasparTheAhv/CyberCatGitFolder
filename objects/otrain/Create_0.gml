image_xscale=1.5;
image_yscale=1.5;
instance_create_layer(x,y,layer,oTrainDoor);
myw=sprite_get_width(sTrain)*image_xscale;
move=false;
mspeed=0;
myspd=0;
enum trainstates
{
	stay,
	dock,
	leave,
}
current_state=trainstates.stay;
check4player=false;