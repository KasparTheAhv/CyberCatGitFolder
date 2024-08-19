// Destroy the object once the mouse click/touch has been released.
if !(device_mouse_check_button(what_device,mb_any)) {instance_destroy();}

// Convert room cordinates to gui for drawing of the magnifying glass.
xx = device_mouse_x_to_gui(what_device);
yy = device_mouse_y_to_gui(what_device);

