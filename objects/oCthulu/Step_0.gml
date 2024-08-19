/// @desc
if (shielded)
{
		part_particles_create(oRoomController.part_sys, x, y,oRoomController.part27,1);	
}
if instance_exists(oPlayerGod)
{
	if (alarm_get(4)==-1) {alarm[4]=100;}
}


if (current_state==cthulustates.fly)
{
	xx=x;
	yy=y;
	if (rotup)
	{
	if (rot<60)	{rot+=rotspeed;speedon=false;speeder=0;} else {rotup=false;}
	} else {
	if (rot>-60) {rot-=rotspeed*3;speedon=true;} else {rotup=true;}	
	}
	
	if instance_exists(oPlayer) {var tar=oPlayer;} else {var tar=oFollowPlayer;}
	if (speedon) {move_towards_point(tar.x,tar.y-40,speeder); speeder+=0.9;} else {if (speed>0) {speed-=0.2;}}
	// self tilt based on target direction
	if (direction>90) && (direction<270)
	{
	if (tilt<20) {tilt+=2;}	
	} else {
	if (tilt>-20) {tilt-=2;}	
	} image_angle=0+tilt;
}

if (current_state==cthulustates.stay)
{
	image_angle=0;
	xx=x+lengthdir_x(2,imangle);
	yy=y+lengthdir_y(2,imangle);
	if (imangle<360) {imangle+=3;} else {imangle=0;}
	//target place 1450 1660
	if (self.y>1580) {current_state=cthulustates.fountain;xx=x;yy=y; gravity=0;alarm[2]=1;}	
} 

if (current_state==cthulustates.fountain)
{
	xx=x+lengthdir_x(2,imangle);
	yy=y+lengthdir_y(2,imangle);
	if (imangle<360) {imangle+=3;} else {imangle=0;}
	//target place 1450 1660
	if (point_distance(x,y,1450,1660)>30) {
		move_towards_point(1450,1580,4);
	} else {speed=0;}
	
	if (rotup)
	{
	if (rot<60)	{rot+=rotspeed;speedon=false;speeder=0;} else {rotup=false;}
	} else {
	if (rot>-60) {rot-=rotspeed*2;speedon=true;} else {rotup=true;}	
	}
	
}