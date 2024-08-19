/// @desc continue sequence
// You can write your code in this editor
if !instance_exists(oText)
{
	with(instance_create_layer(x,y-10,"Particles",oSlowChaser))
	{
		with (oFollowPlayer) {target=self;}
		oFollowPlayer.target=self;
		target=instance_nearest(other.x,other.y,oDino);
		burstpart=oRoomController.part6;
		part=oRoomController.part8;
		destX=oDino.x;
		destY=oDino.y;
	}
} else {alarm[2]=1;}