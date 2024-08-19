/// @desc
image_speed=0;
image_xscale=0.5;
image_yscale=0.5;
x=room_width*0.07;
y=room_height*0.05;
xx=room_width*0.05;
yy=room_height*0.1;
xxx=room_width*0.84;
display_name=oPlayControllerA.display_name;


// get settingsmap data of last save time
var settingsmap = ds_map_secure_load("settings.sav");
milliseconds = ds_map_find_value(settingsmap,"cloudsavetime");



if (global.GoogleConnected)
{
	if (milliseconds==0)
	{
		image_blend=c_yellow; txt="No existing cloud save!";
	} 
	else 
	{
		seconds= milliseconds*0.001;
		image_blend=c_aqua;
		var dt = date_create_datetime(1970,1,1,0,0,seconds);
		show_debug_message("Last cloud save: "+date_date_string(dt));
		
		if os_is_network_connected()
			{	
			txt="Previous Connection: "+date_date_string(dt);
			} else {
			image_blend=c_yellow;
			txt="Turn on internet for backups.    Last cloud save: "+date_date_string(dt);
			}
	}
} else {
	image_blend=c_yellow; txt="Google Play Games not signed in!";
}
	
	

//SCRIBBLE
color="[#FFFFFF]";
colorwhite= "[#FFFFFF]";
scale=global.scaler*1;
//textalpha="[alpha,"+string(insert_amount)+"]";
textscale=scale*0.2;
textscale=string(textscale);
textscale="[scale,"+string(textscale)+"]";
textscaleLogo=scale*2.5;
textscaleLogo=string(textscaleLogo);
textscaleLogo="[scale,"+string(textscaleLogo)+"]";


textwhole=string(textscale)+string(color)+"[fOrbitronBigOut][fa_middle]"