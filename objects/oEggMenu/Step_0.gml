/// @desc

if y<740 {
y+=2;
x-=1.75;
} else {
	part_particles_create(part_sys, x, y,part111,irandom_range(20,25));
	var near = instance_nearest(x-40,y,oPlayerMenu);
	
	if (near.x<140)
	{
	part_particles_create(part_sys, near.x, near.y,part111,irandom_range(20,25));
	instance_destroy(near);
	}
	instance_destroy(self);
	play_sound(snBlast,false);
}