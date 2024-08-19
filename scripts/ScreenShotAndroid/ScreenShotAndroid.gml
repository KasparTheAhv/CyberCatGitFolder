// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ScreenShotAndroid(){
// Get the size of the application surface
var surface_width = display_get_width();
var surface_height = display_get_height();

// Create a new surface to capture the application surface
var _surface = surface_create(surface_width, surface_height);

// Set the target surface to the new surface
surface_set_target(_surface);

// Clear the surface with a transparent background
draw_clear_alpha(c_black, 0);

// Draw the application surface onto the new surface
draw_surface(application_surface, 0, 0);

// Reset the target surface to the application surface
surface_reset_target();

// Save the surface as an image file
var _filename = "screenshot_" + string(get_timer()) + ".png";
surface_save(_surface, _filename);

// Free the created surface to avoid memory leaks
surface_free(_surface);

// Notify the user (optional)
show_debug_message("Screenshot saved as: " + _filename);
}