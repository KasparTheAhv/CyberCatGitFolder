if (side)
{
if (dist<maxDist) {dist+=spd;} else {dist=maxDist; side=false;} 		
} else {
if (dist>1) {dist-=(spd*1.5);} else {

	if instance_exists(owner)
	{
	owner.image_index=0;
	owner.attacking=false;
	owner.alarm[0]=choose(30,45,60);
	}
	instance_destroy(self);
	} 
}
x=xx+lengthdir_x(dist,dir);
y=yy+lengthdir_y(dist,dir);



