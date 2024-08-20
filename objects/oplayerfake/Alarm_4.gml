///@desc throw book
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
	whatbook=0;
}

testGuiW=display_get_gui_width();
testGuiH=display_get_gui_height();
var _gui_x_normalised = (testGuiW*0.85) / display_get_gui_width();
var _gui_y_normalised = (testGuiH*0.15)  / display_get_gui_height();
var _camera_x = _gui_x_normalised * camera_get_view_width(view_camera[0]);
var _camera_y = _gui_y_normalised * camera_get_view_height(view_camera[0]);
room_xpos = camera_get_view_x(view_camera[0]) + _camera_x;
room_ypos = camera_get_view_y(view_camera[0]) + _camera_y;
with (instance_create_layer(room_xpos,room_ypos,"BefEdge",oClickHere))
{
guiclick=true;	
allowed=true;
invis=true;
}	
with (oBook)
{
joonista=true;	
}
alarm[6]=60; //throw second book
alarm[7]=80; //check if book thrown, and do animation for clicking book