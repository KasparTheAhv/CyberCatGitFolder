/// @desc
var c_rainbow = make_color_hsv((current_time/50) mod 255,255,255);
if (image_index!=1)
{	
image_blend=c_white;
} else {
image_blend=c_rainbow;
}

if instance_exists(oPlayer)
{
if (point_distance(x,y,oPlayer.x,oPlayer.y)>15)
{
	touched=false;
	readyforchange=true;
}
}