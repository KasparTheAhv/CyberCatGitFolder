/// @desc
//sPause , 9
testGuiW=display_get_gui_width();
testGuiH=display_get_gui_height();
scaler=global.scaler;
scale=(1+2*global.GUI)*scaler;
image_xscale=scale;
image_yscale=scale;
image_speed=0;
image_index=9;
muutuja=global.GUI*70;
self.x=round(testGuiW*0.8);
self.y=round(testGuiH*0.22);
