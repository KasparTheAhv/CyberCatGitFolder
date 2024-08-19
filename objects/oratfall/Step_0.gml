
if (collision)
{
	if (image_index==0){image_index=1;play_sound(snFallen,false);}
	if !(alarmer) {alarmer=true;alarm[10]=1;}
} else {
/// @description Insert description here
var bbox_side;
// gravity
vsp+=grv;

//horistontal collision
if (hsp>0) bbox_side=bbox_right; else bbox_side=bbox_left;
if (tilemap_get_at_pixel(tilemap,bbox_side+hsp,bbox_top)!=0) or (tilemap_get_at_pixel(tilemap,bbox_side+hsp,bbox_bottom)!=0)
{
	if (hsp>0){ x = x - ( x mod 32 ) + 31 - (bbox_right - x);}
	else {x = x - ( x mod 32 ) - (bbox_left - x );}
	hsp=0;
}
x += floor(hsp);
//vertical collision
if (vsp>0) bbox_side=bbox_bottom; else bbox_side=bbox_top;
if (tilemap_get_at_pixel(tilemap,bbox_left,bbox_side+vsp)!=0) or (tilemap_get_at_pixel(tilemap,bbox_right,bbox_side+vsp)!=0)
{
	if (vsp>0){ y = y - ( y mod 32 ) + 31 - (bbox_bottom - y);collision=true;grv=0;}
	else {y = y - ( y mod 32 ) - (bbox_top - y );}
	vsp=0;
	hsp=0;
	
} 
y += floor(vsp);	
	
}