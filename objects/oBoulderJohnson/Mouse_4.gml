/// @desc
if instance_exists(oText) or instance_exists(oTextFloat) {exit;}

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
			var texter="Now you know why\nthey call me Rock Johnson.";
			with (instance_create_layer(self.x,self.y-50,"Particles",oTextFloat))
			{
			timer=120;
			target=other;
			text = texter;
			length = string_length(text);
			}	