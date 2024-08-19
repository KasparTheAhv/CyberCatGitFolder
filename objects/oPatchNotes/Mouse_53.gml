/// @desc
	var mox = device_mouse_x_to_gui(0);
	var moy = device_mouse_y_to_gui(0);
	if (point_distance(report_x,report_y,mox,moy)<40)
	{
		var txt	= "_ScreenW/H: "+string(display_get_width())+"/"+string(display_get_height());
		txt	= txt + "  _AppSurfW/H: "+string(surface_get_width(application_surface))+"/"+string(surface_get_height(application_surface));
		txt	= txt + "  _GuiW/H: "+string(display_get_gui_width())+"/"+string(display_get_gui_height());
		txt	= txt + "  _ViewW/H: "+string(camera_get_view_width(view_camera[0]))+"/"+string(camera_get_view_height(view_camera[0]));
		txt	= txt + "  _ViewportW/H: "+string(view_get_wport(0))+"/"+string(view_get_hport(0));
		txt	= txt + "  _TimingMethod: "+string(display_get_timing_method());
		txt	= txt + "  _Sleep margin: "+string(display_get_sleep_margin());
		txt	= txt + "  _os version: "+string(os_version);
		txt	= txt + "  _GFX2: "+string(global.GFX2);
		txt	= txt + "  _GFX3: "+string(global.GFX3);
		txt	= txt + "  _GFX4: "+string(global.GFX4);
		txt	= txt + "  _GFX5: "+string(global.GFX5);
		txt	= txt + "  _MFX: "+string(global.volume_mfx);
		txt	= txt + "  _SFX: "+string(global.volume_sfx);	
		clipboard_set_text(txt);
		alarm[2]=3;
	}