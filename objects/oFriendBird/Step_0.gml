/// @description Insert description here
// You can write your code in this editor

if !(activated) {
	
	exit;}

if (state==2)
{
	if (wingrotUP)
	{
	if (wingrot<60) {wingrot+=wingrotspeed;} else {wingrotUP=false;}
	} else {
	if (wingrot>-110) {wingrot-=wingrotspeed;} else {wingrotUP=true;}	
	}
	var dir= point_direction(x,y,destX,destY)+360;

	  
if (image_angle>450) && (image_angle<630)
{
	image_yscale=-scale;
	alterang=30;
	towhatxscale=-scale;
} else {
	image_yscale=scale;
	alterang=-30;
	towhatxscale=scale;
}

if (speed<8) {speed+=0.1;}
	image_angle=dir;


if (point_distance(x,y,destX,destY)<2+speed)
{
	startmoving=false; x=destX;y=destY;state=1; speed=0; wingrot=0; wingrotUP=true; image_xscale=towhatxscale; image_angle=0;image_yscale=scale; if !(ending){ alarm[0]=100;} exit;
} else {move_towards_point(destX,destY,speed);}


} else {image_angle=0;}