with (other)
{
	if !(immune)
	{
	instance_create_layer(x,y-1,layer,oFrogD);
	instance_destroy(self);
	}
}
