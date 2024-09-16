if !(offline)
{
var dir = point_direction(x,y,startx,starty);
partxx=x+lengthdir_x(20,dir);
partyy=y+lengthdir_y(20,dir);

if (global.GFX1==1)
{
part_particles_create(oRoomController.part_sys3, partxx, partyy,oRoomController.part999,irandom_range(5,10));
}
	if (distance_to_point(xTo,yTo)>5)
	{
	move_towards_point(xTo,yTo,spd);
	} else {
	start=false;
	with(oBook) {shaker=8; alarm[0]=5;image_index=2;}
	offline=true; alarm[2]=60;
	}
	image_angle+=8;
}