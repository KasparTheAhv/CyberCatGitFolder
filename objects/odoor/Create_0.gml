image_speed=0;
image_index=0;
depth=self.depth+30;
haslock=false;
alarm[9]=10;
if instance_exists(oLock)
{
	var nearest = instance_nearest(x,y,oLock);
	if (point_distance(x,y,nearest.x,nearest.y)<100) {haslock=true;}
}