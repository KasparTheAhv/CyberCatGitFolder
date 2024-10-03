/// @desc State changer
if (instance_exists(oAdRevive)) {exit;}
with (oNyanLightning) {instance_destroy();}

if (joonista)
{
	if (image_index==2) {exit;}
	
	if instance_exists(oLvlEnd)
	{
		startingdate=oLvlEnd.startingdate;
		startingsec=oLvlEnd.startingsec;
	}
		
	if !(state) // pausi sisse
	{
		if instance_exists(oGUIBAR)
		{
			if (oGUIBAR.zoomLevel>1) {exit;}	
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
			
			
		state=true;
		instance_destroy(oGUIBAR);
		instance_deactivate_all(true);
		instance_activate_object(oPlayControllerA);
		instance_activate_object(Obj_UnityAds);
		instance_activate_object(Obj_UnityAds_placement);
		instance_activate_object(oVStick);
		instance_activate_object(oJumpKey);
		instance_activate_object(oAttackKey);
		instance_activate_object(oMusicController);
		instance_activate_object(oRoomController);
		instance_activate_object(oTransition);
		instance_create_layer(x,y,"Particles",oPlayerPauseAni);
		instance_create_layer(x,y,"Particles",oPaAutoJump);
		instance_create_layer(x,y,"Particles",oPagraphics);
		instance_create_layer(x,y,"Particles",oPamenu);
		instance_create_layer(x,y,"Particles",oParesa);
		var lay_id = layer_get_id("Leaves");
		layer_enable_fx("Leaves",false);
		var lay_id = layer_get_id("Edge");
		layer_enable_fx("Edge",false);
		image_index=1;
		var settingsmap=ds_map_secure_load("settings.sav");
		var js3_x=ds_map_find_value(settingsmap,"JS3X");
		var js3_y=ds_map_find_value(settingsmap,"JS3Y");
		var js2_x=ds_map_find_value(settingsmap,"JS2X");
		var js2_y=ds_map_find_value(settingsmap,"JS2Y");
		var js1_x=ds_map_find_value(settingsmap,"JS1X");
		var js1_y=ds_map_find_value(settingsmap,"JS1Y");
		oVStick.toimi=false;
		instance_create_layer(gW*0.5,y,"Particles",oSNSlider);
		instance_create_layer(gW*0.2,y,"Particles",oMUSlider);
		if (global.isAndroid)
		{
			instance_create_layer(x,y,"Particles",oPajmpKey);
			instance_create_layer(gW*0.2,y,"Particles",oMSSlider);		
			with(instance_create_layer(js1_x,js1_y,"Particles",oConfigureJS))
			{
				slavename=0;
				with(oVStick)
				{
				if (stick_id==1) {var who = id;}
				}
				slave=who;
			}		
		}
		//
		if instance_exists(oAttackKey)
		{
			if (global.isAndroid)
			{
				instance_create_layer(gW*0.8,y,"Particles",oAKSlider);
				with(instance_create_layer(js2_x,js2_y,"Particles",oConfigureJS))
				{
				slavename=1;
				slave=instance_nearest(x,y,oAttackKey);
				}
				
				if (global.jumpkey==1)
				{
					instance_destroy(oJumpKey);
					instance_create_layer(js3_x,js3_y,"Particles",oJumpKey);
					if !instance_exists(oAKSlider)
					{
					instance_create_layer(gW*0.8,y,"Particles",oAKSlider);
					}
					with(instance_create_layer(js3_x,js3_y,"Particles",oConfigureJS))
					{
					slavename=2;
					slave=instance_nearest(x,y,oJumpKey);
					}
				}	
			}
		}	
		alarm[0]=60;
		paAlpha=1;
		play_sound(snWhoosh,false);
		exit;
	} 
	else // pausist välja
	{
		if (hasexited) {alarm[3]=1;}	
		state=false;
		alarm[2]=1;
		play_sound(snWhoosh,false);
		instance_destroy(oMUSlider);
		instance_destroy(oMSSlider);
		instance_destroy(oAKSlider);
		instance_destroy(oSNSlider);
		instance_destroy(oConfigureJS);
		instance_destroy(oPlayerPauseAni);
		instance_destroy(oPajmpKey);
		//instance_destroy(oPaskinB);
		instance_destroy(oPamenu);
		instance_destroy(oParesa);
		instance_destroy(oPagraphics);
		instance_destroy(oPaAutoJump);
		instance_activate_all();
		paAlpha=global.AL;
		if (global.GFX3==1)
		{
		var lay_id = layer_get_id("Leaves");
		layer_enable_fx("Leaves",true);
		}
		
		var lay_id = layer_get_id("Edge");
		layer_enable_fx("Edge",true);
		
		global.camLookin=noone;
		global.camLooking=false;
		if instance_exists(oPlayer)
		{
		oFollowPlayer.target=oPlayer;
		}
						
		with(oVStick)
		{
			if (stick_id==1)
			{
			toimi=true;
			}
		}
		image_index=0;
		with(oBook)
		{
		scale=(0.5+2*global.GUI)*scaler;
		y=other.y;
		image_xscale=scale;
		image_yscale=scale;	
		}
		with(oMagnify)
		{
		scale=(0.7+2*global.GUI)*scaler;
		y=other.y;
		image_xscale=scale;
		image_yscale=scale;	
		plusX=x-(20*scale);
		plusY=y+(38*scale);
		minusX=x+(15*scale);
		minusY=y+(38*scale);
		}
		if instance_exists(oPlayerGod) {image_index=2;}
		with (oRoomController) {GFX1=global.GFX1;
			oRoomController.alarm[1]=1;
			oRoomController.alarm[2]=1;
			oRoomController.alarm[3]=1;
			oRoomController.alarm[5]=1;
			oRoomController.alarm[7]=1;
			oRoomController.alarm[8]=1;
			}
		if instance_exists(oGUIBAR) {if (oGUIBAR.oGodZoom) {image_index=2;}}
	}
	alarm[0]=-1;
}