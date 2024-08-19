if instance_exists(oPlayer) && !(locker)
{
	if (point_distance(oPlayer.x,oPlayer.y,x,y)<100) && (oGUIBAR.zoomLevel=1)
	{
	locker=true;
	oPlayer.immune=true;
	oFollowPlayer.x=oFollowPlayer.target.x;
	oFollowPlayer.y=oFollowPlayer.target.y;
	oFollowPlayer.xTo=oFollowPlayer.x;
	oFollowPlayer.yTo=oFollowPlayer.y;
	oGUIBAR.x=oFollowPlayer.x;
	oGUIBAR.y=oFollowPlayer.y;
	oGUIBAR.follow=noone;
	camera_set_view_target(view_camera[0],oNyan);
	camera_set_view_pos(view_camera[0],oNyan.x,oNyan.y);
	instance_deactivate_object(oPenquin);
	instance_deactivate_object(oDog);
	instance_deactivate_object(oNote);
	instance_deactivate_object(oAttackKey);
		with(oVStick)
		{
			if (stick_id==1)
			{
			toimi=false;
			joonista=false;
			}
			if instance_exists(oMagnify) {
				oMagnify.alarm[4]=-1;
			oMagnify.joonista=false;
			}
			with (oJumpKey) {joonista=false;}
			with (oGUIBAR) {joonista=false; joonistatasks=false;}
			if instance_exists(oPause) {oPause.joonista=false;}
			if instance_exists(oBook) {oBook.image_index=3;oBook.joonista=false;}
		}
	
	alarm[1]=1;
	}
}
