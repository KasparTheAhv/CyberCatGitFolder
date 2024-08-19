if (side)
{
if (dist<maxDist) {dist+=spd;} else {dist=maxDist; side=false;} 		
} else {
if (dist>1) {dist-=(spd*1.5);} else {
	instance_destroy(self);
	with(oElGato)
	{
	sprite_index=sElGato; image_angle=0;cur_state=gatosta.stand; alarm[0]=60;
	}
	} 
}
image_angle+=30;
x=xx+lengthdir_x(dist,dir);
y=yy+lengthdir_y(dist,dir);