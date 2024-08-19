/// @desc make clones
if !(started) {exit;}
repeat(3)
{
	if (instance_number(oMJClone)<3)
	{
		instance_create_layer(x,y,layer,oMJClone);
	}	
}