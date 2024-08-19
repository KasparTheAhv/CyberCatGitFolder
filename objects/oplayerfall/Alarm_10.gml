/// @desc revive
// You can write your code in this editor
if (die) {
		var settingsmap=ds_map_secure_load("settings.sav");
		var deathCount=ds_map_find_value(settingsmap,"deathCount");
		var newcount = deathCount+1;
		ds_map_set(settingsmap,"deathCount",newcount);
		ds_map_secure_save(settingsmap,"settings.sav");
		with (oTransition)
		{
		text=global.text[global.textnr];
		text=string_replace_all(text, "{DEATH_COUNT}", string(newcount));
		alltext=string(textscale)+string(textalpha)+"[fOrbitronBigOut][fa_center][fa_middle]"+string(text);	
		}
		alarm[3]=5; // slidetrans
		exit;
	} else { // ad revive
		
		
	if instance_exists(oRoomController) && (oRoomController.canrevive)
	{
		if instance_exists(oGUIBAR) && (oGUIBAR.hp<=0)	
		{
		var hasNetwork = os_is_network_connected();
		var hasUnity = UnityAds_isInitialized();
		var isReady = global.unityRDY;
		show_debug_message("hasNet: "+string(hasNetwork));
		show_debug_message("hasUnity: "+string(hasUnity));
		show_debug_message("isReady: "+string(isReady));
			if (hasNetwork) && (hasUnity) && (isReady)
			{
				instance_create_layer(x,y,"Characters",oAdRevive);
				exit;
			}
		//if (os_type==os_windows) 
		//{
		//	instance_create_layer(x,y,"Characters",oAdRevive);
		//	exit;
		//}
			
			
			
		}
	}
		
		
	}



if instance_exists(oGUIBAR) && (oGUIBAR.hp>0)
{
	if !instance_exists(oPlayer)
	{
		with(instance_create_layer(x,y,"Characters",oPlayer))
		{
		superplatform=other.superplatform;
		immune=true;
		alarm[4]=50; // turn off immunity
		sprite_index=global.sPlayer;
		image_xscale=other.image_xscale;
		image_blend=c_yellow;
		alarm[8]=50; // change color back to white
		}
		instance_destroy();
	}
} else {
	var settingsmap=ds_map_secure_load("settings.sav");
	var deathCount=ds_map_find_value(settingsmap,"deathCount");
	var newcount = deathCount+1;
	ds_map_set(settingsmap,"deathCount",newcount);
	ds_map_secure_save(settingsmap,"settings.sav");
	with (oTransition)
	{
	text=global.text[global.textnr];
	text=string_replace_all(text, "{DEATH_COUNT}", string(newcount));
	alltext=string(textscale)+string(textalpha)+"[fOrbitronBigOut][fa_center][fa_middle]"+string(text);	
	}
	alarm[3]=5; // slidetrans
	exit;
}