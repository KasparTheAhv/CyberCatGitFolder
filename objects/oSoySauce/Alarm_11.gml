/// @desc CypPort Death

instance_destroy(self);

	with (instance_create_layer(x,y,"Characters",oGas))
				{
				boom=true;
				image_xscale=1.5;
				image_yscale=1.5;
				}
				instance_create_layer(x,y,"BefEdge",oSlash);