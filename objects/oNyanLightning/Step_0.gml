/// @description Insert description here
// You can write your code in this editor
changer=Wave(0,200,10,10,5);

self.y=ystart+changer;
self.x+=hsp;


if (self.x<0-500) {instance_destroy();}
if (self.x>room_width+500) {instance_destroy();}


	if part_system_exists(part_sys)
	{
	part_emitter_region(part_sys,0,x,x,y,y,ps_shape_rectangle,ps_distr_linear);
	}
