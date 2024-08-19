var quit=false;
if instance_exists(oPlayer)
{
	if (point_distance(self.x,self.y,mouse_x,mouse_y)<20) && (point_distance(oPlayer.x,oPlayer.y,self.x,self.y)<30)
	{
		with (oPlayer)
		{
			if (picked) {var quit=true;}
		}
	if (quit==false) {self.depth=oPlayer.depth-2;picked=true;oPlayer.picked=true;clicked=true;image_angle=360;} else {self.depth=startDepth; picked=false;oPlayer.picked=false; image_angle=360;}
	}
}