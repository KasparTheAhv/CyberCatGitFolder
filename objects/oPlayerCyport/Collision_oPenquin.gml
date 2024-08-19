var temax=other.x;
var temay=other.y;
with (instance_create_layer(temax,temay,"Characters",oPenqD))
	{
	oGUIBAR.cn+=25;	
	image_xscale=0.75*sign(other.image_xscale);
	image_yscale=0.75;
	if (sign(image_xscale)==1) {image_angle=270;} else {image_angle=90;}
	}
	instance_destroy(other);
