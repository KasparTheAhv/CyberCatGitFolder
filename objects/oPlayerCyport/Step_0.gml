// movement and collision

var bbox_side;
if (image_xscale<0) {var mut=-14;} else {mut=14;}
//part_particles_create(oRoomController.part_sys, x+mut, y+6,oRoomController.part16,irandom_range(5,7));
// gravity
vsp+=grv;
if (superplatform)
{
vspP=vsp;
vspP=clamp(vspP,-10,8);
}
//horistontal collision
if (hsp>0) bbox_side=bbox_right; else bbox_side=bbox_left;
if (tilemap_get_at_pixel(tilemap,bbox_side+hsp,bbox_top)!=0) or (tilemap_get_at_pixel(tilemap,bbox_side+hsp,bbox_bottom)!=0)
{
	if (hsp>0){ x = x - ( x mod 32 ) + 31 - (bbox_right - x);}
	else {x = x - ( x mod 32 ) - (bbox_left - x );}
	hsp=0; 
}
x += floor(hsp);


y += floor(vsp);
// image angle
var side=(sign(image_xscale));

if (side==1)
{
imangle=0-(floor(vsp)*3.5);
} else {
imangle=0+(floor(vsp)*3.5);
}

