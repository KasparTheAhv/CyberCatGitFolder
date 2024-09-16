///@desc throw book
SummonTutBook(oPlayer,0);

// pre calc for oClickHere creation
testGuiW=display_get_gui_width();
testGuiH=display_get_gui_height();
var _gui_x_normalised = (testGuiW*0.85) / display_get_gui_width();
var _gui_y_normalised = (testGuiH*0.15)  / display_get_gui_height();
var _camera_x = _gui_x_normalised * camera_get_view_width(view_camera[0]);
var _camera_y = _gui_y_normalised * camera_get_view_height(view_camera[0]);
room_xpos = camera_get_view_x(view_camera[0]) + _camera_x;
room_ypos = camera_get_view_y(view_camera[0]) + _camera_y;

// Create a "click here" sign
with (instance_create_layer(room_xpos,room_ypos,"BefEdge",oClickHere))
{
	guiclick=true;	
	allowed=true;
	invis=true;
}	

// Allow the book collection to draw itself
with (oBook) {joonista=true;}
alarm[6]=60; //throw second book
alarm[7]=80; //check if book thrown, and do animation for clicking book