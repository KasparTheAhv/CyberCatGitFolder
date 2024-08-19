/// @desc
if (state==0)
{
	if (shaketime>0)
	{
		shaketime-=1;
		if (shakeRight)	
		{
			if (imAngle<370) {imAngle+=2;} else {shakeRight=false;}
		} else {
			if (imAngle>350) {imAngle-=2;} else {shakeRight=true;}
		}
	} else {
		damageable=true;
			if (imAngle<360) {imAngle+=2;} 
			if (imAngle>360) {imAngle-=2;} 
	}
}
if (state==1) {self.y+=4;}

if (tilemap_get_at_pixel(tilemap,x,y+20)!=0) && (state==1)
{
image_speed=1;
state=2;
}

if (image_index==4) && (state==2)
{
	if (image_alpha>0)	{image_alpha-=0.05;} else {instance_destroy();}
}