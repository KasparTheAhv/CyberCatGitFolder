/// @desc
/// @desc
if (boarded)
{
	// FASTEST TIME CALC 
	show_debug_message("Hasexited: "+string(oLvlEnd.hasexited));
	show_debug_message("score uploaded already: "+string(scoreuploaded));
		if (oLvlEnd.hasexited==false)
		{
		if (instance_exists(oPlayControllerA)) && (scoreuploaded==false)
		{
			scoreuploaded=true;
				var startingdate=oLvlEnd.startingdate;
				var enddate=date_current_datetime(); // first time
				var paused=oPause.secondspaused;
				var sectotal= date_second_span(startingdate,enddate);
				var total=sectotal-paused;
				
				var settingsmap=ds_map_secure_load("settings.sav");
				var whatroom=room_get_name(room);	
				var key=string(whatroom)+"totaltime";
				var lasttotal=ds_map_find_value(settingsmap,key);
				
				if (total>lasttotal)
			// var minutes = floor(sectotal/60)
			// var seconds = round(sectotal % 60);
				{
				ds_map_set(settingsmap,key,total)
				ds_map_secure_save(settingsmap,"settings.sav");
				}
				var googletime=total*1000;
				FastestTime(room_get_name(room),0,googletime);
				show_debug_message("starting FastestTime script for sumbission");
				}
		}
		with (oTransition) {SlideTransition(TRANS_MODE.GOTO,target);exit;}
		oGUIBAR.task1="+ Task done!";
		oGUIBAR.task1col="[#4CFF4C]";
} else {if (alarm_get(0)==-1) {
	oGUIBAR.task1="- Task failed";
	oGUIBAR.task1col="[#EE2F36]";
	alarm[0]=60;}}