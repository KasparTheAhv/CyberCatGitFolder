// movement and collision
if (hsp==0) {exit;}
var bbox_side;
// check side change
//if (sign(hsp) !=0) image_xscale = sign(hsp);
if (wet) {grv=0.1;} else {grv=0.3;}
// gravity
vsp+=grv;
vspP=vsp;
vspP=clamp(vspP,-10,8);

if !(eaten)
{
if instance_exists(oDogTreat)
{
var nearest=instance_nearest(x,y,oDogTreat);
if (nearest!=noone)	{if (point_distance(x,y,nearest.x,nearest.y)<256){if!(treatment){alarm[2]=2;treatment=true;chase=false;}}else{treatment=false;}}else{treatment=false;}
} else {treatment=false;}
} else {treatment=false;}

if (hsp>0) bbox_side=bbox_right; else bbox_side=bbox_left;
if (tilemap_get_at_pixel(tilemap3,bbox_side+(hsp*15),bbox_top)!=0) or (tilemap_get_at_pixel(tilemap3,bbox_side+(hsp*15),bbox_bottom)!=0)
{
	if (hsp>0){ x = x - ( x mod 32 ) + 31 - (bbox_right - x);}
	else {x = x - ( x mod 32 ) - (bbox_left - x );}
	if (chase)
	{
	if !place_meeting(x,y,oWater) && !(wet) {jump=true;}
	} else {
	
			stucker+=1;
			alarm[11]=30;
		hsp=hsp*-1;
		image_xscale=0.7*sign(hsp);
		
	}
} 
// dogs direction && speed

if (hsp>0) bbox_side=bbox_right; else bbox_side=bbox_left;
if (tilemap_get_at_pixel(tilemap,bbox_side+(hsp*17),bbox_top)!=0) or (tilemap_get_at_pixel(tilemap,bbox_side+(hsp*17),bbox_bottom)!=0)
{
	if (hsp>0){ x = x - ( x mod 32 ) + 31 - (bbox_right - x);}
	else {x = x - ( x mod 32 ) - (bbox_left - x );}
	if (chase)
	{
	if !place_meeting(x,y,oWater) && !(wet) {jump=true;}
	} else {
			stucker+=1;
			alarm[11]=30;
		hsp=hsp*-1;
		image_xscale=0.7*sign(hsp);
		
	}
} 
else {x += floor(hsp);}

// vertical collision (platform)
if !(allowdrop)
{
 if (vsp>0)
    {
		allowdrop=false;
		bbox_side=bbox_bottom;
		if (tilemap_get_at_pixel(tilemap2,x-7,bbox_side+vsp)!=0) or (tilemap_get_at_pixel(tilemap2,x+7,bbox_side+vsp)!=0)
        {
			yyy=tilemap_get_cell_y_at_pixel(tilemap2,x,bbox_side+vsp)*8-12;
        
                if (vsp>0){ y=yyy;landed=true;jumping=false;}
                vsp=0;
				if (allowlandsn) {havelanded=true;allowdrop=false;sprite_index=sDogR;image_speed=1;allowlandsn=false;play_sound(snLanding,false); }	
        } else {
			if (tilemap_get_at_pixel(tilemap2,x-7,bbox_side+vspP)!=0) or (tilemap_get_at_pixel(tilemap2,x+7,bbox_side+vspP)!=0)
			{
				yyy=tilemap_get_cell_y_at_pixel(tilemap2,x,bbox_side+vsp)*8-12;
				 if (vsp>0){ y=yyy;landed=true;jumping=false;}
                vsp=0;
				if (allowlandsn) {havelanded=true;allowdrop=false;sprite_index=sDogR;image_speed=1;allowlandsn=false;play_sound(snLanding,false); }	
				
			}
		}
    } 
	
}
//vertical collision (ground)
if (vsp>0) bbox_side=bbox_bottom; else bbox_side=bbox_top;
if (tilemap_get_at_pixel(tilemap,bbox_left,bbox_side+vsp)!=0) or (tilemap_get_at_pixel(tilemap,bbox_right,bbox_side+vsp)!=0)
{
	
	if (vsp>0){ y = y - ( y mod 32 ) + 31 - (bbox_bottom - y);landed=true;jumping=false;}
	else {y = y - ( y mod 32 ) - (bbox_top - y );}
	vsp=0;
	if (allowlandsn) {havelanded=true;allowdrop=false;allowlandsn=false;sprite_index=sDogR;image_speed=1;play_sound(snLanding,false); }
}
if (tilemap_get_at_pixel(tilemap3,bbox_left,bbox_side+vsp)!=0) or (tilemap_get_at_pixel(tilemap3,bbox_right,bbox_side+vsp)!=0)
{
	
	if (vsp>0){ y = y - ( y mod 32 ) + 31 - (bbox_bottom - y);landed=true;jumping=false;}
	else {y = y - ( y mod 32 ) - (bbox_top - y );}
	vsp=0;
	if (allowlandsn) {havelanded=true;allowdrop=false;allowlandsn=false;sprite_index=sDogR;image_speed=1;play_sound(snLanding,false); }
}
if !place_meeting(x,y,oWater)&& !(wet){
if (vsp>0.9) {allowlandsn=true;sprite_index=sDogA;image_speed=0;image_index=1;landed=false;} else if (vsp<-0.9) {allowlandsn=true;sprite_index=sDogA;image_speed=0;image_index=0;landed=false} 
}
//unstuck
if (stucker>6) {with (instance_create_layer(x,y-2,"Characters",oDogAttack))
{
	startx=other.x;
starty=other.y;
	foreverchase=other.foreverchase;
landed=false;
jumping=true;
// movement
if (other.sprite_index==sDogR)
{
	hsp=other.hsp;
	vsp=-7;
}
if (other.sprite_index==sDogA) 
{
	vsp=other.vsp-1;
	hsp=other.hsp;
}
chase=other.chase;
walksp=other.walksp;
prevhsp=other.hsp;
elud=other.elud;
image_xscale=other.image_xscale;
}
instance_destroy();}
// Jump
if (landed)&&(jump) {jump=false;jumping=true;landed=false; {vsp=-6;}}
y += floor(vsp);
if (chase) {anger+=1; anger=clamp(anger,0,300);} else {anger-=1; anger=clamp(anger,0,300);}