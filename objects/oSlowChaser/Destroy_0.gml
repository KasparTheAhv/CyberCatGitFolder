/// @desc destroy particle
	if (visible) && (global.GFX1==1)
	{
	part_particles_create(oRoomController.part_sys, x, y,burstpart,irandom_range(17,25));
	}
	
	if instance_exists(target)
	{
	instance_destroy(target);	
	}