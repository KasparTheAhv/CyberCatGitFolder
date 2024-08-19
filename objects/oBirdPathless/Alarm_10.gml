/// @desc drop egg
candelete=true;
if instance_exists(oPlayerGod)
{
		with (instance_create_layer(x,y,"Characters",oEgg))
		{
		chase=true;
		cont=true;
		spd=irandom_range(5,7);	
		}
		alarm[10]=choose(90,100,110);
}
else
{
		if (distance_to_object(oFollowPlayer)<450)
		{
			with (instance_create_layer(x,y,"Characters",oEgg))
			{
			spd=irandom_range(4,6);	
			chase=false;
			cont=false;
			}
		}
		alarm[10]=choose(320,450,600);
}
