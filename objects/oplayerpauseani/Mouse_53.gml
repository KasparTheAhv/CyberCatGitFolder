/// @desc
var xx = device_mouse_x_to_gui(0);
var yy = device_mouse_y_to_gui(0);

if (point_distance(x,y,xx,yy)<80) && (global.debugButtonsAdded==true)
{
show_debug_overlay(true);
}

