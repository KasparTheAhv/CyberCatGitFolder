// movement and collision
var bbox_side;
// gravity
vsp+=grv;
vsp=clamp(vsp,-19,8);
if (superplatform)
{
vspP=vsp;
vspP=clamp(vspP,-19,8);
}

//horistontal collision
if (hsp>0) bbox_side=bbox_right; else bbox_side=bbox_left;
if (tilemap_get_at_pixel(tilemap,bbox_side+hsp,y-10)!=0) or (tilemap_get_at_pixel(tilemap,bbox_side+hsp,y+10)!=0)
{
	if (hsp>0){ x = x - ( x mod 32 ) + 31 - (bbox_right - x);}
	else {x = x - ( x mod 32 ) - (bbox_left - x );}
	hsp=0; alarm[9]=1;
}
x += floor(hsp);
//// vertical collision (platform)
if (superplatform)
{
	    if (vsp>=1)
    {
        bbox_side=bbox_bottom-2;
		if (tilemap_get_at_pixel(tilemap2,x-3,bbox_side+vsp)!=0) or (tilemap_get_at_pixel(tilemap2,x+3,bbox_side+vsp)!=0)
        {
			var yyy=tilemap_get_cell_y_at_pixel(tilemap2,x,bbox_side+vsp)*8-13;
            if (vsp>0){y=yyy+2;landed=true;jumping=false;canjump=10;}
            vsp=0;
			if (allowlandsn) {allowlandsn=false;play_sound(snLanding,false); }
			alarm[9]=1;
        } 
		else
		{
		if (tilemap_get_at_pixel(tilemap2,x-3,bbox_side+vspP)!=0) or (tilemap_get_at_pixel(tilemap2,x+3,bbox_side+vspP)!=0)
        {
			milline=2;
			var yyy=tilemap_get_cell_y_at_pixel(tilemap2,x,bbox_side+vspP)*8-13;
            if (vsp>0){y=yyy+2;landed=true;jumping=false;canjump=10;}
            vsp=0;
			if (allowlandsn) {allowlandsn=false;play_sound(snLanding,false); }
			alarm[9]=1;
        }	
		}
    }
}
//
// Vertical collision (ground)
if (vsp>0) bbox_side=y+10; else bbox_side=y-10;
if (tilemap_get_at_pixel(tilemap,bbox_left,bbox_side+vsp)!=0) or (tilemap_get_at_pixel(tilemap,bbox_right,bbox_side+vsp)!=0)
{
	if (vsp>0){ y = y - ( y mod 32 ) + 31 - (y+10 - y);landed=true;jumping=false;}
	else {y = y - ( y mod 32 ) - (y-10 - y );}
	vsp=0; alarm[9]=1;
	if (allowlandsn) {allowlandsn=false;play_sound(snLanding,false); }
}
if (tilemap_get_at_pixel(tilemap3,x,bbox_side+vsp)!=0) or (tilemap_get_at_pixel(tilemap3,x,bbox_side+vsp)!=0)
{
	yyy=tilemap_get_cell_y_at_pixel(tilemap3,x,bbox_side+vsp)*8-13;
    if (vsp>0){y=yyy+2;landed=true;jumping=false;}
    vsp=0;alarm[9]=1;
	if (allowlandsn) {allowlandsn=false;play_sound(snLanding,false); }
} 
y += floor(vsp);


// image angle
side=(sign(image_xscale));

if (side==1)
{
imangle=0-(floor(vsp)*3.5);
} else {
imangle=0+(floor(vsp)*3.5);
}