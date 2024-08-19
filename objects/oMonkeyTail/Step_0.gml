if (dist<maxDist) {dist+=spd;} else {	
	
	if instance_exists(owner)
	{
		owner.whokill=self.id;
		owner.xx=self.x;
		owner.yy=self.y;
		owner.alarm[3]=1;
	} else {instance_destroy();}	
		
	} 		
x=xx+lengthdir_x(dist,dir);
y=yy+lengthdir_y(dist,dir);