if (place_meeting(x,y,oWall)) {instance_destroy();}
if (tilemap_get_at_pixel(tilemap,x,y)==1) {instance_destroy();}
image_angle+=10;

