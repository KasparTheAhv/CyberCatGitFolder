if (tilemap_get_at_pixel(tilemap,x+hspeed,y+vspeed)!=0) or (tilemap_get_at_pixel(tiles,x+hspeed,y+vspeed)!=0) {
direction=direction+180+irandom_range(-5,20);
flytospot=false;
alarm[0]=60;
}

if (flytospot)
{
var dir = point_direction(x, y, destX, destY);
var diff = angle_difference(dir, image_angle);
direction += diff * 0.04;	
image_angle=direction+360; 

if (direction>90) && (direction<270)
{
	image_xscale=-0.75;
} else {
	image_xscale=0.75;
}

if (speeder)
{
if (speed<4) {speed+=0.1;}
} else {   
	var dist = point_distance(x,y,destX,destY);
	speed = 5 * min(1, (dist / 100));
	if (dist < 5) {
	 speed=0;
	 flytospot=false;
	 alarm[0]=120;
		}
}
if (point_distance(x,y,destX,destY)<100)
	{
	speeder=false;	
	}
}