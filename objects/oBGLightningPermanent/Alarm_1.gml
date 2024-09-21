/// @desc reduce alpha
if (alpha>0)
{
	alpha-=0.03;
	layer_background_alpha(back_id, alpha);
	alarm[1]=1;
}
