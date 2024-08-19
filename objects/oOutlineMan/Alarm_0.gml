/// @desc Choose where to walk or if should stand


if !(interacted)
{
	var move=choose(0,1);
	
	if (move==1)
	{
	var side = choose(1,-1);
	hspeed=side;
	image_speed=1;
	image_xscale=1*side;
	alarm[0]=irandom_range(80,240);
	} else {
	image_index=0;
	image_speed=0;
	hspeed=0;
	var side = choose(1,-1);
	image_xscale=1*side;	
	alarm[0]=irandom_range(80,240);
	}
	
} else {

	image_index=0;
	image_speed=0;
	hspeed=0;
	var side = choose(1,-1);
	image_xscale=1*side;
	
	alarm[0]=240;
	
}