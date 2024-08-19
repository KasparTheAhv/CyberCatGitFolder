/// @desc spawn heli lizard
repeat (3+spotid)
{
	with (instance_create_layer(3278,1616,"Electro",oHeliLizard))
	{
		alarm[0]=60;
		triggerdist=2500;
	}
	
	
	if (instance_number(oBird)<5)
	{
		if instance_exists(oBirdBase)
		{
		oBirdBase.alarm[6]=1;
		}
	}
		 
	
	
}