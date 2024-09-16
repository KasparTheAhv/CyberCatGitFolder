/// @desc

if !(global.debugmenu) {exit;}
draw_sprite_ext(sWhite,0,0,0,debugXscale,debugYscale,0,c_black,0.6);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_font(fOrbitronBig);
draw_text_transformed(gW*0.1,gH*0.1,"ScreenW/H: "+string(display_get_width())+"/"+string(display_get_height()),debugTextScale,debugTextScale,0);
draw_text_transformed(gW*0.1,gH*0.2,"AppSurfW/H: "+string(surface_get_width(application_surface))+"/"+string(surface_get_height(application_surface)),debugTextScale,debugTextScale,0);
draw_text_transformed(gW*0.1,gH*0.3,"GuiW/H: "+string(display_get_gui_width())+"/"+string(display_get_gui_height()),debugTextScale,debugTextScale,0);
draw_text_transformed(gW*0.1,gH*0.4,"ViewW/H: "+string(camera_get_view_width(view_camera[0]))+"/"+string(camera_get_view_height(view_camera[0])),debugTextScale,debugTextScale,0);
draw_text_transformed(gW*0.1,gH*0.5,"ViewportW/H: "+string(view_get_wport(0))+"/"+string(view_get_hport(0)),debugTextScale,debugTextScale,0);
draw_text_transformed(gW*0.1,gH*0.6,"TimingMethod: "+string(display_get_timing_method()),debugTextScale,debugTextScale,0);
draw_text_transformed(gW*0.1,gH*0.7,"Sleep margin: "+string(display_get_sleep_margin()),debugTextScale,debugTextScale,0);
draw_text_transformed(gW*0.1,gH*0.8,"os version: "+string(os_version),debugTextScale,debugTextScale,0);
if (global.timeNTP!=0)
{
draw_text_transformed(gW*0.6,gH*0.15,dater,debugTextScale,debugTextScale,0);
}
draw_text_transformed(gW*0.6,gH*0.25,"GFX2: "+string(global.GFX2),debugTextScale,debugTextScale,0);
draw_text_transformed(gW*0.6,gH*0.35,"GFX3: "+string(global.GFX3),debugTextScale,debugTextScale,0);
draw_text_transformed(gW*0.6,gH*0.45,"GFX4: "+string(global.GFX4),debugTextScale,debugTextScale,0);
draw_text_transformed(gW*0.6,gH*0.55,"GFX5: "+string(global.GFX5),debugTextScale,debugTextScale,0);
draw_text_transformed(gW*0.6,gH*0.65,"MFX: "+string(global.volume_mfx),debugTextScale,debugTextScale,0);
draw_text_transformed(gW*0.6,gH*0.75,"SFX: "+string(global.volume_sfx),debugTextScale,debugTextScale,0);
draw_text_transformed(gW*0.6,gH*0.85,"UnityIsTestMode: "+string(global.unityTesting),debugTextScale,debugTextScale,0);