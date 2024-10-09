/// @function DiscoveryStats(actuallevel)
/// @param actuallevel The input number to modify.
/// @returns An array with multiple values.
function DiscoveryStats(){
	// Show debug mess
	//show_debug_message("Starting DiscoverStats with actualLvl: "+string(argument[0]));
	// Settingsmap
	var settingsmap= ds_map_secure_load("settings.sav");
	// Get lvl nr
	var actLvl=argument[0];
	
	// Go through list of levels and how many notes and eggs they have
	switch (actLvl)
	{
		case 0:		var maxNotes=2; var maxEggs=2;  break;
		case 1:		var maxNotes=2; var maxEggs=1;  break;
		case 2:		var maxNotes=2; var maxEggs=1;  break;
		case 3:		var maxNotes=3; var maxEggs=2;  break;
		case 4:		var maxNotes=3; var maxEggs=3;  break;
		case 5:		var maxNotes=6; var maxEggs=4;  break;
		case 6:		var maxNotes=1; var maxEggs=1;  break;
		case 7:		var maxNotes=2; var maxEggs=2;  break;
		case 8:		var maxNotes=3; var maxEggs=3;  break;
		case 9:		var maxNotes=3; var maxEggs=4;  break;
		case 10:	var maxNotes=2; var maxEggs=1;  break;
		case 11:	var maxNotes=2; var maxEggs=1;  break;
		case 12:	var maxNotes=2; var maxEggs=1;  break;
		case 13:	var maxNotes=2; var maxEggs=3;  break;
		case 14:	var maxNotes=2; var maxEggs=2;  break;
		case 15:	var maxNotes=2; var maxEggs=4;  break;
		case 16:	var maxNotes=2; var maxEggs=3;  break;
		case 17:	var maxNotes=2; var maxEggs=2;  break;
		case 18:	var maxNotes=2; var maxEggs=2;  break;
		case 19:	var maxNotes=2; var maxEggs=3;  break;
		case 20:	var maxNotes=3; var maxEggs=5;  break;
		case 21:	var maxNotes=2; var maxEggs=2;  break;
		case 22:	var maxNotes=2; var maxEggs=2;  break;
		case 23:	var maxNotes=4; var maxEggs=4;  break;
		case 24:	var maxNotes=4; var maxEggs=3;  break;
		case 25:	var maxNotes=4; var maxEggs=2;  break;
		case 26:	var maxNotes=3; var maxEggs=6;  break;
		case 27:	var maxNotes=4; var maxEggs=3;  break;
		case 28:	var maxNotes=4; var maxEggs=3;  break;
		case 29:	var maxNotes=3; var maxEggs=2;  break;
		case 30:	var maxNotes=3; var maxEggs=2;  break;
		case 31:	var maxNotes=3; var maxEggs=2;  break;
		case 32:	var maxNotes=0; var maxEggs=0;  break;
		case 33:	var maxNotes=0; var maxEggs=0;  break;	
	}
	
	
	// show debug message
	//show_debug_message("MaxNotes: "+string(maxNotes)+" / MaxEggs: "+string(maxEggs));
	
	// make empty var for notes
	var unlockedNotes=0;
	
	// Loop check if notes unlocked
	for (var n=1;n<maxNotes+1;n++)
	{
		var key = "Room"+string(actLvl)+"Note"+string(n);
	//	show_debug_message("Key is: "+string(key));
		var noteValue = ds_map_find_value(settingsmap,key);
	//	show_debug_message("value is: "+string(noteValue));
		if is_undefined(noteValue){} else {unlockedNotes+=noteValue;}
	}
	
	// make empty var for eggs
	var unlockedEggs=0;
	
	// Loop check if notes unlocked
	for (var e=1;e<maxEggs+1;e++)
	{
		var key = "Room"+string(actLvl)+"Egg"+string(e);
	//	show_debug_message("Key is: "+string(key));
		var eggValue = ds_map_find_value(settingsmap,key);
	//	show_debug_message("value is: "+string(eggValue));
		if is_undefined(eggValue) {} else {unlockedEggs+=eggValue;}
	}
	
	// show debug message
	// show_debug_message("UnlockedNotes: "+string(unlockedNotes)+" / UnlockedEggs: "+string(unlockedEggs));
	
	// DiscoverNotes / eggs and discover overall
	var discoverynotes=string(unlockedNotes)+"/"+string(maxNotes);
	var discoveryeggs=string(unlockedEggs)+"/"+string(maxEggs);
	var eggsAndNotesUnlo=unlockedEggs+unlockedNotes;
	var eggsAndNotesMax=maxEggs+maxNotes;
	var discovery=(eggsAndNotesUnlo/eggsAndNotesMax)*100;
	

	// egg and note color
	var notesPerc=unlockedNotes/maxNotes;
	notesPerc=notesPerc*100;
	var eggsPerc=unlockedEggs/maxEggs;
	eggsPerc=eggsPerc*100;
	
	// Colors
	if (notesPerc>=0) {var notecolor="[#FF1919]";}
	if (notesPerc>25) {var notecolor="[#FFF432]";}
	if (notesPerc>99) {var notecolor="[#17F432]";}
	if (eggsPerc>=0)  {var eggcolor="[#FF1919]";}
	if (eggsPerc>25)  {var eggcolor="[#FFF432]";}
	if (eggsPerc>99)  {var eggcolor="[#17F432]";}
	if (discovery>=0) {var disccolor="[#FF1919]";}
	if (discovery>25) {var disccolor="[#FFF432]";}
	if (discovery>99) {var disccolor="[#17F432]";}
	
	if (maxNotes==0)
	{
	return [0,0,0,"[#FF1919]","[#FF1919]","[#FF1919]"]	
	} 
	else
	{
	return [discoverynotes,discoveryeggs,discovery,notecolor,eggcolor,disccolor]
	}
}

