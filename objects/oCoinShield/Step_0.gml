/// @desc
destroydist=image_xscale*8;
if instance_exists(oBullet)
{
	var bul = instance_nearest(x,y,oBullet)
	if (point_distance(x,y,bul.x,bul.y)<destroydist)
	{
		if instance_exists(oGUIBAR) {oGUIBAR.cn+=0.75;}
		instance_destroy(bul);
		if (image_xscale>0)
		{
			image_xscale=image_xscale-0.3;
			image_yscale=image_yscale-0.3;
		}
	}
}


	
	if instance_exists(oPigMono)
	{
	self.x=oPigMono.x;
	self.y=oPigMono.y;
	} else {kustu=true;}



if (kustu)
{
if (image_xscale>0)	
	{
	image_xscale-=0.05;
	image_yscale-=0.05;
	} else {instance_destroy();}
} else {
	if (image_xscale<6)	{
		image_xscale+=0.02;
		image_yscale+=0.02;
	}
}

image_alpha=image_xscale*0.9;
image_alpha=clamp(image_alpha,0.1,0.5);
