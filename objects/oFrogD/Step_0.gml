// Horistontal collision (ground)
vsp+=grv;
vsp=clamp(vsp,-6,6);
if (hsp>0) bbox_side=bbox_right; else bbox_side=bbox_left;
if (tilemap_get_at_pixel(tilemap,bbox_side+hsp,bbox_top)!=0) or (tilemap_get_at_pixel(tilemap,bbox_side+hsp,bbox_bottom)!=0)
{
	if (hsp>0){ x = x - ( x mod 32 ) + 31 - (bbox_right - x);}
	else {x = x - ( x mod 32 ) - (bbox_left - x );}
	hsp=0;walksp=2;
}
x += floor(hsp);
// Vertical collision (ground)
if (vsp>0) bbox_side=bbox_bottom; else bbox_side=bbox_top;
if (tilemap_get_at_pixel(tilemap,bbox_left,bbox_side+vsp)!=0) or (tilemap_get_at_pixel(tilemap,bbox_right,bbox_side+vsp)!=0)
{
	
	if (vsp>0){ y = y - ( y mod 32 ) + 31 - (bbox_bottom - y);landed=true;jumping=false;canjump=10;}
	else {y = y - ( y mod 32 ) - (bbox_top - y );}
	vsp=0;
	if !(kustun) {kustun=true;
				if !(instance_exists(oPlayerGod))
				{
				
				if !(nonippy) {
					instance_create_layer(x,y,"BefEdge",oNippy);
					}
				}
				}
}
// Vertical collision (platform)

if (vsp>=0)
    {
        bbox_side=bbox_bottom;
		if (tilemap_get_at_pixel(tilemap2,x-3,bbox_side+vsp)!=0) or (tilemap_get_at_pixel(tilemap2,x+3,bbox_side+vsp)!=0)
        {
			yyy=tilemap_get_cell_y_at_pixel(tilemap2,x,bbox_side+vsp)*8-1;
            if (vsp>0){y=yyy;}
            vsp=0; hsp=0;
			move=false;
			if !(kustun) {kustun=true;
				if !(instance_exists(oPlayerGod))
				{
				if !(nonippy) {
					instance_create_layer(x,y,"BefEdge",oNippy);
					}
				}
				}
			
        } 
    }
// Change player Y according to VSP
y += floor(vsp);