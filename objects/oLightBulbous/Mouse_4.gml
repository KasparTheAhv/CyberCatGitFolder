/// @desc
if instance_exists(oTextFloat) or instance_exists(oText) {exit;}

if (stare)
{
				var texter="I wish I could be up there\nwith my childhood brother...";
				with (instance_create_layer(self.x,self.y-50,"Particles",oTextFloat))
				{
				timer=120;
				target=other;
				text = texter;
				length = string_length(text);
				}	
				
				var whatroom=room_get_name(room);
				var settingsmap=ds_map_secure_load("settings.sav");
				var key=string(whatroom)+"Egg5";
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
				
stare=false;		

alarm[0]=160;
}