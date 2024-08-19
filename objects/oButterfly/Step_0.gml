/// @desc
if (colorChange!=2) {
		if (goFlower==false)
		{
		if (tilemap_get_at_pixel(tmap,x,y)!=0) {self.y-=2;} 
		}
	}
if !(luba){exit;}
dirChange = Wave(-40,40,3,20,10);



if (goFlower)
{
	neededDirection=point_direction(x,y,who.x,who.y-10);
	if (speed!=0)
	{
	if (point_distance(x,y,who.x,who.y-10)<3) {speed=0;image_speed=0.1; alarm[1]=200;headBlend=make_colour_hsv(42, 107, 255); }
	}
	if (therealdir<neededDirection) {therealdir+=2;} else {therealdir-=2;}
	
	dirChange2=Wave(-20,20,3,0,0);
	direction=therealdir+dirChange2;
	
	
	if (direction>90) && (direction<270)
	{		
	image_xscale=-1;
	} else {
	image_xscale=1;
	}	
	exit;
} else { //  not following flower
	
	if (goRight)
	{
	mainDirection=Wave(335,385,6,10,10);
	} else {
	mainDirection=Wave(515,565,6,10,10);	
	}
	if (therealdir<neededDirection) {therealdir+=2;} else {therealdir-=2;}
	neededDirection=(mainDirection)+dirChange;
	
}
direction=therealdir;
if (direction>90) && (direction<270)
{		
image_xscale=-1;
} else {
image_xscale=1;
}	