/// @desc Set up surface
surfsize=384; // the size on gui layer you're aiming for (in pixels)  384px
backscale=surfsize/64; // 64 - based on the glass square size along with rims. 
// we need backscale to upscale our projected surface


// If no oMouseDest has been created, create one at the mouse x/y cordinates
if !(instance_exists(oMouseDest)) {
	instance_create_layer(mouse_x,mouse_y,"BefEdge",oMouseDest);
}

// Surface creation and reset for use
zoomSurface=surface_create(surfsize,surfsize);

// We target the second view_camera to follow oMouseDest
camera_set_view_target(view_camera[1],oMouseDest);
// We set the created surface to be targeted by the upcoming functions
surface_set_target(zoomSurface);

// we clear the drawing of the surface with a black color that has 0 alpha.
// Don't ask me why, just trust me that this will prevent visual glitches upon use.
draw_clear_alpha(c_black,0);
// we now reset the target surface, because once a surface is created, it may contain static noise.
surface_reset_target();

// set the contents of a given view port to draw to the just made surface,
view_surface_id[1] = zoomSurface;
// make the surface visible ( precaution )
view_visible[1]=true;

// Calculating how many times we need to upscale the magnifying glass
picsize=surfsize/52; // 52 pixels - based on the size of emptiness in the sprite.



