/// @desc
vsp+=grv;
vsp=clamp(vsp,-8,8);
if (hidden) {image_alpha=0;} else {image_alpha=1;}


var who = oFollowPlayer;
if instance_exists(oPlayer) {who=oPlayer;}
if instance_exists(oPlayerFall) {who=oPlayerFall;}
if instance_exists(oPlayerAttack) {who=oPlayerAttack;}
var desiredX=noone;
if (who.x>self.x) {upperxScale=1;desiredX=who.x-desireddist;} else {upperxScale=-1;desiredX=who.x+desireddist;}

if !(hidden)
{
	/// movement system
	if (desiredX!=noone)
	{
		if (point_distance(x,0,desiredX,0)>5)
		{
			if (desiredX>x)	 {hsp=2; image_speed=1; image_xscale=sign(hsp);} else {hsp=-2; image_speed=1; image_xscale=sign(hsp);}
		} else {hsp=0;image_speed=0;image_index=0;}
		
	} 
}

var whatwall= sign(hsp);
// jumping, gravity block, bump off wall
if (tilemap_get_at_pixel(tilemap,x+(whatwall*3),y-10)!=0) && (tilemap_get_at_pixel(tilemap,x+(whatwall*3),y-42)==0)
{
vsp=-4;
}
if (tilemap_get_at_pixel(tilemap,x+(whatwall*3),y-10)!=0)  && (tilemap_get_at_pixel(tilemap,x+(whatwall*3),y-42)!=0)
{
hsp=0; image_speed=0; image_index=0;
}
if (tilemap_get_at_pixel(tilemap,x,y-6)!=0) && (vsp>0)
{
vsp=0;
}

if !(hidden)
{
self.y+=vsp;
self.x+=hsp;
}

