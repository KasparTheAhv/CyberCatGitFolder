/// @description Insert description here
// You can write your code in this editor
if instance_exists(oPlayer)
{
if (point_distance(oPlayer.x,oPlayer.y,x,y)<90)
{
held=true;
dist=point_distance(x,y,mouse_x,mouse_y);
dist=clamp(dist,0,60);
dir=point_direction(x,y,mouse_x,mouse_y)+180;
lineX=x+lengthdir_x(dist,dir);
lineY=y+lengthdir_y(dist,dir);
}}