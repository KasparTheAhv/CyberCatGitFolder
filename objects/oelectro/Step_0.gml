if (visible) && (global.GFX1==1)
{
	if (soundon)
	{
		if (spark)
		{
		part_particles_create(oRoomController.part_sys, x+xvahe, CurrentY,oRoomController.part10,irandom_range(3,8));
		part_particles_create(oRoomController.part_sys, x-xvahe, CurrentY,oRoomController.part10,irandom_range(3,8));
		}
	}
}
