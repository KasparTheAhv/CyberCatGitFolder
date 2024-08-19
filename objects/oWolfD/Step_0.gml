/// @desc
if (image_alpha>0) {image_alpha-=0.02;} else{instance_destroy();}

vsp+=grv;

if (tilemap_get_at_pixel(tilemap,x,y)!=0) {vsp=0;}

y+=vsp;