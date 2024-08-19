/// @desc
image_angle=direction;

if (state>0) {
	if (ring<359) {ring+=speed*4.5;} else {ring=1;}
	var spd=speed*0.35;
	var ran1 = irandom_range(-1,1);
	var ran2 = irandom_range(-1,1);
	xx=x+lengthdir_x(spd,ring)+ran1;
	yy=y+lengthdir_y(spd,ring)+ran2;
	if (speed<10) {speed+=0.15;}
	if (framenr > image_number - 1)
	{
		framenr = 0; 
	} else {framenr+=1;}
}


if (state==2)
{
	if (direction>0) && (direction<300) {direction-=0.8;} else {state=3; }
}

if (tilemap_get_at_pixel(tilemap,x+20,y)!=0)
{
instance_destroy();	
}