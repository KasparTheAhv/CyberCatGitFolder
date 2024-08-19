/// @desc
// Start drawing when the left mouse button is pressed


var mox = mouse_x;
var moy = mouse_y;

if (point_distance(x+15,y+60,mox,moy)<10) {
	    surface_set_target(surf);
	draw_clear_alpha(c_black,1);
    surface_reset_target();	
	exit;
	}
if (point_distance(x+57,y+61,mox,moy)<6) {draw_color=c_black;	exit;}	
if (point_distance(x+65,y+61,mox,moy)<6) {draw_color=c_white;	exit;}
if (point_distance(x+73,y+61,mox,moy)<6) {draw_color=c_yellow;	exit;}	
if (point_distance(x+81,y+61,mox,moy)<6) {draw_color=$0a62a3;	exit;}
if (point_distance(x+89,y+61,mox,moy)<6) {draw_color=c_fuchsia;	exit;}
if (point_distance(x+97,y+61,mox,moy)<6) {draw_color=c_aqua;	exit;}
if (point_distance(x+104,y+61,mox,moy)<6) {draw_color=c_red;	exit;}
if (point_distance(x+113,y+61,mox,moy)<6) {draw_color=c_blue;	exit;}
if (point_distance(x+121,y+61,mox,moy)<6) {draw_color=c_lime;	exit;}
previous_mouse_x = mouse_x;
previous_mouse_y = mouse_y;
is_drawing = true;
with (oOutlineMan) {firstspeech=false;}
