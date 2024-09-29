/// @desc CypPort Death
with (instance_create_layer(self.x,self.y,"Characters",oPenqD))
	{
	nonippy=true;	
	image_xscale=0.75*sign(other.image_xscale);
	image_yscale=0.75;
	if (sign(image_xscale)==1) {image_angle=270;} else {image_angle=90;}
	}
instance_destroy(self);
instance_create_layer(x,y,"BefEdge",oSlash);