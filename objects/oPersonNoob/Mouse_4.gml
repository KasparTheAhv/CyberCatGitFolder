/// @desc
if instance_exists(oPlayer)
{
	if (point_distance(oPlayer.x,oPlayer.y,self.x,self.y)<120)	
	{
	if (oPlayer.x<self.x){image_xscale=-1;} else {image_xscale=1;}
	}
}



if instance_exists(oPlayer) && (petting==false)
{
	if (point_distance(oPlayer.x,oPlayer.y,self.x,self.y)<35)	
	{
	with (oVStick) {
		if (stick_id==1)
		{
		toimi=false;joonista=false;
		}
	}
	with(oJumpKey) {joonista=false;}
		
		
	image_index=1;	
	petting=true;
	sway=0;
	swayleft=true;
	alarm[1]=120;
	
	
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
			var texter="What a lovely kitty! Let me pet ya!";
			with (instance_create_layer(self.x,self.y-50,"Particles",oTextFloat))
			{
			timer=120;
			target=other;
			text = texter;
			length = string_length(text);
			}	
	
	
	
	
	
	}
}