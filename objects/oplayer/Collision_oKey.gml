if (immune) {exit;}
if !(canatk) {exit;}


if !(keyheld) 
{
	canatk=false;
	keyheld=true;
	with(other)
	{
	if !(held) {held=true;}	
	}
}

if (room==Room0)
{
if !(givenkeybook) {
	givenkeybook=true;
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
oGUIBAR.joonistatasks=true;
with(instance_create_layer(xx,yy,"Particles",oUnlockBook))
{
whatbook=3;
}


}	
}