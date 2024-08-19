if (catnip==3)
{
self.catnip=4;
	alarm[7]=1;
}
if instance_exists(oPlayerGod)
{
cur_state=gatosta.stand;
}
if (cur_state==gatosta.stand) 
{	
swox=self.x+(6*image_xscale);
swoy=self.y-((19-image_index)*image_yscale);
image_angle=0;
	if (instance_exists(oPlayerGod))
	{
	swordtarget = oPlayerGod;
	} else {swordtarget=oFollowPlayer;sword_yscale=1;}
	
	if (instance_exists(oBullet))
	{
		var who = instance_nearest(x,y,oBullet);
		if (point_distance(x,y,who.x,who.y)<55)
		{
			var lel = who.direction+180+(irandom_range(-75,75));
			who.direction=lel;
			who.image_angle=lel;
			if (swolock==false)
			{	
			if (sword_yscale==1) {sword_yscale=-1;swolock=true;alarm[5]=3;} else {sword_yscale=1;swolock=true;alarm[5]=3;}
			}
		}
	} 
	if (swordtarget.x>self.x) {image_xscale=1;} else {image_xscale=-1;}
	
	if (image_xscale==1)
	{
	swodir=point_direction(x,y,swordtarget.x,swordtarget.y);
	} else {
	swodir=point_direction(x,y,swordtarget.x,swordtarget.y)+180;	
	}
	
if (tilemap_get_at_pixel(tilemap,x,y+2)!=0)
{	
exit;
} 
if (tilemap_get_at_pixel(tilemap2,x,y+2)!=0)
{	
exit;
} 
if (tilemap_get_at_pixel(tilemap3,x,y+2)!=0)
{
exit;	
}
y += 3;

}


if (cur_state==gatosta.fly) 
{
if (swodir<360) {swodir+=20;} else {swodir=20;}
swoxscale = 0.5 + 0.5 * abs(dcos(swodir));
swoyscale = 0.5 + 0.5 * abs(dsin(swodir));	
swox =self.x+ lengthdir_x(31,image_angle+90);
swoy =self.y+ lengthdir_y(31,image_angle+90);
if instance_exists(whatrat)
{
move_towards_point(whatrat.x,whatrat.y,5);
var dir=point_direction(x,y,whatrat.x,whatrat.y-800);
image_angle=dir-90;
} else {sprite_index=sElGato;speed=0;image_angle=0;cur_state=gatosta.stand;alarm[0]=60;}
}

