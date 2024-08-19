var spd=6;
part_particles_create(oRoomController.part_sys, self.x, self.y,oRoomController.part19,irandom_range(5,10));
if (locker) {exit;}
if instance_exists(mytarget)
{
if (distance_to_point(mytarget.x,mytarget.y)>5)
{
move_towards_point(mytarget.x,mytarget.y,spd);
} else {
	locker=true;
	
	alarm[0]=1;
}
} else {locker=true;alarm[0]=1;}