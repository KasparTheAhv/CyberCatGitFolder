/// @desc SkinReload(isPreview)
/// @arg isPreview false or true

function TokenChecker()
{
    var whatRoom;
    whatRoom = argument[0];
	// what room has how many of what
	if (whatRoom==Room0)	{ var NeedNotes=2; var NeedEggs=2; }
	if (whatRoom==Room1)	{ var NeedNotes=2; var NeedEggs=1; }	
	if (whatRoom==Room2)	{ var NeedNotes=2; var NeedEggs=1; }	
	if (whatRoom==Room3)	{ var NeedNotes=3; var NeedEggs=2; }	
	if (whatRoom==Room4)	{ var NeedNotes=3; var NeedEggs=3; }	
	if (whatRoom==Room5)	{ var NeedNotes=6; var NeedEggs=4; }	
	if (whatRoom==Room6)	{ var NeedNotes=1; var NeedEggs=1; }	
	if (whatRoom==Room7)	{ var NeedNotes=2; var NeedEggs=2; }	
	if (whatRoom==Room8)	{ var NeedNotes=3; var NeedEggs=3; }	
	if (whatRoom==Room9)	{ var NeedNotes=3; var NeedEggs=4; }	
	if (whatRoom==Room10)	{ var NeedNotes=2; var NeedEggs=1; }	
	if (whatRoom==Room11)	{ var NeedNotes=2; var NeedEggs=1; }
	if (whatRoom==Room12)	{ var NeedNotes=2; var NeedEggs=1; }	
	if (whatRoom==Room13)	{ var NeedNotes=2; var NeedEggs=3; }	
	if (whatRoom==Room14)	{ var NeedNotes=2; var NeedEggs=2; }	
	if (whatRoom==Room15)	{ var NeedNotes=2; var NeedEggs=4; }	
	if (whatRoom==Room16)	{ var NeedNotes=2; var NeedEggs=3; }	
	if (whatRoom==Room17)	{ var NeedNotes=2; var NeedEggs=2; }	
	if (whatRoom==Room18)	{ var NeedNotes=2; var NeedEggs=2; }	
	if (whatRoom==Room19)	{ var NeedNotes=2; var NeedEggs=3; }	
	if (whatRoom==Room20)	{ var NeedNotes=3; var NeedEggs=5; }	
	if (whatRoom==Room21)	{ var NeedNotes=2; var NeedEggs=2; }	
	if (whatRoom==Room22)	{ var NeedNotes=2; var NeedEggs=2; }
	if (whatRoom==Room23)	{ var NeedNotes=4; var NeedEggs=4; }	
	if (whatRoom==Room24)	{ var NeedNotes=4; var NeedEggs=3; }	
	if (whatRoom==Room25)	{ var NeedNotes=4; var NeedEggs=2; }	
	if (whatRoom==Room26)	{ var NeedNotes=3; var NeedEggs=6; }	
	if (whatRoom==Room27)	{ var NeedNotes=4; var NeedEggs=3; }	
	if (whatRoom==Room28)	{ var NeedNotes=4; var NeedEggs=3; }	
	if (whatRoom==Room29)	{ var NeedNotes=3; var NeedEggs=2; }	
	if (whatRoom==Room30)	{ var NeedNotes=3; var NeedEggs=2; }	
	if (whatRoom==Room31)	{ var NeedNotes=3; var NeedEggs=2; }
	if (whatRoom==Room32)	{ var NeedNotes=3; var NeedEggs=2; }
	// setup empty notes and eggs
	var settingsmap=ds_map_secure_load("settings.sav");
	var eggtotal=0;
	var notetotal=0;
	//  total up currently discovered 
	for (var i = 1; i <= 7; i++)
	{
		var roomname = room_get_name(whatRoom); // get name
		var whatnote = string(roomname)+"Note"+string(i);  // notekey
		var whategg  = string(roomname)+"Egg"+string(i);   // eggkey
		var eggvalue=ds_map_find_value(settingsmap,whategg);
		var notevalue=ds_map_find_value(settingsmap,whatnote);
		if is_undefined(notevalue) {notetotal+=0;	} else {notetotal+=notevalue;}
		if is_undefined(eggvalue) {eggtotal+=0;	} else {eggtotal+=eggvalue;}
	
	}
	// show values in console ( testing ) only 
	show_debug_message("notetotal: "+string(notetotal));
	show_debug_message("eggtotal: "+string(eggtotal));
	show_debug_message("noteneeded: "+string(NeedNotes));
	show_debug_message("eggneeded: "+string(NeedEggs));
	
		// check if token should be given
	var settingsmap=ds_map_secure_load("settings.sav");
	var whatRoomToken = ds_map_find_value(settingsmap,string(roomname)+"Token");
	
		if is_undefined(whatRoomToken) 
			{
			ds_map_set(settingsmap,string(roomname)+"Token",0);	
			ds_map_secure_save(settingsmap,"settings.sav");
			}
	// if no token yet, create one and add +1 to overall tokens. Never allow adding 1 again since it gets defined
		
		var tokenstatus= ds_map_find_value(settingsmap,string(roomname)+"Token");
		if (tokenstatus==0)
		{
			if (notetotal>=NeedNotes)
			{
				if (eggtotal>=NeedEggs)
				{
				show_debug_message("Giving reward!");
				ds_map_set(settingsmap,string(roomname)+"Token",1);
				var curskintokens=ds_map_find_value(settingsmap,"skintokens");
				var newskintokens=curskintokens+1;
				ds_map_set(settingsmap,"skintokens",newskintokens);
				ds_map_secure_save(settingsmap,"settings.sav");
				// Token notification	
				instance_create_layer(x,y,"BefEdge",oSkinNoti); // made noti
				} 
				
			} else {show_debug_message("Can't reward! insufficent notes or eggs");}
		} else {show_debug_message("Already rewarded!");}
}