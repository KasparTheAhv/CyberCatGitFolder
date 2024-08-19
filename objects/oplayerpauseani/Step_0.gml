/// @desc
var xx = device_mouse_x_to_gui(0);
var yy = device_mouse_y_to_gui(0);
if mouse_check_button(mb_any)
{
	if (point_distance(x,y,xx,yy)<80)
	{
		if (UserDebugTime<60) {
			
			
			if (global.admin)
			{
			UserDebugTime+=1;
			}
			
			}
		else 
		{
			UserDebugTime=-1000;
			alarm[0]=1;
		}
	} else {UserDebugTime=0;}
		
} else {UserDebugTime=0;}