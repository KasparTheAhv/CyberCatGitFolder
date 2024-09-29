
// You can write your code in this editor
joonista=true;
testGuiW=display_get_gui_width();
testGuiH=display_get_gui_height();
gH=global.gameHeight;
gW=global.gameWidth;
muutuja=global.GUI*70;
image_blend=c_white;
image_speed=0;
image_index=4;
self.x=round(testGuiW*0.75);
self.y=round(testGuiH*0.07)+muutuja;
scaler=global.scaler;
scale=(0.5+2*global.GUI)*scaler;
image_xscale=scale;
image_yscale=scale;
algneX=noone;
algneY=noone;
what_device=noone;
// my touch
my_touch = -1;
//SCRIBBLE
color="[#FFFFFF]";
scale=scaler*2.5;
//textalpha="[alpha,"+string(insert_amount)+"]";
textscale=string(scaler*1);
textscale="[scale,"+string(textscale)+"]";


plusX=x-(20*image_xscale);
plusY=y+(38*image_xscale);

minusX=x+(15*image_xscale);
minusY=y+(38*image_xscale);

draw_self();


// Original code for mag
touchstarted=false;
touchtime=0;

//zoom toolbar


if (oGUIBAR.zoomLevel==0.5) {zoomInd=6;}
else if (oGUIBAR.zoomLevel==0.75) {zoomInd=5;}
else if (oGUIBAR.zoomLevel>=1) {zoomInd=4;}



