/// @desc start walking fake cat until timer ends
if (timer>0)
{
timer-=1;	
alarm[1]=1;
} else {
	if (sequence==0)
	{
		// throw skillbook
		hsp=0;
		image_alpha=0;
		alarm[4]=1;
		instance_create_layer(x,y,"Characters",oPlayer);
		with(oVStick) {
		toimi=false;	
		}
	}
}