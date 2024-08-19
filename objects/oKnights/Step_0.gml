/// @desc
if instance_exists(oDrake) && !(escape)
{
if (point_distance(x,0,oDrake.x,0)<200) {escape=true;alarm[0]=1;oDrake.cur_state=drakestates.leave;}
}
if (escape)
{
	self.x+=3;
	cycle1=0;
	cycle2=0;
	
	if !(cyclelock1)
	{
		if (cycle1<15)	{cycle1+=3;} else {cyclelock1=true;}
	} else {
		if (cycle1>-15)	{cycle1-=3;} else {cyclelock1=false;}
	}
	
	if !(cyclelock2)
	{
		if (cycle2<4)	{cycle2+=2;} else {cyclelock2=true;}
	} else {
		if (cycle2>0)	{cycle2-=2;} else {cyclelock2=false;}
	}
	
	image_angle=cycle1+0;
	self.y=starty+cycle2;
}