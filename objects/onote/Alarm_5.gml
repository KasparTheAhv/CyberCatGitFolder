if instance_exists(oPlayerGod) {exit;}
if instance_exists(oText) {exit;}
if instance_exists(oTextFloat) {exit;}
if !(clicked) && (distance_to_object(oPlayer)<100)
{
	if !(instance_exists(oPlayerGod))
	{
	clicked=true;
	algnetimes=times;
	alarm[0]=1;
	} else {exit;}
	
	

if (room==Room0) 
{
	if !(given)
	{
	oNote.given=true;
var xx = self.x;
var yy = self.y;

var cl = camera_get_view_x(view_camera[0])
var ct = camera_get_view_y(view_camera[0])
 
var off_x = xx - cl // x is the normal x position
var off_y = yy - ct // y is the normal y position

// convert to gui
var off_x_percent = off_x / camera_get_view_width(view_camera[0])
var off_y_percent = off_y / camera_get_view_height(view_camera[0])

xx = off_x_percent * display_get_gui_width();
yy = off_y_percent * display_get_gui_height();
		if (follow!=oClickedEvent)
		{
				with(instance_create_layer(xx,yy,"Particles",oUnlockBook))
				{
				whatbook=1;
				}	
		}
	}
}	
if (room==Room4){
oGUIBAR.task1="+ Task done!";	
oGUIBAR.task1col="[#4CFF4C]";
}	
if (room==Room5) 
{
	if (task==true)
	{
		oGUIBAR.task1="+ Task done!";	
		oGUIBAR.task1col="[#4CFF4C]";
		oGUIBAR.task2="- Find the station";
	}
}
if (room==Room9) 
{
	if (task==true)
	{
		oGUIBAR.task1="+ Task done!";	
		oGUIBAR.task1col="[#4CFF4C]";
		oGUIBAR.task2="- Find a way out";
		oGUIBAR.alarm[1]=1;
	}
}


if (room==Room26){
	var who = oFollowPlayer;
	if (point_distance(who.x,who.y,1991,490)<200) // manhole
	{
	oGUIBAR.task2="- Destroy sewer lid";	
	}
	if (point_distance(who.x,who.y,2574,92)<200) // gene
	{
	oGUIBAR.task3="- Destroy generator";	
	}
}	



with (oRoom0Tasks) {notepressed=true;}



}


