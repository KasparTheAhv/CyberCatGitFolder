// size
if (current<target)
{
current+=0.05;
} else {current=target;}
current=clamp(current,0,target);
	
	if (direction>90) && (direction<270)
	{		
	image_xscale=-1*current;
	image_yscale=current;
	} else {
	image_xscale=current;
	image_yscale=current;
	}	
if (candelete)
{
if (x<0-40) or (x>room_width+40) {instance_destroy(self,false);}	
}