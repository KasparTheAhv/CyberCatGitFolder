/// @desc
if (room==Room15)
{
if (self.x<room_width+80) {x+=2;} else {instance_destroy(self);}
}

if (room==Room22)
{
direction=image_angle;
if (speed==0) {speed=3;}
speed+=0.01;
if (self.y>790) {instance_destroy(self); play_sound(snBlastBig,false);}
if (self.x>room_width+80) {instance_destroy(self); play_sound(snBlastBig,false);}
}
