with (other)
{
instance_destroy();
}

play_sound(snCatnipCount,false);

if instance_exists(oGUIBAR)
{
		var settingsmap = ds_map_secure_load("settings.sav")
		var prevValue = ds_map_find_value(settingsmap,"STATS_Catnip");
		if is_undefined(prevValue){prevValue=0;}
		var neWvalue = prevValue+1;
		ds_map_set(settingsmap,"STATS_Catnip",neWvalue);
		ds_map_secure_save(settingsmap,"settings.sav");
		oGUIBAR.cn+=25;
		if instance_exists(oPlayer){target=oPlayer;}
		if instance_exists(oPlayerFall){target=oPlayerFall;}
		if instance_exists(oPlayerAttack){target=oPlayerAttack;}
	if (oGUIBAR.cn>=150)
	{
		if !instance_exists(oLightning)
		{
		self.immune=true;
		instance_create_layer(target.x,target.y,"Particles",oLightning);
		}
	}	
}