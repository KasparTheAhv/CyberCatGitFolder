/// @desc

if !(special)
{
part_particles_create(oRoomController.part_sys, x, y, partWork1,irandom_range(100,150));	
part_particles_create(oRoomController.part_sys, x, y, partWork2,irandom_range(100,150));	
} else {
	with (instance_create_layer(x,y,"BefEdge",oFireworkBoss))
	{
		image_index=other.bosssprite;
	}
}