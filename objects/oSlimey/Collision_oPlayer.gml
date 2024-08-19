/// @desc
if  (cur_state==slistates.walk)
{
	with (other)
	{
	alarm[8]=30;
	slow=0.7;
	}
}

if  (cur_state==slistates.chase)
{
	with(other)
	{
		if !(immune)
		{
		alarm[8]=30;
		self.image_blend=c_orange;
		alarm[8]=30;	
		play_sound(snOuch,false);		
		if (other.x<self.x) {var scale=1;} else {var scale=-1;}
		with (instance_create_layer(x,y-1,"Characters",oPlayerFall))
		{
		superplatform=other.superplatform;
		hsp= 3*scale;
		vsp= -4;
		if (sign(hsp) !=0) image_xscale = sign(hsp)*0.7;
		}
		instance_destroy(oPlayer);
		}	
	}
}