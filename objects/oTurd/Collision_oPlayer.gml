/// @desc
if (point_distance(x,y,other.x,other.y)<15)
{
	with (other)
	{
		if !(immune)
		{
		shot+=1;
		alarm[8]=30;
		play_sound(snTurd,false);
		instance_destroy(other);
		self.image_blend=c_orange;
			if (shot>1)
			{
			alarm[8]=30;	
			play_sound(snOuch,false);		
			
			if (self.x>other.x) {var scale=1;} else {var scale=-1;}
			
			with (instance_create_layer(x,y-1,"Characters",oPlayerFall))
			{
			superplatform=other.superplatform;
			hsp= 2*scale;
			vsp= -3;
			if (sign(hsp) !=0) image_xscale = sign(hsp)*0.7;
			}
			instance_destroy(oPlayer);
			}	
		}
	}
}