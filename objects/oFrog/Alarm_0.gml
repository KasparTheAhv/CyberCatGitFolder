if !(move) && !(attacking)
{	
if instance_exists(oPlayer)
{
	if (distance_to_object(oPlayer)<tonqDete) //tonque detection
	{
	cap=16*image_xscale;
	dir=point_direction(x,y-cap,oPlayer.x,oPlayer.y);
	alarm[3]=1;
	exit;
	}
	if (distance_to_object(oPlayer)<atkDete)
	{
		alarm[1]=1; // attack
	} else {alarm[2]=1;}
} else {
if (instance_exists(oPlayerGod))
{
cap=16*image_xscale;
dir=point_direction(x,y-cap,oPlayerGod.x,oPlayerGod.y);
alarm[4]=40;
exit;
}
	
	
alarm[2]=1; // jump randomly
}
}
	
alarm[0]=choose(45,60,90);

