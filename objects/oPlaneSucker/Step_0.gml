/// @desc
with (oSnake)
{
	hsp=0;
	vsp=0;
	var dist=point_distance(self.x,self.y,other.x,other.y);
	if (dist>50) {var distspeed=7;} else {var distspeed=11;}
	move_towards_point(other.x,other.y,distspeed);
	if (dist<100)
	{
		image_xscale=(dist*0.01)+0.05;
		image_yscale=(dist*0.01)+0.05;
	}
	if (dist<8) {instance_destroy(self);}
	image_angle+=12;	
}

with (oPlayer)
{
	sprite_index=sPlayer;
	hsp=0;
	vsp=0;
	var dist=point_distance(self.x,self.y,other.x,other.y);
	if (dist>50) {var distspeed=7;} else {var distspeed=11;}
	move_towards_point(other.x,other.y,distspeed);
	if (dist<75)
	{
		image_xscale=(dist*0.01)+0.1;
		image_yscale=(dist*0.01)+0.1;
	}
	image_angle+=12;	
}


with (oSnakeMan)
{
	hsp=0;
	vsp=0;
	var dist=point_distance(self.x,self.y,other.x,other.y);
	if (dist>50) {var distspeed=5;} else {var distspeed=8;}
	move_towards_point(other.x,other.y,distspeed);
	if (dist<50) 
	{
		image_xscale=(dist*0.03)+0.05;
		image_yscale=(dist*0.03)+0.05;
	}
	if (dist<8) {instance_destroy(self);}
	image_angle+=12;	
}