/// @desc
gWw=global.gameWidth*0.5;
picW=400;
TargetScale=gWw/picW;
image_xscale=2*TargetScale;
image_yscale=2*TargetScale;

self.x=(global.gameWidth*0.5)+(147*TargetScale);
self.y=(global.gameHeight*0.5)-(30*TargetScale);

targetx=800*0.95;
targety=400*0.3;

speeder=(global.gameWidth/2400)*14;

// to gui cords
var cl = camera_get_view_x(view_camera[0])
var ct = camera_get_view_y(view_camera[0])

var off_x = targetx - cl // x is the normal x position
var off_y = targety - ct // y is the normal y position

// convert to gui
var off_x_percent = off_x / camera_get_view_width(view_camera[0])
var off_y_percent = off_y / camera_get_view_height(view_camera[0])

targetx = off_x_percent * display_get_gui_width()
targety = off_y_percent * display_get_gui_height()