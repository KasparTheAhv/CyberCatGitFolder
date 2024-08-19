/// @desc
guiW= display_get_gui_width();
guiH= display_get_gui_height();
instance_create_layer(x,y,layer,oCredController);
maxkaugus=600+(global.maxComments*120);
kaugus=0;
startedY=noone;
kiirus=0;
howmuch=0;
// draw slider
picked=false;

sliderX=0.05*room_width;
lineYmin=0.25*room_height;
lineYmax=0.75*room_height;

sliderCur=lineYmin;


