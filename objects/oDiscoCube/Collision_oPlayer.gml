/// @desc
if (point_distance(x,y,other.x,other.y)<5)
{
	if (readyforchange)
	{
		if (touched==false)
		{
		touched=true;
		readyforchange=false;
		if (cubenr<6) {cubenr+=1;} else {cubenr=0;}
		if (cubenr==6) {image_speed=1;
			
			// Egg
			if !instance_exists(oText) && !instance_exists(oTextFloat)
			{
				var texter="Wow, I glitched it...";
				with (instance_create_layer(self.x,self.y-50,"Particles",oTextFloat))
				{
				timer=120;
				target=other;
				text = texter;
				length = string_length(text);
				}		
			}
				var whatroom=room_get_name(room);
				var settingsmap=ds_map_secure_load("settings.sav");
				var key=string(whatroom)+"Egg3";
				var prevvalue = ds_map_find_value(settingsmap,key);
				if is_undefined(prevvalue) or (prevvalue==0)
				{
					with (instance_create_layer(x,y,"BefEdge",oEggNoti))
					{
						isEgg=true;
					}
					ds_map_set(settingsmap,key,1);
					ds_map_secure_save(settingsmap,"settings.sav");
				}			
			//
			} else {image_speed=0;image_index=cubenr;}
		}
	}
}