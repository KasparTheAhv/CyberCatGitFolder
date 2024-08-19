/// @desc
if (attached)
{
if (swayright)
	{
	if (sway<8)	{sway+=0.5} else {swayright=false;}
	} else {
	if (sway>-6) {sway-=0.5} else {swayright=true;}	
	}
	image_angle=360+sway;
	ballx=self.x + lengthdir_x(46,image_angle+90);
	bally=self.y + lengthdir_y(46,image_angle+90);
} else {
	
	if (speedS<2) {speedS+=0.04;}
	image_angle=360+sway;
	if (sway<15) {sway+=0.4;}
	ballx=self.x + lengthdir_x(46,image_angle+90);
	bally=self.y + lengthdir_y(46,image_angle+90);
	self.x-=(speedS*0.5);
	self.y-=speedS;
}

if (self.y<-100)  {instance_destroy();}