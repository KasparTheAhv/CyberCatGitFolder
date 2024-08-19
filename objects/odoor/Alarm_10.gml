if (jammed) {exit;}


if instance_exists(who)
{
if (distance_to_point(who.x,who.y)>100)	
	{
	alarm[1]=1;
	alarm[2]=1;
	}
}