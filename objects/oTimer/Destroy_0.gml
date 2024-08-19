/// @desc what happens when timer end
if (room==Room20)
{
	if !(instance_exists(oPlaneBig))
	{
	instance_create_layer(0,0,"Electro",oPlaneBig);	
	}
}