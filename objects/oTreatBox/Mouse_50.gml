/// @description Insert description here
// You can write your code in this editor
if (held)
{
	image_angle+=1;
	dist=point_distance(x,y,mouse_x,mouse_y)*2;
	dir=point_direction(x,y,mouse_x,mouse_y)+180;
	dist=clamp(dist,0,60);
	lineX=x+lengthdir_x(dist,dir);
	lineY=y+lengthdir_y(dist,dir);	

}