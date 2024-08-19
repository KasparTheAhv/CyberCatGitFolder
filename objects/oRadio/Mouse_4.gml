/// @desc



if !(activated)
{
	
	if !(instance_exists(oRadiowave))
	{
		
		
		var texter="Unlike the books, Satan\nisn't softie when it comes to music";
				with (instance_create_layer(self.x,self.y-50,"Particles",oTextFloat))
				{
				timer=120;
				target=other;
				text = texter;
				length = string_length(text);
				}		
			
				var whatroom=room_get_name(room);
				var settingsmap=ds_map_secure_load("settings.sav");
				var key=string(whatroom)+"Egg1";
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
		
		
		
		
		
		
		
	activated=true;
	play_sound(snRams,true);
	instance_create_layer(x-57,y+14,"Electro",oRadiowave);
	instance_create_layer(x+38,y+14,"Electro",oRadiowave);
	instance_create_layer(x-57,y-2, "Electro",oRadiowave);
	instance_create_layer(x+38,y-2, "Electro",oRadiowave);
	}

} else {
instance_destroy(oRadiowave);
audio_stop_sound(snRams);
activated=false;
}

