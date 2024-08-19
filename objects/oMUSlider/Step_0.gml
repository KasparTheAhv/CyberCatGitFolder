if mouse_check_button_pressed(mb_left) {
	var button_x = x+sprite_width*value_;
	var button_y = y;
	var button_radius = sprite_get_height(sButton)*global.scaler*1.6;
	var mousex = device_mouse_x_to_gui(0);
	var mousey = device_mouse_y_to_gui(0);
	if point_in_circle(mousex, mousey, button_x, button_y, button_radius) {
		selected_ = true;
		locker=0;
	}
}


if mouse_check_button_released(mb_left)
{
	var settingsmap = ds_map_secure_load("settings.sav");
	ds_map_set(settingsmap,"volume_mfx",global.volume_mfx);
	ds_map_secure_save(settingsmap,"settings.sav");
}


if !mouse_check_button(mb_left) {
	selected_ = false;
}

if selected_ { //change global volume according to slider (from 0 to 1)
	var mousex = device_mouse_x_to_gui(0);
	value_ = clamp((mousex-x)/sprite_width, 0, max_value_);
	global.volume_mfx=value_;
	if (alarm_get(0)==-1) {alarm[0]=2;}
}

if mouse_check_button(mb_any)
{
self.scale=(0.5+1*global.GUI)*scaler;
image_xscale=self.scale;
poolsliderit=sprite_get_width(sSlider)*0.5*self.scale;
self.x=round(gW*0.25-poolsliderit);
my_y=round(self.y-60-(40*global.GUI*global.GUI*scaler));
}
widthWhole=sprite_width*value_*(1/image_xscale);
xWhole=x+(sprite_width*value_);