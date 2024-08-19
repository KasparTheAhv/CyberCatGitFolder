/// @desc

// chase demon or ...fade away and destroy
if instance_exists(oDemon) 
{
	if (spin)
	{

		var nearestbul= instance_nearest(x,y,oBullet);
		if instance_exists(oPlayerGod) {rotspeed=30;	
			
			if instance_exists(nearestbul)
			{
			if (point_distance(nearestbul.x,nearestbul.y,x,y)<115)
			{
				if (nearestbul.ineffective==false)
				{
					with(nearestbul)
					{
					ineffective=true;
					direction=direction+irandom_range(160,200);
					image_angle=direction;
					sprite_index=sBulletRed;
					}
				}
			}
			
		}
		} else {rotspeed=15;}
		
		
	self.x=oDemon.x;
	self.y=oDemon.y;
	} else {
	self.x=oDemon.x;
	self.y=oDemon.y+24;	
	}
} else {

	if (tilemap_get_at_pixel(tilemap,x,y)==0)
	{
		self.y+=5;
	} else
	{ 
		if (image_alpha>0) {image_alpha-=0.02;} else {instance_destroy();}} 
}

if (spin)
{
if (paremale)
	{image_angle+=rotspeed;} else {image_angle-=rotspeed;}
	
} else { // not spinning
	if instance_exists(oDemon)
	{
	image_angle=oDemon.demonangle;
	}
}