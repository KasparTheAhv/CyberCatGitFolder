if (global.ongui==true)
{
	if instance_exists(oLvlEnd){startingdate=other.startingdate;}
	with(instance_create_layer(prevx,prevy,"Characters",oGUIBAR))
	{
	self.follow=other.prevfollow;
	self.xTo=other.prevxTo;
	self.yTo=other.prevyTo;
	self.viewposx=other.prevviewposx;
	self.viewposy=other.prevviewposy;
	self.zoomXTo=other.prevzoomXTo;
	self.zoomYTo=other.prevzoomYTo;
	self.cam_default_w=other.prevcam_default_w;
	self.cam_default_w=other.prevcam_default_w;
	self.temp_cam_w=other.prevtemp_cam_w;
	self.temp_cam_h=other.prevtemp_cam_h;	
	self.joonista=other.prevjoonista;
	self.joonistatasks=other.prevjoonistatasks;
	self.hp=other.prevhp;
	self.cn=other.prevcn;
	self.zoomLevel=other.prevzoomlvl;
	self.dye=other.prevdye;
	self.dye2=other.prevdye2;
	self.red_cn=other.prevred_cn;
	self.red_hp=other.prevred_hp;
	self.task1col=other.prevtask1col;
	self.task2col=other.prevtask2col;
	self.task3col=other.prevtask3col;
	self.tasks=other.prevtasks;
	self.task1=other.prevtask1;
	self.task2=other.prevtask2;
	self.task3=other.prevtask3;
	self.x=other.prevx;
	self.y=other.prevy;
	camera_set_view_size(cam, floor(temp_cam_w), floor(temp_cam_h));
	camera_set_view_pos(cam,viewposx,viewposy);
	camera_set_view_border(cam,defborderX*zoomLevel,defborderY*zoomLevel);
	self.alarm[2]=5;
	}
} else {
	if (room==Room0)
	{	
		with(oClickHere){allowed=true;}
		if (global.booktutsequence==4) { with(oVStick) {toimi=false;} }
		with(instance_create_layer(x,y,"Characters",oGUIBAR))
		{
			self.follow=other.prevfollow;
			self.xTo=other.prevxTo;
			self.yTo=other.prevyTo;
			self.viewposx=other.prevviewposx;
			self.viewposy=other.prevviewposy;
			self.zoomXTo=other.prevzoomXTo;
			self.zoomYTo=other.prevzoomYTo;
			self.cam_default_w=other.prevcam_default_w;
			self.cam_default_w=other.prevcam_default_w;
			self.temp_cam_w=other.prevtemp_cam_w;
			self.temp_cam_h=other.prevtemp_cam_h;	
			self.joonista=other.prevjoonista;
			self.joonistatasks=other.prevjoonistatasks;
			self.hp=other.prevhp;
			self.cn=other.prevcn;
			self.zoomLevel=other.prevzoomlvl;
			self.dye=other.prevdye;
			self.dye2=other.prevdye2;
			self.red_cn=other.prevred_cn;
			self.red_hp=other.prevred_hp;
			self.task1col=other.prevtask1col;
			self.task2col=other.prevtask2col;
			self.task3col=other.prevtask3col;
			self.tasks=other.prevtasks;
			self.task1=other.prevtask1;
			self.task2=other.prevtask2;
			self.task3=other.prevtask3;
			self.x=other.prevx;
			self.y=other.prevy;
			camera_set_view_size(cam, floor(temp_cam_w), floor(temp_cam_h));
			camera_set_view_pos(cam,viewposx,viewposy);
			camera_set_view_border(cam,defborderX*zoomLevel,defborderY*zoomLevel);
			if !(instance_exists(oRoom0Tasks)) {joonistatasks=true;}
		}
	}
}