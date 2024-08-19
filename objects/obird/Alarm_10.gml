/// @desc drop egg
if place_meeting(x,y,oBirdHider) {alarm[10]=choose(70,90,110); exit;}

if instance_exists(oPlayerGod)
{
		with (instance_create_layer(x,y,"Characters",oEgg))
		{
		chase=true;
		cont=true;
		spd=irandom_range(5,7);	
		}
		alarm[10]=choose(70,90,110);
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
		alarm[10]=choose(120,240,320);
}
