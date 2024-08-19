/// @desc
var settingsmap=ds_map_secure_load("settings.sav");
var lastlvl=ds_map_find_value(settingsmap,"lastlvl");
		
		if is_undefined(lastlvl) 
		{
		SlideTransition(TRANS_MODE.GOTO,RoomLvl);		
		} 
		else 
		{
		var whatvar = "Room"+string(lastlvl);
		var whereto = asset_get_index(whatvar);	
		SlideTransition(TRANS_MODE.GOTO,whereto);
		}