if (instance_exists(oAdRevive)) {exit;}

if (device_mouse_check_button(what_device,mb_any))
{
	if (touchstarted)
	{
		touchtime+=1;
		var curmouseX=device_mouse_x(what_device);
		var curmouseY=device_mouse_y(what_device);
		if (point_distance(curmouseX,curmouseY,algneX,algneY)>20)
		{
			touchstarted=false; alarm[2]=1; touchtime=0; exit;
		}
		
		if (touchtime>20)
		{
			touchstarted=false; alarm[3]=1; touchtime=0; exit;
		}	
	} 
} else {
	if (touchstarted)
	{
	touchstarted=false; alarm[3]=1; touchtime=0; exit;
	}
}