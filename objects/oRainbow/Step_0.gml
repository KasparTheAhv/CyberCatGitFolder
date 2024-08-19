/// @desc
if instance_exists(oCryingCloud)
{
	var spd = oCryingCloud.mspeed;
	var distcalc= (spd*33);
	
	if (dist<distcalc) {dist=distcalc;}
	
	
	self.x=oCryingCloud.x-dist;
	
	if (oCryingCloud.crying)
	{
		if (image_alpha<0.8)	{image_alpha+=0.01;}
	} else {
		if (image_alpha>0)	{image_alpha-=0.06;}
	}
	
}