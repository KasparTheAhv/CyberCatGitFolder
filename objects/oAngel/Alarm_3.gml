/// @desc summon bird
if instance_exists(oPlayerGod)
{
	if (instance_number(oBird)<10)
	{
		with (instance_create_layer(x,y,"Dog",oBird))
			{
					// What room how many paths:
				path=Path4;
				whatbase=noone;
				flyspd=choose(1.75,2,2.5);
				speedmod=2;
				
				alarm[2]=10;
			}
	}
}
