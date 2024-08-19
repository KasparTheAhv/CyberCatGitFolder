/// @desc

if (state==0) // if not crying
{
	if (rage>0) {rage-=0.85;image_index=1;}
	if (rage<=0) {image_index=0;}
	if (rage>=300) {image_index=2; crying=true; speedup=true; state=1; rage=0; }
}


if (state==1)
{
	
	
	part_emitter_region(oRoomController.part_sys,oRoomController.pemit,x-50,x+50,y+20,y+34,ps_shape_rectangle,ps_distr_gaussian);
	part_emitter_stream(oRoomController.part_sys,oRoomController.pemit,partrain, 3);
	
	
		x+=mspeed;
	
	if (x>=1650) 
	{
		speedup=false;
	}
	
	if (speedup)
	{
		if (mspeed<3)
		{
			mspeed+=0.01;
		}
	} else {
		if (mspeed>0)
		{
			mspeed-=0.1;
		} 
		if (mspeed<=0) {part_emitter_stream(oRoomController.part_sys,oRoomController.pemit,partrain, 0); state=2; speedup=true; image_index=0; crying=false;}
	}
	

}

if (state==2)
{
		x-=mspeed;
	
	if (x<375) 
	{
		speedup=false;
	}
	
	if (speedup)
	{
		if (mspeed<3)
		{
			mspeed+=0.05;
		}
	} else {
		if (mspeed>0)
		{
			mspeed-=0.1;
		}	
		if (mspeed<=0) { state=0; speedup=true; rage=0;}
	}
	

}
