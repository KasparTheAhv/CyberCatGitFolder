with (other)
{
	if !(immune)
	{
		var dep=self.depth;
		instance_create_depth(x,y-1,dep,oFrogD);
		instance_destroy(self);
	}
}


var plax= side*12;
instance_create_layer(self.x+plax,self.y+10,"BefEdge",oSlash);