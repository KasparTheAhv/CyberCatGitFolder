/// @desc

if (petting) {alarm[0]=60;exit;}

if instance_exists(oPlayer)
{
	if (point_distance(oPlayer.x,oPlayer.y,self.x,self.y)<120)	
	{
	if (oPlayer.x<self.x){image_xscale=-1;} else {image_xscale=1;}
	}
}

alarm[0]=10;
