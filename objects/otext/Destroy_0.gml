oGUIBAR.alarm[1]=1;

if (cancelendchanges) {exit;}
with(oRoomController)
{
alarm[6]=5;	
}

if instance_exists(oRoom0Tasks)
{
	oRoom0Tasks.alarm[2]=1;
}

if (room==Room1) && instance_exists(oRatEvent)
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
			whatbook=5;
			}
			instance_destroy();			
}

if (text=="For you own sake, I suggest you read the\n'Catnip' and 'God state' books before going crazy!")
{
	if (room==Room2) && (oRoomController.room2bookgiven==false)
	{
			oRoomController.room2bookgiven=true;
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
			whatbook=7;
			}
	}	
}

if (text=="You'll need it to teleport out of enemies! \n Ohh.. and read this new book about it!")
{
if (room==Room9) && (oRoomController.room9bookgiven==false)
{
	oRoomController.room9bookgiven=true;
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
	whatbook=8;
	}
}
}