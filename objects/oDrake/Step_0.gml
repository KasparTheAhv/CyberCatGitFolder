/// @desc

vsp+=grv;

if (cur_state==drakestates.leave)
{
	if (self.x>room_width+100) {garlicdeath=false; 
		

instance_destroy(oChainEnd);
instance_destroy(oChainRing);
instance_destroy(oChainEaringStart);
instance_destroy();}
self.x+=2;	
exit;	
}



if (tilemap_get_at_pixel(tilemap,x,y+vsp)!=0)
{
vsp=0;	 landed=true;
}


if (tilemap_get_at_pixel(tilemap,x+(hsp*25),y)!=0) && (tilemap_get_at_pixel(tilemap,x+(hsp*25),y-32)!=0)  {
hsp=hsp*-1;
image_xscale=image_xscale*-1;
}



if (tilemap_get_at_pixel(tilemap,x+(hsp*25),y)!=0) && (tilemap_get_at_pixel(tilemap,x+(hsp*25),y-32)==0)  {
	if (landed)
	{
	vsp-=4; landed=false;
	}
}



x+=floor(hsp);
y+=floor(vsp);
