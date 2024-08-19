/// @desc CypPort Death

instance_destroy(self);

	with (instance_create_layer(x,y,"Characters",oGas))
				{
				boom=true;
				image_xscale=1.5;
				image_yscale=1.5;
				}
				
var plax= sign(image_xscale)*0.75*16;
instance_create_layer(self.x+plax,self.y+10,"BefEdge",oSlash);