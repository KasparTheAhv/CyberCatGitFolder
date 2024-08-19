/// @desc
muutuja=global.GUI*70;
self.y=round(testGuiH*0.30)+muutuja;
scale=(1+2*global.GUI)*scaler;
image_xscale=scale;
image_yscale=scale;
draw_sprite_ext(sPause,9,x,y,image_xscale,image_yscale,0,image_blend,1);
