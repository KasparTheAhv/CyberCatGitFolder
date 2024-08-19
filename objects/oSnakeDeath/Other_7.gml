if (image_speed==1)
{
image_speed=0;
image_index=9;
play_sound(snShot,false);
if !(nonippy) {
	
	if (room!=Room21)
	{
			with(instance_create_layer(x,y,layer,oNippy))
			{
			depth=self.depth-5;	
			}
	} else {
		if (instance_exists(oTimer))
		{
			if (oTimer.seconds>2)
			{
		with(instance_create_layer(x,y,layer,oNippy))
			{
			depth=self.depth-5;	
			}
			}
		}
		
	}
	
	
	}
}