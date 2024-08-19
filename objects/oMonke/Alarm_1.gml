/// @desc walk
var possibleRight= 0;
var possibleLeft= 0;
var maxRight=0;
var maxLeft=0;

if (tilemap_get_at_pixel(tilemap,x-16,bbox_bottom+1)==1){possibleLeft=1;	maxLeft=8;	 
if (tilemap_get_at_pixel(tilemap,x-32,bbox_bottom+1)==1){possibleLeft=1;	maxLeft=24;	 	
if (tilemap_get_at_pixel(tilemap,x-48,bbox_bottom+1)==1){possibleLeft=1;	maxLeft=40;
if (tilemap_get_at_pixel(tilemap,x-64,bbox_bottom+1)==1){possibleLeft=1;	maxLeft=56;}}}}
if (tilemap_get_at_pixel(tilemap,x+16,bbox_bottom+1)==1){possibleRight=1;	maxRight=8;	
if (tilemap_get_at_pixel(tilemap,x+32,bbox_bottom+1)==1){possibleRight=1;	maxRight=24;
if (tilemap_get_at_pixel(tilemap,x+48,bbox_bottom+1)==1){possibleRight=1;	maxRight=40;
if (tilemap_get_at_pixel(tilemap,x+64,bbox_bottom+1)==1){possibleRight=1;	maxRight=56;}}}}

if (possibleLeft) && (possibleRight)
{
var which=choose(0,1);	
	if (which==1) // paremale
	{
		image_speed=1;
		sprite_index=sMonkeR;
		walk=true;
		hsp=1;
		image_xscale=scale;
		alarm[2]=maxRight;
		alarm[1]=-1;
		exit;
	}
	if (which==0) // vasakule
	{
		image_speed=1;
		sprite_index=sMonkeR;
		walk=true;
		hsp=-1;
		image_xscale=-scale;
		alarm[2]=maxLeft/2;
		alarm[1]=-1;
		exit;
	}
}
if (possibleLeft) 
{
		image_speed=1;
		sprite_index=sMonkeR;
		walk=true;
		hsp=-1;
		image_xscale=-scale;
		alarm[2]=maxLeft/2;
		alarm[1]=-1;
		exit;
}
if (possibleRight)
{
		image_speed=1;
		sprite_index=sMonkeR;
		walk=true;
		hsp=1;
		image_xscale=scale;
		alarm[2]=maxRight/2;
		alarm[1]=-1;
		exit;
}