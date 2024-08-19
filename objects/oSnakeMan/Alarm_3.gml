/// @desc
sprite_index=sSnakeMan;
instance_create_layer(oPlaneDoor.x-20,oPlaneDoor.y+20,"Characters",oPlaneSucker);
with (oLvlEnd)
{
	y=oPlaneDoor.y+20;
	x=oPlaneDoor.x-20;
	image_xscale=2;
	image_yscale=2;
	t1=true;
	t2=true;
	t3=true;
}

with (oFollowPlayer) {target=oPlaneSucker;}
with (oPlaneDoor) {staying=false;}
with (oLineEffect) {fxOn=true;}