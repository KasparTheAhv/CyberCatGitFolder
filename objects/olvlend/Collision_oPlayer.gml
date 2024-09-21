/// @desc End level
if !(activated) {exit;}

if place_meeting(x,y,oPlayer)
{
	if instance_exists(oText) {exit;}
	if instance_exists(oTextFloat) {exit;}
		// room0 - Allow if done:
		if (room==Room0)
		{
		if !instance_exists(oMilk) {t1=true;t2=true;t3=true;}
		}
		// room1
		if (room==Room1)
		{
		if !instance_exists(oRatEvent){t1=true;t2=true;t3=true;}
		}
		// room2
		if (room==Room2)
		{
		if !instance_exists(oBirdBase){t1=true;t2=true;t3=true;}
		}
		// room3
		if (room==Room3)
		{
		if !instance_exists(oSquirrBase){t2=true;t3=true;}
		}
		// room4
		if (room==Room4)
		{
		t1=true;t2=true;t3=true;
		}
		// room7
		if (room==Room7)
		{
		if !instance_exists(oBirdBase){t1=true;}
		if !instance_exists(oSquirrBase){t2=true;}
		if !instance_exists(oDog){ if !instance_exists(oDogSleep) {if !instance_exists(oDogAttack) {t3=true;}}}
		}
			// room8
		if (room==Room8)
		{
		if !instance_exists(oBirdBase){t1=true;}
		if !instance_exists(oFrogBoss){t2=true;}
		if !instance_exists(oRat){t3=true;}
		}
			// room9
		if (room==Room9)
		{
		if (oGUIBAR.task1=="+ Task done!") {t3=true;t2=true;t1=true;}
		}
		// room10
		if (room==Room10)
		{
		oGUIBAR.task1="+ Task done!";	
		oGUIBAR.task1col="[#4CFF4C]";
		t1=true;t2=true;t3=true;
		}
		// room11
		if (room==Room11)
		{
			if !(instance_exists(oThur))
			{
		oGUIBAR.task1="+ Task done!";	
		oGUIBAR.task1col="[#4CFF4C]";
		t1=true;t2=true;t3=true;
			}
		}
		// room12
		if (room==Room12)
		{
			if !(instance_exists(oDog)) && !(instance_exists(oDogAttack)) 
			{
			oGUIBAR.task3="+ Task done!";	
			oGUIBAR.task3col="[#4CFF4C]";
			t1=true;t2=true;t3=true;
			}
		}
		// room13
		if (room==Room13)
		{
			if (oGUIBAR.task1=="+ Task done!")
			{
		t1=true;t2=true;t3=true;
			}
		}
		// room14
		if (room==Room14)
		{
			if (oGUIBAR.task1=="+ Task done!"){t1=true;}
			if (oGUIBAR.task2=="+ Task done!"){t2=true;}
			if (oGUIBAR.task3=="+ Task done!"){t3=true;}
		}
			// room15
		if (room==Room15)
		{
			if (oGUIBAR.task1=="+ Task done!"){t1=true;}
			if (oGUIBAR.task2=="+ Task done!"){t2=true;}
			if (oGUIBAR.task3=="+ Task done!"){t3=true;}
		}
		// room16
		if (room==Room16)
		{
			if (oGUIBAR.task1=="+ Task done!"){t1=true;}
			if (oGUIBAR.task2=="+ Task done!"){t2=true;}
			if (oGUIBAR.task3=="+ Task done!"){t3=true;}
		}
		//room 17
		if (room==Room17)
		{
			if (oGUIBAR.task1=="+ Task done!"){t1=true;}
			if (oGUIBAR.task2=="+ Task done!"){t2=true;}
			if (oGUIBAR.task3=="+ Task done!"){t3=true;}
		}
			//room 18
		if (room==Room18)
		{
			if (oGUIBAR.task1=="+ Task done!"){t1=true;}
			if (oGUIBAR.task2=="+ Task done!"){t2=true;t3=true;oGUIBAR.task3="+ Task done!";oGUIBAR.task3col="[#4CFF4C]";}
		}
				//room 24
		if (room==Room24)
		{
			if (oGUIBAR.task1=="+ Task done!"){t1=true;}
			if (oGUIBAR.task2=="+ Task done!"){t2=true;t3=true;oGUIBAR.task3="+ Task done!";oGUIBAR.task3col="[#4CFF4C]";}
		}
						//room 25
		if (room==Room25)
		{
			oGUIBAR.task1="+ Task done!"; 
			t1=true;t2=true;t3=true;
			oGUIBAR.task1col="[#4CFF4C]";
		}
		
		if (room==Room26)
		{
			if (oGUIBAR.task2=="+ Task done!")
			{
			oGUIBAR.task3="+ Task done!"; 
			t1=true;t2=true;t3=true;
			oGUIBAR.task3col="[#4CFF4C]";
			}
		}
		
			if (room==Room27)
		{
			if (oGUIBAR.task2=="+ Task done!")
			{
			t1=true;t2=true;
			}
			if (oGUIBAR.task3=="+ Task done!")
			{
			t3=true;
			}
		}
		
		if (room==Room30)
		{
			if (t1==true)
			{
			oGUIBAR.task2="+ Task done!";oGUIBAR.task2col="[#4CFF4C]";
			}
		}
		
		
		
		// Go if allowed ( ALLOWANCE ALSO CREATED THROUGH CERTAIN OTHER OBJECTS )
		if (t1) && (t2) && (t3)
		{
		// room specific endings for ads unlocked
	var settingsmap=ds_map_secure_load("settings.sav");
	var curmaxlvl = ds_map_find_value(settingsmap,"maxlvl");
	if (room==Room3)
			{
			if (curmaxlvl<4) {
			ds_map_set(settingsmap,"maxlvl",4);
			ds_map_secure_save(settingsmap,"settings.sav");}
			}
	if (room==Room7)
			{
			if (curmaxlvl<8) {
			ds_map_set(settingsmap,"maxlvl",8);
			ds_map_secure_save(settingsmap,"settings.sav");}
			}		
	if (room==Room11)
			{
			if (curmaxlvl<12) {
			ds_map_set(settingsmap,"maxlvl",12);
			ds_map_secure_save(settingsmap,"settings.sav");}
			}		
	if (room==Room15)
			{
			if (curmaxlvl<16) {
			ds_map_set(settingsmap,"maxlvl",16);
			ds_map_secure_save(settingsmap,"settings.sav");}
			}		
	if (room==Room19)
			{
			if (curmaxlvl<20) {
			ds_map_set(settingsmap,"maxlvl",20);
			ds_map_secure_save(settingsmap,"settings.sav");}
			}	
if (room==Room23)
		{
			if (curmaxlvl<24) {
			ds_map_set(settingsmap,"maxlvl",24);
			ds_map_secure_save(settingsmap,"settings.sav");}
		}		
if (room==Room27)
		{
			if (curmaxlvl<28) {
			ds_map_set(settingsmap,"maxlvl",28);
			ds_map_secure_save(settingsmap,"settings.sav");};
		}	
if (room==Room31)
		{
			if (curmaxlvl<32) {
			ds_map_set(settingsmap,"maxlvl",32);
			ds_map_secure_save(settingsmap,"settings.sav");};
		}	
		// FASTEST TIME CALC 
		show_debug_message("Hasexited: "+string(hasexited));
		show_debug_message("score uploaded already: "+string(scoreuploaded));
		if (hasexited==false)
		{
		if (instance_exists(oPlayControllerA)) && (scoreuploaded==false)
		{
			
			scoreuploaded=true;
			var startingdate=self.startingdate;
			var enddate=date_current_datetime(); // first time
			var paused=oPause.secondspaused;
			var sectotal= date_second_span(startingdate,enddate);
			var total=sectotal-paused;
			var settingsmap=ds_map_secure_load("settings.sav");
			var whatroom=room_get_name(room);	
			var key=string(whatroom)+"totaltime";
			var lasttotal=ds_map_find_value(settingsmap,key);
			if is_undefined(lasttotal) or (total<lasttotal) 
			// var minutes = floor(sectotal/60)
			// var seconds = round(sectotal % 60);
				{
				ds_map_set(settingsmap,key,total)
				ds_map_secure_save(settingsmap,"settings.sav");
				}
				var googletime=total*1000;
				show_debug_message("starting FastestTime script for sumbission");
				FastestTime(room_get_name(room),0,googletime);
				}
		}
		/////////// end of time calc
		with (oMusicController) {audio_stop_sound(sound_id);}
		with (oTransition) {SlideTransition(TRANS_MODE.GOTO,target);exit;}
		} else {
			// erandid. mis ruumi puhul ei tule "you havent finished yet text
			if (room==Room19) {exit;}
			
			// text et pole veel lõpetanud oma taske
			if !(instance_exists(oText)) 
			{
				if (notice) 
					{notice=false; alarm[0]=600;
						with (instance_create_layer(x,y-80,"Particles",oText))
							{
							target=noone;
							text=other.text;			
							length = string_length(text);
							}
						with (oFollowPlayer)
							{
							target = instance_nearest(x,y,oText);
							}
						with (oPlayer)
							{
							canatk=false;
							immune=true;
							}
						with(oVStick)
							{
							vstick_set_active(stick_id,false);
							}
					}
			}
		}
} 