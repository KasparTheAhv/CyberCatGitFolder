/// @desc
if (image_xscale<1)
{
	image_xscale+=0.02;
	image_yscale=image_xscale;
}

if tilemap_get_at_pixel(tilemap,x,y+height) && !(locked)
{
	locked=true;
	instance_destroy(self); instance_create_layer(x,y,"BefEdge",oNippy); 
	oRoomController.alarm[0]=2;
}