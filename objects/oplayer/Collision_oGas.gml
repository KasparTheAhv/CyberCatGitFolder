if !(immune)
{
	var amp=1;
play_sound(snOuch,false);	
	with (other)
	{
	if (boom) {amp=3;
		
		if (room==Room14)
		{
			text="The wiki forgot to mention\nit drops nukes instead of regular eggs";
			with (instance_create_layer(oFollowPlayer.x,oFollowPlayer.y-80,"Particles",oTextFloat))
			{
			target=oFollowPlayer;
			text = other.text;
			length = string_length(text);
			timer=140;
		}
	}	
		
		}	
	var direct=point_direction(x,y,other.x,other.y);	
	}
with (instance_create_layer(x,y-1,"Characters",oPlayerFall))
{
	superplatform=other.superplatform;
hsp = lengthdir_x(3*amp,direct);
vsp =-2*amp;

if (sign(hsp) !=0) image_xscale = sign(hsp)*0.75;
}


instance_destroy(oPlayer);
}
