/// @desc Free up the surface when object is destroyed
surface_free(zoomSurface); // free the surface
view_visible[1]=false; // make it invisible
instance_destroy(oMouseDest); // destroy the object that was being followed