if instance_exists(oBossHP) {oBossHP.alarm[0]=1;}
// MUSIC CONTROLLER RESET  
if instance_exists(oMusicController) {
	with(oMusicController)
	{
	value_ = global.volume_mfx;	
	// check what song needs what max_volume 
	var maxvol=0;
if (curPlaying==BGMuForest1){maxvol=0.2; }
if (curPlaying==BGMuForest2){maxvol=0.15; }
if (curPlaying==BGMuForest3){maxvol=0.07;}
if (curPlaying==BGMuHome1)	{maxvol=0.03;}
if (curPlaying==BGMuHome2)	{maxvol=0.03;}
if (curPlaying==BGMuJungle1){maxvol=0.05;}
if (curPlaying==BGMuJungle2){maxvol=0.06;}
if (curPlaying==BGMuJungle3){maxvol=0.15;}
if (curPlaying==BGMuDesert1){maxvol=0.1; }
if (curPlaying==BGMuDesert2){maxvol=0.05;}
if (curPlaying==BGMuCave1)  {maxvol=0.05;}
if (curPlaying==BGMuCave2)  {maxvol=0.03;}
if (curPlaying==BGMuCity1)  {maxvol=0.07;}
if (curPlaying==BGMuCity2)  {maxvol=0.03;}
if (curPlaying==BGMuPlane1) {maxvol=0.07;}
if (curPlaying==BGMuWinter1)  {maxvol=0.02;}
if (curPlaying==BGMuWinter2)  {maxvol=0.03;}
	// create the right volume
	var soundlvl = maxvol*global.volume_mfx;
	// play the sound at right volume
	show_debug_message("Currently playing: "+string(audio_get_name(curPlaying)+" at lvl: "+string(soundlvl))+" with global.volume_mfx: "+string(global.volume_mfx));
	audio_sound_gain(curPlaying,soundlvl, 500);
	}
}
// jumpkey delete if not needed
if (global.jumpkey==0){if instance_exists(oJumpKey){instance_destroy(oJumpKey);}}

// should show gui or not
if (global.ongui==true)
{
	if instance_exists(oLvlEnd) {oLvlEnd.startingdate=other.startingdate;}
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
	alarm[2]=10;
	}
} else {
if (room==Room0) {
	with (instance_create_layer(x,y,"Characters",oGUIBAR)) {
	joonista=false;	
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
		
		
		
		if !instance_exists(oRoom0Tasks){joonistatasks=true;}
		}	
}
}