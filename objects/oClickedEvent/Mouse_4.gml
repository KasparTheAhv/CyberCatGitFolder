
if !instance_exists(oPlayer) {exit;}
if (point_distance(oPlayer.x,oPlayer.y,x,y)<70)
{
	if !(pressed)
	{
	if (norepress) {pressed=true;} else {pressed=false;}
		 
	
		
		if (cevent_id==1)
		{
			if !(audio_is_playing(snToilet)){play_sound(snToilet,false);}
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
		}
			
		if (cevent_id==2)
		{ 
			var whatroom=room_get_name(room);
			var settingsmap=ds_map_secure_load("settings.sav");
			var key=string(whatroom)+"Egg2";
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
			text="when you brush your teeth, it's the\nonly time when you wash your skeleton"
			with (instance_create_layer(self.x,self.y-50,"Particles",oText))
				{
				target=other;
				text = other.text;
				length = string_length(text);
				}
			with (oFollowPlayer)
				{
				target = instance_nearest(x,y,oClickedEvent);
				extraheight=50;
				}
			
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
		}
			if (cevent_id==3)
		{
			var whatroom=room_get_name(room);
			var settingsmap=ds_map_secure_load("settings.sav");
			var key=string(whatroom)+"Egg2";
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
			text="I'm pretty sure this belongs to CS: GO.\nHow did it end up here?"
			
			with (instance_create_layer(self.x,self.y-50,"Particles",oText))
				{
				target=other;
				text = other.text;
				length = string_length(text);
				}
			with (oFollowPlayer)
				{
				target = instance_nearest(x,y,oClickedEvent);
				extraheight=50;
				}
			
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
		}
		if (cevent_id==4)
		{
			var whatroom=room_get_name(room);
			var settingsmap=ds_map_secure_load("settings.sav");
			var key=string(whatroom)+"Egg2";
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
			
		text="How did Kenny's corpse end up here?";
		with (instance_create_layer(oFollowPlayer.x,oFollowPlayer.y-80,"Particles",oTextFloat))
		{
		target=oFollowPlayer;
		text = other.text;
		length = string_length(text);
		timer=140;
		}
	
		}
		if (cevent_id==5)
		{
			var whatroom=room_get_name(room);
			var settingsmap=ds_map_secure_load("settings.sav");
			var key=string(whatroom)+"Egg2";
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
			text="Wait a sec.\nI've played that game!";
			
		with (instance_create_layer(oFollowPlayer.x,oFollowPlayer.y-80,"Particles",oTextFloat))
		{
		target=oFollowPlayer;
		text = other.text;
		length = string_length(text);
		timer=140;
		}
	
		}
		
		if (cevent_id==6)
		{
			var whatroom=room_get_name(room);
			var settingsmap=ds_map_secure_load("settings.sav");
			var key=string(whatroom)+"Egg2";
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
			text="Weird, why would someone leave\nsuch a big whooper burger uneaten!";
			
		with (instance_create_layer(oFollowPlayer.x,oFollowPlayer.y-80,"Particles",oTextFloat))
		{
		target=oFollowPlayer;
		text = other.text;
		length = string_length(text);
		timer=140;
		}
	
		}
		
		if (cevent_id==7) && !(instance_exists(oTextFloat))
		{
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
			text="POLSKA GUROM!";
			
		with (instance_create_layer(oFollowPlayer.x,oFollowPlayer.y-80,"Particles",oTextFloat))
		{
		target=oFollowPlayer;
		text = other.text;
		length = string_length(text);
		timer=140;
		}
	
		}
		
			if (cevent_id==8) && !(instance_exists(oTextFloat))
		{
			var whatroom=room_get_name(room);
			var settingsmap=ds_map_secure_load("settings.sav");
			var key=string(whatroom)+"Egg2";
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
			text="Developers favorite for sure.";
			
		with (instance_create_layer(oFollowPlayer.x,oFollowPlayer.y-80,"Particles",oTextFloat))
		{
		target=oFollowPlayer;
		text = other.text;
		length = string_length(text);
		timer=140;
		}
	
		}
		if (cevent_id==9) && !(instance_exists(oTextFloat))
		{
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
			text="Stray? What's that?\nanother cat simulator?";
			
		with (instance_create_layer(oFollowPlayer.x,oFollowPlayer.y-80,"Particles",oTextFloat))
		{
		target=oFollowPlayer;
		text = other.text;
		length = string_length(text);
		timer=140;
		}
	
		}
		//  league match history
		if (cevent_id==10) && !(instance_exists(oTextFloat))
		{
			var whatroom=room_get_name(room);
			var settingsmap=ds_map_secure_load("settings.sav");
			var key=string(whatroom)+"Egg2";
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
			text="Big boy left his match history open\n 0/10/0 with Gragas. No wonder he\ncame outside for fresh air.";
			
		with (instance_create_layer(oFollowPlayer.x,oFollowPlayer.y-80,"Particles",oTextFloat))
		{
		target=oFollowPlayer;
		text = other.text;
		length = string_length(text);
		timer=140;
		}
	
		}
		// satans book
		if (cevent_id==11) && !(instance_exists(oTextFloat))
		{
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
			text="Looks like Satan is a softie!";
			
		with (instance_create_layer(oFollowPlayer.x,oFollowPlayer.y-80,"Particles",oTextFloat))
		{
		target=oFollowPlayer;
		text = other.text;
		length = string_length(text);
		timer=140;
		}
	
		}
		// The beatles
		if (cevent_id==12) && !(instance_exists(oTextFloat))
		{
			if !(instance_exists(oBagu))
			{
			var whatroom=room_get_name(room);
			var settingsmap=ds_map_secure_load("settings.sav");
			var key=string(whatroom)+"Egg2";
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
				text="It's tha beatles!";
				
			with (instance_create_layer(oFollowPlayer.x,oFollowPlayer.y-80,"Particles",oTextFloat))
			{
			target=oFollowPlayer;
			text = other.text;
			length = string_length(text);
			timer=140;
			}
		
			} 
		}
		// porta
		if (cevent_id==13) && !(instance_exists(oTextFloat))
		{
			if instance_exists(oPlayer)
			{
			if (point_distance(x,y,oPlayer.x,oPlayer.y)>60) {exit;}
			if instance_exists(oGarlicBread) {exit;}
			if instance_exists(oLoafOfMilk) {exit;}
			alarm[0]=120;
			instance_destroy(oPlayer);
			}
	
	
		}
			// 
		if (cevent_id==14) && !(instance_exists(oTextFloat))
		{
			var whatroom=room_get_name(room);
			var settingsmap=ds_map_secure_load("settings.sav");
			var key=string(whatroom)+"Egg2";
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
			text="You can't turn these off!";
			
		with (instance_create_layer(oFollowPlayer.x,oFollowPlayer.y-80,"Particles",oTextFloat))
		{
		target=oFollowPlayer;
		text = other.text;
		length = string_length(text);
		timer=140;
		}
	
		}
		// end
	}
}