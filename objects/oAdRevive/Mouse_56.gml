/// @desc
if (timerInd==0) {exit;}
if (cur_state==adReviveStates.appear)
{
	if (luba)
	{
	var mox=device_mouse_x_to_gui(0);
	var moy=device_mouse_y_to_gui(0);
	
	
		// no button
		if (point_distance(mox,moy,noX,noY)<butRadius) 
		{
			oPlayerFall.alarm[3]=1;
			cur_state=adReviveStates.fade;
			luba=false;
		}
		
		// yes button
		if (point_distance(mox,moy,yesX,yesY)<butRadius) 
		{
			cur_state=adReviveStates.waiting;
			image_index=1;
			luba=false;	
			if instance_exists(Obj_UnityAds) {Obj_UnityAds.alarm[5]=1;}
		}
	}
}


if (cur_state==adReviveStates.waiting)
{
		var mox=device_mouse_x_to_gui(0);
		var moy=device_mouse_y_to_gui(0);
		// no button
		if (point_distance(mox,moy,canX,canY)<cancelRadius) 
		{
			oPlayerFall.alarm[3]=1;
			image_index=3;
			cur_state=adReviveStates.fade;
			luba=false;
		}
}
