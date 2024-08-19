/// @desc
image_xscale=0;
image_yscale=0;
speeder=0.3;
image_speed=0;
image_angle=irandom_range(350,370);
oFollowPlayer.target=oFireworkBoss;

with(oPlayer)
{
	immune=true;
	image_blend=c_yellow;
}