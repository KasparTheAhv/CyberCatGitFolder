/// @desc
if !(staying)
{
image_xscale-=0.01;
image_yscale-=0.01;
self.y+=5;
self.x-=9;
image_angle+=3;
} else {exit;}

if (self.y>room_height+100) {instance_destroy();}