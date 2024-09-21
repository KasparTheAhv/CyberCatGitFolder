///@desc Total and discovery 
discovery=noone;

// if needs to watch ad before can play the level, let the player know
if (watchad)
{
	image_index=7;
	if (global.isAndroid) && !(global.unityRDY) {adtext="Need internet\nconnection\nto continue";image_index=8;}
	exit;
}




// easter eggs and discovery
var returnedArray = DiscoveryStats(actuallevel);
// string for notes
discoverynotes=returnedArray[0];
// string for eggs
discoveryeggs=returnedArray[1];
// discovery %
discovery=returnedArray[2];

// string for notes
notecolor=returnedArray[3];
// string for eggs
eggcolor=returnedArray[4];
// discovery %
disccolor=returnedArray[5];
show_debug_message(returnedArray);



// if is android seek for leaderboard time for 4 seconds before applying the device base, 
//for windows go instantly to device base
if (os_type==os_android) {alarm[2]=240;} else {alarm[2]=1;}

