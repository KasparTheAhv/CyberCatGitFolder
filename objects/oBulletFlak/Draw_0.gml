/// @desc
draw_self();
if (image_alpha!=1) exit;
if (tilemap_get_at_pixel(tilemap,x,y)!=0)  {instance_destroy();}
if (place_meeting(x,y,oWall)) {instance_destroy();}