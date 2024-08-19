/// @desc

if (point_distance(x,y,oFollowPlayer.x,oFollowPlayer.y)<90) && (state==0)
{
	state=1;
	image_index=1;
	play_sound(snRocket,false);
	with (oPlayer)
	{
	canatk=false;
	immune=true;
	}
with (oFollowPlayer)
	{
	target = instance_nearest(x,y,oBagu);
	extraheight=80;
	}

with(oVStick)
{
vstick_set_active(stick_id,false);
}
instance_destroy(oPlayer);
}