/// @desc
if !(boarded)
{
boarded=true;
with (other) {
	other.side = sign(image_xscale);
	}
instance_destroy(oPlayer);
instance_destroy(oPlayerAttack);
instance_destroy(oPlayerFall);
oFollowPlayer.target=self;
	with (oLvlEnd)
	{
		image_xscale=2;
		image_yscale=6;
		x=2450;
		y=330;
	}
}