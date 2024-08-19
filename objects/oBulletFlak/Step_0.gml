/// @desc
prevx=x;
prevy=y;

with (collision_line(x,y,prevx,prevy,oBirdPathless,false,true))
{
	with (instance_create_layer(self.x,self.y+25,"Characters",oBirdFall))
	{
		if instance_exists(oPlayerGod) {image_blend=c_aqua;} 
	vsp= 2;
	hsp= irandom_range(-3,3);
	}
	instance_destroy(self);
	other.kills+=1;
}

if (kills>1) && !(rewarded)
{
	rewarded=true;
	
			var texter="Well done! Two birds with one stone!";
				with (instance_create_layer(self.x,self.y-50,"Particles",oTextFloat))
				{
				timer=120;
				extraheight=50;
				target=oFlakSihik;
				text = texter;
				length = string_length(text);
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
	
}

