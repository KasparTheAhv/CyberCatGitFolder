/// @desc CypPort Death
with (instance_create_layer(self.x,self.y,"Characters",oWolfD))
	{
	image_xscale=other.image_xscale;
	image_yscale=other.image_yscale;
	}
instance_destroy(self);
instance_create_layer(x,y,"BefEdge",oSlash);