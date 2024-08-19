with (other)
{
	if !(immune)
	{
		var dep=self.depth;
		instance_create_depth(x,y-1,dep,oFrogD);
		instance_destroy(self);
	}
}


var plax= sign(image_xscale)*0.75*16;
instance_create_layer(self.x+plax,self.y+10,"BefEdge",oSlash);