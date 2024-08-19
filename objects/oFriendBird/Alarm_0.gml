/// @description Insert description here
// You can write your code in this editor
var xmod=0;
var ymod=0;
// exit if not activated

if !(activated) {
	alarm[0]=100;
	if (point_distance(x,y,oFollowPlayer.x,oFollowPlayer.y)<270)
	{
	if instance_exists(oPlayer) {if (self.x<oPlayer.x) {image_xscale=scale;} else {image_xscale=-scale;} }
	}	
	exit;}

// exit and re-alarm if not far enough
	if instance_exists(oPlayer)
	{
if (point_distance(x,y,oPlayer.x,oPlayer.y)>70) {
	
	
	if (point_distance(oFollowPlayer.x,oFollowPlayer.y,oFriendBase.x,oFriendBase.y)<200)
	{
	var base =	instance_nearest(x,y,oFriendBase)
	destX=base.x;
	destY=base.y-10;
	ending=true;
	startmoving=true;
	}
	
	
	if !(ending)
	{
	// Otsi mängijale koht
	if (oPlayer.x>self.x) {xmod=irandom_range(10,70);} else {xmod=irandom_range(-70,-10);}
	ymod=choose(-30,9,10,150,180);
	var leidis=false;
	for (var i = 0; i <= 12; i++)
	{
		var extra=8*i;
		if (tilemap_get_at_pixel(tilemap,oPlayer.x+xmod,oPlayer.y-extra+ymod)==1) 
		{
			startmoving=true;
			leidis=true;
		destX=oPlayer.x+xmod;
		destY=oPlayer.y-extra+ymod-14;	
		}	
	}
	
	if (leidis==false) {alarm[0]=4;exit;}
	
	}

	
} else {startmoving=false;alarm[0]=30; exit;}
	}
	
if (destX!=0) && (destY!=0)
{
if (startmoving) 
{
	if (state!=2)
	{
	state=2;
	image_xscale=scale;
	}
}
} else {alarm[0]=30;}