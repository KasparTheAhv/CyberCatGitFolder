/// @desc
if (working)
{
	with(other)
	{
		if (vsp>=0) && !(immune)
		{
			self.image_blend=c_orange;
			alarm[8]=30;	
			play_sound(snOuch,false);		
			var scale=choose(1,-1);
			with (instance_create_layer(x,y-1,"Characters",oPlayerFall))
			{
				superplatform=other.superplatform;
				hsp= 2*scale;
				vsp= -3;
				if (sign(hsp) !=0) image_xscale = sign(hsp)*0.7;
				
				if !instance_exists(oTextFloat)
				{
					if (room==Room19)
					{
						var whatroom=room_get_name(room);
						var settingsmap=ds_map_secure_load("settings.sav");
						var key=string(whatroom)+"Egg1";
						var curval = ds_map_find_value(settingsmap,key);
						if (curval!=1)
						{
						UnlockNoteEgg("Egg",1);
			
							text="Shouldn't be breathing that";
							with (instance_create_layer(oFollowPlayer.x,oFollowPlayer.y-80,"Particles",oTextFloat))
							{
							target=oFollowPlayer;
							text = other.text;
							length = string_length(text);
							timer=140;
							}
						}
					}
				}
			}
			instance_destroy(oPlayer);		
		}
	}
}
