/// @desc

	if !(lastind)
	{
		if (image_index<4)
		{
			image_index+=1;	
		} else {
			stage=2;
			lastind=true;
			oCellarDoorF.alarm[0]=1;
		}		
	}
	
	alarm[0]=3;
