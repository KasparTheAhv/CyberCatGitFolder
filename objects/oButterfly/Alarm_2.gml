/// @desc assign flower 
var opX=oFollowPlayer.x;
var opY=oFollowPlayer.y;

if instance_exists(oFlower)
{ 
	who = instance_nth_nearest(opX,opY,oFlower,irandom_range(0,instance_number(oFlower)));
	var chance=irandom_range(1,100);
	
	if (who==noone) {exit;}
	
	if (chance>60)
	{
		if (point_distance(who.x,who.y,x,y)<375)
		{
		goFlower=true;
		} else {alarm[2]=irandom_range(120,280);}
	} else {alarm[2]=irandom_range(120,280);}
}