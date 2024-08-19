if (image_index==9) {exit;}

if (distance_to_object(oPlayer)<25)
{
	 play_sound(snLock,false);
		if (oPlayer.x>self.x)
		{
			image_xscale=-1;
			alarm[0]=1;
		} else {
			image_xscale=1;
			alarm[0]=1;
		}

} else {alarm[2]=3;}




