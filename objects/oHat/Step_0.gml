if (picked)
{	
	if (instance_exists(mytarget))
	{
		depth=mytarget.depth-5;
		image_xscale=ogXscale*sign(mytarget.image_xscale);
		if (mytarget.object_index==oPlayer)	
		{
			if (mytarget.sprite_index==global.sPlayerAFK)
			{
				xmoder=3;
				moder=9;
			} else {moder=0;xmoder=0;}
		} else {moder=0;xmoder=0;}
	var side=sign(mytarget.image_xscale);
	self.x=mytarget.x+(xmod*side)-(xmoder*side);
	self.y=mytarget.y-(ymod)+moder;
		if (mytarget.sprite_index==global.sPlayerR)
		{
			if (angright)
			{
			if (image_angle>340) {image_angle-=3;} else {angright=false;}
			} else {
			if (image_angle<380) {image_angle+=3;} else {angright=true;}	
			}
		}
	} else {
		moder=0;
		xmoder=0;
		if instance_exists(oPlayer)
		{
		oPlayer.picked=false;
		} picked=false; image_angle=360;
		
		}
} else {
	self.layer=layer_get_id("Characters"); 
	
	if (tilemap_get_at_pixel(tilemap,x,y+1)==0) && (tilemap_get_at_pixel(tilemap2,x,y+2)==0)
			{
				if (clicked) {self.y+=2;}
			}		
}