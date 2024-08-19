/// @desc Draw 
if surface_exists(zoomSurface)
{
// draw a black box	first
draw_sprite_ext(sWhite,0,xx-surfsize,yy-surfsize,backscale,backscale,0,c_black,1);
// then the magnified surface
draw_surface_ext(zoomSurface,xx-surfsize,yy-surfsize,1,1,0,c_white,1);
// then the magnifying glass on top just like a sandwich
draw_sprite_ext(sMag,0,xx-surfsize,yy-surfsize,picsize,picsize,0,c_white,1);
}