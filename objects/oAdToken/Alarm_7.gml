/// @desc Give reward
image_index=5;

		var settingsmap=ds_map_secure_load("settings.sav");	
		var canDaily = ds_map_find_value(settingsmap,"canDaily");
		
		if (canDaily==1)
		{
		// set canDaily to false
		ds_map_set(settingsmap,"canDaily",0);
		instance_destroy(oDailyReward);
		// give tokens
		var skintokens=ds_map_find_value(settingsmap,"skintokens"); //current skin tokens
		if is_undefined(skintokens){skintokens=0;}
		var newamount=skintokens+2;
		ds_map_set(settingsmap,"skintokens",newamount);
		ds_map_secure_save(settingsmap,"settings.sav");
		
		oPlayControllerA.alarm[2]=4;
		
		instance_create_layer(x,y,"Instances",oOneTokenUp);			
		alarm[8]=45;
		} else {
			cur_state=adTokenStates.fade;
			luba=false;	
		}
		
		
		

