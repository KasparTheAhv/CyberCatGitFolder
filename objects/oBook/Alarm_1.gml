/// @desc State changer
if (instance_exists(oAdRevive)) {exit;}
if (joonista==false) {exit;}
if (image_index==3) {exit;}

if instance_exists(oLvlEnd)
{
startingdate=oLvlEnd.startingdate;	
}

if instance_exists(oGUIBAR)
{
prevfollow=oGUIBAR.follow;
prevxTo=oGUIBAR.xTo;
prevyTo=oGUIBAR.yTo;
prevviewposx=oGUIBAR.viewposx;
prevviewposy=oGUIBAR.viewposy;
prevzoomXTo=oGUIBAR.zoomXTo;
prevzoomYTo=oGUIBAR.zoomYTo;
prevcam_default_w=oGUIBAR.cam_default_w;
prevcam_default_w=oGUIBAR.cam_default_w;
prevtemp_cam_w=oGUIBAR.temp_cam_w;
prevtemp_cam_h=oGUIBAR.temp_cam_h;	
prevjoonista=oGUIBAR.joonista;
prevjoonistatasks=oGUIBAR.joonistatasks;
prevdye=oGUIBAR.dye;
prevdye2=oGUIBAR.dye2;
prevcn=oGUIBAR.cn;
prevhp=oGUIBAR.hp;
prevred_cn=oGUIBAR.red_cn;
prevred_hp=oGUIBAR.red_hp;
prevzoomlvl=oGUIBAR.zoomLevel;
prevtask1col=oGUIBAR.task1col;
prevtask2col=oGUIBAR.task2col;
prevtask3col=oGUIBAR.task3col;
prevtasks=oGUIBAR.tasks;
prevtask1=oGUIBAR.task1;
prevtask2=oGUIBAR.task2;
prevtask3=oGUIBAR.task3;
prevx=oGUIBAR.x;
prevy=oGUIBAR.y;
} 





if !(state)
{
state=true;
self.x=round(testGuiW*0.95);
instance_destroy(oGUIBAR);
instance_deactivate_all(true);
instance_activate_object(oRoomController);
instance_activate_object(oTransition);
instance_create_layer(x,y,"Characters",oBookController);
var lay_id = layer_get_id("Leaves");
layer_enable_fx("Leaves",false);
var lay_id = layer_get_id("Edge");
layer_enable_fx("Edge",false);
image_index=1;








exit;
} else {
	
if instance_exists(oSkillBook)
{
	instance_destroy(oSkillBook);
	with (instance_create_layer(x,y,"Characters",oBookController))
	{
		image_alpha=0;
	}
	exit;
}	


if (global.booktutsequence==2) {exit;}
if (global.booktutsequence==1) {exit;}

	
state=false;
self.x=round(testGuiW*0.85);
instance_destroy(oBookController);
instance_destroy(oBooks);
instance_destroy(oSkillBook);
instance_destroy(oGUSlider);
instance_destroy(oMSSlider);
instance_destroy(oAKSlider);
instance_destroy(oSNSlider);
instance_destroy(oConfigureJS);
instance_destroy(oPlayerPauseAni);
instance_destroy(oPaskinF);
instance_destroy(oPaskinB);
instance_destroy(oPamenu);
instance_activate_all();

alarm[3]=1;
alarm[2]=1;

if (global.GFX3==1)
{
var lay_id = layer_get_id("Leaves");
layer_enable_fx("Leaves",true);
}



var lay_id = layer_get_id("Edge");
layer_enable_fx("Edge",true);
with(oVStick)
{
	if (stick_id==1)
	{
	toimi=true;
	}
}
image_index=0
extraUp=false;
extrasca=1;
if instance_exists(oPlayerGod) {image_index=3;}
if instance_exists(oGUIBAR) {if (oGUIBAR.oGodZoom) {image_index=2;}}
}

