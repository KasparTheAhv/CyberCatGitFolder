///@desc drop lock
if (image_alpha>0)
{
	image_alpha-=0.02;
	image_angle-=4;
	alarm[2]=1;
	self.y+=1;
} else {instance_destroy();}