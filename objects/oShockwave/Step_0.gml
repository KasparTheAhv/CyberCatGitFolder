/// @desc

if (tilemap_get_at_pixel(tilemap,x,y)!=0) {collided=true;}


if (collided) {if image_alpha>0 {image_alpha-=0.04;} else {instance_destroy();} exit;} 

if image_alpha>0 {image_alpha-=0.002;} else {instance_destroy();}

image_xscale+=0.01;
image_yscale+=0.01;


if (collided)
{
y-=0.2;
} else {y-=2;}