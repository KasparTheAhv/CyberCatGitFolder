/// @description Insert description here
// You can write your code in this editor
if (visible) && (global.GFX1==1)
{
part_particles_create(oRoomController.part_sys, x, y,part,5);
}


if instance_exists(target)
{
if (point_distance(x,y,target.x,target.y)>5)
{
move_towards_point(target.x,target.y,4);	
} else { instance_destroy();}

} else {
	
if (point_distance(x,y,destX,destY)>5)
{
move_towards_point(destX,destY,4);	
} else { instance_destroy();}
}