/// @desc


cur_state=choose(bunstates.walk,bunstates.stand);



if (cur_state==bunstates.stand)
{
	image_index=0;
	image_speed=0;
	image_xscale=0.75*choose(-1,1);
	hsp=0;
}

if (cur_state==bunstates.walk)
{
	image_index=0;
	image_speed=1;
	image_xscale=0.75*choose(-1,1);
	hsp=sign(image_xscale);
}




alarm[0]=90;