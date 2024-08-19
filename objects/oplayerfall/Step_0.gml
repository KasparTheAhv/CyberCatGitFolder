/// @description Insert description here
var bbox_side;
// gravity
vsp+=grv;
vspP=vsp;
vspP=clamp(vspP,-10,8);


//// vertical collision (platform)
if (superplatform)
{
	    if (vsp>=1)
    {
        bbox_side=bbox_bottom-2;
		if (tilemap_get_at_pixel(tilemap2,x-3,bbox_side+vsp)!=0) or (tilemap_get_at_pixel(tilemap2,x+3,bbox_side+vsp)!=0)
        {
			var yyy=tilemap_get_cell_y_at_pixel(tilemap2,x,bbox_side+vsp)*8-13;
            if (vsp>0){y=yyy+2;collision=true;grv=0;}
            vsp=0;
			hsp=0;
        } 
		else
		{
		if (tilemap_get_at_pixel(tilemap2,x-3,bbox_side+vspP)!=0) or (tilemap_get_at_pixel(tilemap2,x+3,bbox_side+vspP)!=0)
        {
			milline=2;
			var yyy=tilemap_get_cell_y_at_pixel(tilemap2,x,bbox_side+vspP)*8-13;
            if (vsp>0){y=yyy+2;collision=true;grv=0;}
            vsp=0;
			hsp=0;
	
        }	
		}
    }
}

//vertical collision
if (vsp>0) bbox_side=y+10; else bbox_side=y-10;
if (tilemap_get_at_pixel(tilemap,x,bbox_side+vsp)!=0) or (tilemap_get_at_pixel(tilemap,x,bbox_side+vsp)!=0)
{
	if (vsp>0){ y = y - ( y mod 32 ) + 31 - (y+10 - y);collision=true;grv=0;}
	else {y = y - ( y mod 32 ) - (y-10 - y );} 
	vsp=0;
	
} 
if (tilemap_get_at_pixel(tilemap3,x,bbox_side+vsp)!=0) or (tilemap_get_at_pixel(tilemap3,x,bbox_side+vsp)!=0)
        {
			yyy=tilemap_get_cell_y_at_pixel(tilemap3,x,bbox_side+vsp)*8-13;
            if (vsp>0){y=yyy+2;collision=true;grv=0;}
            vsp=0; 
        }


if (vsp==0) && (collision) {
	if (image_index==0){play_sound(snFallen,false);ScreenShake(6,30);}
	image_index=1;if !(alarmer) {alarmer=true;alarm[10]=recovertime;}
	exit;} else {image_index=0;}


//horistontal collision
if (hsp>0) bbox_side=bbox_right; else bbox_side=bbox_left;
if (tilemap_get_at_pixel(tilemap,bbox_side+hsp,bbox_top)!=0) or (tilemap_get_at_pixel(tilemap,bbox_side+hsp,bbox_bottom-10)!=0)
{
	if (hsp>0){ x = x - ( x mod 32 ) + 31 - (bbox_right - x);}
	else {x = x - ( x mod 32 ) - (bbox_left - x );}
	hsp=0;
}

// Small Horistontal collision (ground)
if (hsp>0) bbox_side=bbox_right; else bbox_side=bbox_left;
if (tilemap_get_at_pixel(tilemap3,bbox_side+hsp,bbox_top)!=0) or (tilemap_get_at_pixel(tilemap3,bbox_side+hsp,bbox_bottom-10)!=0)
{
	if (hsp>0){ x = x - ( x mod 32 ) + 31 - (bbox_right - x);}
	else {x = x - ( x mod 32 ) - (bbox_left - x );}
	hsp=0;
}

y += floor(vsp);
x += floor(hsp);
