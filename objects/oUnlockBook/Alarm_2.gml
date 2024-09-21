/// @desc
instance_destroy();
if !(instance_exists(oBook))
{
	instance_create_layer(x,y,"Particles",oBook);
}