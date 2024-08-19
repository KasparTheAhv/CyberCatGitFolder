if (global.debugButtonsAdded==false) // ADD BUTTONS ONLY ONCE
{
			show_debug_overlay(true,true,debugScale);
			global.debugButtonsAdded=true;
			dbg_view("DebugMenu",true,50,50,180,170);
			dbg_section(" ");
			//////////////////////////////////////////////////////////////
			my_method8 = function()
			{
				if (global.recMode)
				{
					global.recMode=false;
					show_message_async("RecMode set to: OFF");
				} else {
					global.recMode=true;
					show_debug_overlay(false);
					oParesa.alarm[0]=5;
					show_message_async("RecMode set to: ON");
				}
			}
			dbg_button("RECMODE", my_method8);
			//////////////////////////////////////////////////////////////
			my_method8 = function()
			{
				if (global.noBase)
				{
					global.noBase=false;
					show_debug_message("noBase set to: OFF");
				} else {
					global.noBase=true;
					show_debug_message("noBase set to: ON");
				}
			}
			dbg_button("NOBASE", my_method8);
			//////////////////////////////////////////////////////////////
			my_method8 = function()
			{
				SlideTransition(TRANS_MODE.GOTO,Room1Tester);
			}
			dbg_button("TEST ROOM", my_method8);
			//////////////////////////////////////////////////////////////
			my_method8 = function()
			{
				if (global.invisible)
				{
					global.invisible=false;
					show_message_async("Invisible set to: OFF");
				} else {
					global.invisible=true;
					show_message_async("Invisible set to: ON");
				}
			}
			dbg_button("INVISI", my_method8);
			//////////////////////////////////////////////////////////////
			my_method = function()
			{
			  if !(global.cheat) {global.cheat=true;} else {global.cheat=false;}
			  		show_debug_overlay(false);
			}
			dbg_button("CHEATS", my_method);
			//////////////////////////////////////////////////////////////
			my_method = function()
			{
			    if instance_exists(oPlayControllerA)
				{
					if (global.debugmenu!=true) {global.debugmenu=true;} else {global.debugmenu=false;}
				}
			}
			dbg_button("SHOW INFO", my_method);
			//////////////////////////////////////////////////////////////
			my_method9 = function()
			{
				if gpu_get_texfilter()
					{
					    gpu_set_texfilter(false);
						show_debug_message("INTERPOLATION OFF");
					}
					else
					{
					    gpu_set_texfilter(true);
						show_debug_message("INTERPOLATION ON");
					}
			}
			dbg_button("INTERPOLATION", my_method9);
			//////////////////////////////////////////////////////////////
			my_method10 = function()
			{
				
						if gpu_get_zwriteenable()
						{
						gpu_set_zwriteenable(false);
						gpu_set_ztestenable(false);
						show_debug_message("zWriteOFF");
				
					}
					else
					{
					    gpu_set_zwriteenable(true);
						gpu_set_ztestenable(true);
						show_debug_message("zWriteON");
					}
			}
			dbg_button("zWrite", my_method10);
			//////////////////////////////////////////////////////////////
			my_method11 = function()
			{
				if (!gpu_get_alphatestenable())
				{
				    gpu_set_alphatestenable(true);
				    gpu_set_alphatestref(128);
					show_debug_message("ALPHA TEST ON");
				} else {
					gpu_set_alphatestenable(false);
				    gpu_set_alphatestref(0);
					show_debug_message("ALPHA TEST OFF");
				}
			}
			dbg_button("ALPHA TESTING", my_method11);
			//////////////////////////////////////////////////////////////
			my_method2 = function()
				{
					var camW=camera_get_view_width(view_camera[0]);
					var camH=camera_get_view_height(view_camera[0]);				
					var scW=surface_get_width(application_surface);
					var scH=surface_get_height(application_surface);					
					var roomGCF = GCF(camW,camH);
					var screenGCF = GCF(scW,scH);	
					var RoomWRatio=camW/roomGCF;
					var RoomHRatio=camH/roomGCF;
					var ScreenWRatio=scW/screenGCF;
					var ScreenHRatio=scH/screenGCF;
					var camVPw=view_wport[0];
					var camVPh=view_hport[0];
					show_debug_message("CAMSIZE: "+string(camW)+"/"+string(camH));
					show_debug_message("CAMVPSIZE: "+string(camVPw)+"/"+string(camVPh));
					show_debug_message("roomGCF: "+string(roomGCF));
					show_debug_message("rmAspectR: "+string(RoomWRatio)+"/"+string(RoomHRatio));
					var exactnr1=RoomWRatio/RoomHRatio; 
					show_debug_message("exactRatioCAM: "+string(exactnr1));			
					show_debug_message("APPSURFSIZE: "+string(scW)+"/"+string(scH));
					show_debug_message("screenGCF: "+string(screenGCF));
					show_debug_message("scrAspectR: "+string(ScreenWRatio)+"/"+string(ScreenHRatio));
					var exactnr2=ScreenWRatio/ScreenHRatio; 
					show_debug_message("exactRatioSC: "+string(exactnr2));
				}
			dbg_button("SHOW GCF", my_method2);	
			//////////////////////////////////////////////////////////////
			my_method6 = function()
			{
				
			if (global.camSwap==false) {global.camSwap=true;} else {global.camSwap=false;}
				show_debug_overlay(false);
			}
			dbg_button("CAM SWAP MODE", my_method6);		
			//////////////////////////////////////////////////////////////
			my_method3 = function()
			{
			    if instance_exists(oRoomController)
				{
					layer_id = layer_get_id("Edge");
					if (layer_get_visible(layer_id)==true)
					{
					layer_set_visible(layer_id,false);	
					} else {layer_set_visible(layer_id,true);}
				}
					show_debug_overlay(false);
			}
			dbg_button("EDGE OFF", my_method3);		
			//////////////////////////////////////////////////////////////
			my_method = function()
			{
			var vState= display_get_timing_method();
			if (vState==tm_countvsyncs) {show_debug_message("Current display timing method: Tm_countvsync");} 
			if (vState==tm_sleep) {show_debug_message("Current display timing method: Tm_sleep");} 
			if (vState==tm_systemtiming) {show_debug_message("Current display timing method: Tm_systemtiming");} 
			}
			dbg_button("SHOW TIMING STATE", my_method);
			//////////////////////////////////////////////////////////////
			my_method2 = function()
			{
			var vState= display_get_timing_method();
			if (vState==tm_countvsyncs) {	display_set_timing_method(tm_sleep);			show_debug_message("Set display timing method: Tm_sleep");} 
			if (vState==tm_sleep) {			display_set_timing_method(tm_systemtiming);		show_debug_message("Set display timing method: Tm_systemtiming");} 
			if (vState==tm_systemtiming) {	display_set_timing_method(tm_countvsyncs);		show_debug_message("Set display timing method: Tm_countvsync");} 
			}
			dbg_button("CHANGE TIMING STATE", my_method2);
			//////////////////////////////////////////////////////////////
			my_method5 = function()
			{	
			if (global.desiredVSstate==false) {global.desiredVSstate=true;} else {global.desiredVSstate=false;}
			display_reset(0, global.desiredVSstate);				show_debug_message("Attempting to set vsync to: "+string(global.desiredVSstate)+" : 0=false, 1=true");
			show_debug_message("Might not work on most Android devices so expect no change from this but do check if changing improved framerate.");
			}
			dbg_button("ATTEMPT VSYNC SETTING CHANGE", my_method5);
			//////////////////////////////////////////////////////////////
			my_method6 = function()
			{
				    if window_get_fullscreen()
				    {
				        window_set_fullscreen(false);
						show_debug_message("Fullscreen OFF");
				    }
				    else
				    {
				        window_set_fullscreen(true);
						show_debug_message("Fullscreen ON");
				    }
			}
			dbg_button("ATTEMPT FULLSCREEN", my_method6);	
			//////////////////////////////////////////////////////////////
			my_method8 = function()
			{
				show_debug_overlay(false);
			}
			dbg_button("HIDE OVERLAY", my_method8);	
			//////////////////////////////////////////////////////////////
			my_method9 = function()
			{

				if (application_surface_is_enabled())
				{
				    application_surface_enable(false);
					show_debug_message("App surface disabled");
					show_debug_message("new state: "+string(application_surface_is_enabled()));
					}
					else
					{
				     application_surface_enable(true);
					 show_debug_message("App surface enabled");
					 show_debug_message("new state: "+string(application_surface_is_enabled()));
				}
			}
			dbg_button("APP SURFACE", my_method9);	
			//////////////////////////////////////////////////////////////
	
			//////////////////////////////////////////////////////////////
// ending of button adding
}  else { show_debug_overlay(true,true,debugScale);}