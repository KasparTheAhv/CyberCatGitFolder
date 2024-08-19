/// @desc

previous_mouse_x = mouse_x;
previous_mouse_y = mouse_y;

// Initialize variables to track mouse state
is_drawing = false;

draw_color=c_white;

width=sprite_width*image_xscale;
height=sprite_height*image_yscale;

surf = surface_create(width,height);


    surface_set_target(surf);
	draw_clear_alpha(c_black,1);
    surface_reset_target();