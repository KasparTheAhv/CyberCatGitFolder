if (nonippyallowed) {exit;} // exit if not allowed to pick up catnip

// From inside the catnip object
with (other)
{
	// ask if it should give catnip book
	var givenippybook=forevercatnip;
	instance_destroy();
}

// summon catnip book if allowed
if (room==Room1) && (givenippybook) {SummonTutBook(oPlayer,6);}	

// play sound for eating catnip
play_sound(snCatnipCount,false);

if instance_exists(oGUIBAR)
{
	// get current stat count for catnip collected, increase it by 1 and save it back to ds map
	var settingsmap = ds_map_secure_load("settings.sav")
	var prevValue = ds_map_find_value(settingsmap,"STATS_Catnip");
	if is_undefined(prevValue){prevValue=0;}
	var neWvalue = prevValue+1;
	ds_map_set(settingsmap,"STATS_Catnip",neWvalue);
	ds_map_secure_save(settingsmap,"settings.sav");
	
	// Increase catnip meter by 25 units	
	oGUIBAR.cn+=25;
	
	// See who collected the nippy
	if instance_exists(oPlayer){target=oPlayer;}
	if instance_exists(oPlayerFall){target=oPlayerFall;}
	if instance_exists(oPlayerAttack){target=oPlayerAttack;}
	
	// If has enough for god state
	if (oGUIBAR.cn>=150)
	{
		// and no lightning exists
		if !instance_exists(oLightning)
		{
			// make the player immune
			oPlayer.immune=true;
			// and spawn lightning to targets location
			instance_create_layer(target.x,target.y,"Particles",oLightning);
		}
	}	
}

// if room == 2
if (room==Room2) 
{
	// and it's the first catnip eaten
	if (oRoomController.firstnippy!=1)
	{
		oRoomController.firstnippy=1;
		text="mmh.. catnip";
		// create chasing text for "mmh.. catnip
		with (instance_create_layer(oFollowPlayer.x,oFollowPlayer.y-50,"Particles",oTextFloat))
		{
		target=oFollowPlayer;
		text = other.text;
		length = string_length(text);
		}
	}
}