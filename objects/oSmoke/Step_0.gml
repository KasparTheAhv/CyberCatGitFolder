/// @desc'
if (working) && (rm==Room19)
{
part_particles_create(part_sys2, x+20, y+80,oRoomController.part26,irandom_range(1,2));
part_particles_create(part_sys2, x, y+80,oRoomController.part26,irandom_range(1,2));
part_particles_create(part_sys2, x-20, y+80,oRoomController.part26,irandom_range(1,2));
} 

if (working) && (rm==Room27)
{
	part_particles_create(part_sys2, x-20, y,oRoomController.part26,irandom_range(1,2));
}