/// @desc
// pick skin if can

if (buyindex==13)
{
	if (point_distance(mouse_x,mouse_y,buybuttonX,buybuttonY)<50)
	{
	var settingsmap = ds_map_secure_load("settings.sav");	
	var whatkey = "Skin"+string(curskin)+"Bought";
	var isbought=ds_map_find_value(settingsmap,whatkey);
	
		if (isbought==0){show_message("Nice try.. but no!");} else // switch sobib
		{
		ds_map_set(settingsmap,"skin",curskin);
		ds_map_secure_save(settingsmap,"settings.sav");
		selectedskin=curskin;
		alarm[0]=1; // refresh
		}	
	}
}


var clicked=false;


// next skin
	if (point_distance(mouse_x,mouse_y,edasiX,y)<50)
	{
		var clicked=true;
		if (curskin<maxskinamount) {curskin+=1;} else {curskin=1;}	
	}

// previous skin
if (point_distance(mouse_x,mouse_y,tagasiX,y)<50)
	{
		var clicked=true;
		if (curskin>1) {curskin-=1;} else {curskin=maxskinamount;}
	}
	
	
	

if (clicked)
{
if instance_exists(oPreviewTxt) {instance_destroy(oPreviewTxt);}
if instance_exists(oBuyTxt) {instance_destroy(oBuyTxt);}
	buyblocker=false;
	showbutton=false;
	global.skin=curskin;
	oSkinPreview.alarm[0]=2;
	self.alarm[0]=2;
}
// later make a check if it needs to be buyed or not





