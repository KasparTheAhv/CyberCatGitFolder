/// @desc State machine



// player isnt anywhere nearby. Act natural.

var rest = choose(true,false);

if (rest)
{
	cur_state=hedgestates.stand;
	hsp=0;
	image_speed=0;
	image_index=0;
	image_xscale=1*choose(1,-1);
	if (instance_exists(oPlayerGod))
		{	
			sprite_index=sHedgehogGrey;
		} else {
			sprite_index=sHedgehog;
		}
	alarm[0]=60;
} else {
	cur_state=hedgestates.walk;
	image_speed=1;	
		if (instance_exists(oPlayerGod))
		{	
			sprite_index=sHedgehogGrey;
		} else {
			sprite_index=sHedgehog;
		}
	hsp=choose(0.5,-0.5);
	image_xscale=1*sign(hsp);
	alarm[0]=60;
}

