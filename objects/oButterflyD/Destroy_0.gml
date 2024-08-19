/// @desc

if (nippy) {
	
	if (room!=Room0)
	{
	instance_create_layer(x,y,"Characters",oNippy);
	}
	
	part_particles_create(oRoomController.part_sys, x, y,oRoomController.part33,irandom_range(12,22));
	} else {
	part_particles_create(oRoomController.part_sys, x, y,oRoomController.part34,irandom_range(12,22));	
	}
play_sound(snWings,false);