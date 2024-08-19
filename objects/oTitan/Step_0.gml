/// @desc
vsp+=grv;
vsp=clamp(vsp,-8,8);
if (current_state==titanstates.eat)
{
	handx= self.x+(32*sign(image_xscale))  
	handy= y - 44;
	}
if (canchase)
{
	if instance_exists(oPlayer)
	{
	if (point_distance(x,y,oPlayer.x,oPlayer.y)<290)	
		{
			if (alarm_get(0)>10) {alarm[0]=10;}
		}
	}
}

var whatwall= sign(hsp);

if (current_state==titanstates.follow)
{
	if (tilemap_get_at_pixel(tilemap,x+(whatwall*3),y-10)!=0) && (tilemap_get_at_pixel(tilemap,x+(whatwall*3),y-42)==0)
	{
	vsp=-4;
	}
}
if (tilemap_get_at_pixel(tilemap,x+(whatwall*3),y-10)!=0)  && (tilemap_get_at_pixel(tilemap,x+(whatwall*3),y-42)!=0)
{
hsp=hsp*-1; image_xscale=image_xscale*-1;
}

if (tilemap_get_at_pixel(tilemap,x,y-6)!=0) && (vsp>0)
{
vsp=0;
}

if (current_state==titanstates.follow)
{
		
	
	
		// who follow
		var who =oFollowPlayer;
		if instance_exists(oPlayer) {who=oPlayer;}
		if instance_exists(oPlayerAttack) {who=oPlayerAttack;}
		
		// start spit state if near x but not y
		if (spitdelay<=0) && (vsp<0.5)
		{
			if (point_distance(x,0,who.x,0)<20) && (point_distance(0,y,0,who.y)>50)
			{
			sprite_index=sTitanS;
			image_speed=0;
			times=2;
			hsp=0;
			vsp=0;
			current_state=titanstates.spit;
			alarm[0]=-1;
			alarm[10]=1;
			exit;
			}
		} else {spitdelay-=1;}
		// eat if near
		if (place_meeting(x,y,who)) && (who!=oFollowPlayer) {  
			
			
			handx= self.x+(32*sign(image_xscale))  
			handy= y - 44;
			current_state=titanstates.eat;sprite_index=sTitaneat; instance_destroy(oPlayer);instance_destroy(oPlayerAttack); image_speed=0; image_index=0; alarm[1]=40; hsp=0; 
		
		
		} else {
			
		followdelay=followdelay-1;
		if (followdelay<0)
		{
			followdelay=40;
			if (who.x<self.x) {hsp=-4; image_xscale=-2; } else {hsp=4;image_xscale=2;}	
		}
		
		}
}

self.y+=vsp;
if !(hspstuck){
self.x+=hsp;}