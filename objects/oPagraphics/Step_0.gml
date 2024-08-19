/// @desc

if (canFps<=0)
{
curFPS=round(fps_real); canFps=10;
} else {
canFps-=1;	
}

if instance_exists(oPagraphics)
{
	for (var i =0; i<3; i++)
	{
	if device_mouse_check_button_released(i,mb_any)
	{
	var _touch_x = device_mouse_x_to_gui(i);
	var _touch_y = device_mouse_y_to_gui(i);
	var who_touch = instance_position(_touch_x, _touch_y, oPagraphics);
	if (who_touch != noone)
	{
		with(who_touch) {who_touch.alarm[1]=1;}
	}
	}
	}
}
if instance_exists(oPaAutoJump)
{
	for (var i =0; i<3; i++)
	{
	if device_mouse_check_button_released(i,mb_any)
	{
	var _touch_x = device_mouse_x_to_gui(i);
	var _touch_y = device_mouse_y_to_gui(i);
	var who_touch = instance_position(_touch_x, _touch_y, oPaAutoJump);
	if (who_touch != noone)
	{
		with(who_touch) {who_touch.alarm[1]=1;}
	}
	}
	}
}
if instance_exists(oPaskinF)
{
	for (var i =0; i<3; i++)
	{
	if device_mouse_check_button_released(i,mb_any)
	{
	var _touch_x = device_mouse_x_to_gui(i);
	var _touch_y = device_mouse_y_to_gui(i);
	var who_touch = instance_position(_touch_x, _touch_y, oPaskinF);
	if (who_touch != noone)
	{
		with(who_touch) {who_touch.alarm[1]=1;}
	}
	}
	}
}
if instance_exists(oPaskinB)
{
	for (var i =0; i<3; i++)
	{
	if device_mouse_check_button_released(i,mb_any)
	{
	var _touch_x = device_mouse_x_to_gui(i);
	var _touch_y = device_mouse_y_to_gui(i);
	var who_touch = instance_position(_touch_x, _touch_y, oPaskinB);
	if (who_touch != noone)
	{
		with(who_touch) {who_touch.alarm[1]=1;}
	}
	}
	}
}	

if (settingsOn==false) {exit;}


// first setting

