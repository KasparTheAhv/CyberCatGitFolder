/// @desc



if (cur_state==adTokenStates.appear)
{
	if (luba)
	{
	var mox=device_mouse_x_to_gui(0);
	var moy=device_mouse_y_to_gui(0);
	
	
		// no button
		if (point_distance(mox,moy,noX,noY)<butRadius) 
		{
			cur_state=adTokenStates.fade;
			luba=false;
			exit;
		}
		
		// yes button
		if (point_distance(mox,moy,yesX,yesY)<butRadius) 
		{
			// double check for cheaters
			
			var settingsmap = ds_map_secure_load("settings.sav");
			var canDaily = ds_map_find_value(settingsmap,"canDaily");
			if (canDaily==1)
			{
			cur_state=adTokenStates.waiting;
			image_index=1;
			luba=false;	
			if instance_exists(Obj_UnityAds) {Obj_UnityAds.alarm[5]=1;} 
			exit;
			} else {
				cur_state=adTokenStates.fade;
				luba=false;
				exit;
			}
			
			
			
			
			
		}
	}
	
		cur_state=adTokenStates.fade;
		luba=false;

}


if (cur_state==adTokenStates.waiting)
{
		var mox=device_mouse_x_to_gui(0);
		var moy=device_mouse_y_to_gui(0);
		// no button
		if (point_distance(mox,moy,canX,canY)<cancelRadius) 
		{
			oPlayerFall.alarm[3]=1;
			image_index=3;
			cur_state=adTokenStates.fade;
			luba=false;
		}
}
