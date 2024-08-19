if (nonippyallowed) {exit;}

with (other)
{
var givenippybook=forevercatnip;	
instance_destroy();
}
if (givenippybook) {
if (room==Room1) 
{
var xx = oPlayer.x;
var yy = oPlayer.y;

var cl = camera_get_view_x(view_camera[0])
var ct = camera_get_view_y(view_camera[0])
 
var off_x = xx - cl // x is the normal x position
var off_y = yy - ct // y is the normal y position

// convert to gui
var off_x_percent = off_x / camera_get_view_width(view_camera[0])
var off_y_percent = off_y / camera_get_view_height(view_camera[0])

xx = off_x_percent * display_get_gui_width();
yy = off_y_percent * display_get_gui_height();

with(instance_create_layer(xx,yy,"Particles",oUnlockBook))
{
whatbook=6;
}
}	


}
play_sound(snCatnipCount,false);
if instance_exists(oGUIBAR)
{
	var settingsmap = ds_map_secure_load("settings.sav")
var prevValue = ds_map_find_value(settingsmap,"STATS_Catnip");
if is_undefined(prevValue){prevValue=0;}
var neWvalue = prevValue+1;
ds_map_set(settingsmap,"STATS_Catnip",neWvalue);
ds_map_secure_save(settingsmap,"settings.sav");
	oGUIBAR.cn+=25;
	if instance_exists(oPlayer){target=oPlayer;}
	if instance_exists(oPlayerFall){target=oPlayerFall;}
	if instance_exists(oPlayerAttack){target=oPlayerAttack;}
if (oGUIBAR.cn>=150)
{
	if !instance_exists(oLightning)
	{
	oPlayer.immune=true;
	instance_create_layer(target.x,target.y,"Particles",oLightning);
	}
}	
}

if (room==Room2) 
{
	if (oRoomController.firstnippy!=1)
	{
		oRoomController.firstnippy=1;
			text="mmh.. catnip";
with (instance_create_layer(oFollowPlayer.x,oFollowPlayer.y-50,"Particles",oTextFloat))
	{
	target=oFollowPlayer;
	text = other.text;
	length = string_length(text);
	}
	}
}