gW=global.gameWidth;
gH=global.gameHeight;
start=false;
muutuja=global.GUI*70;
testGuiW=display_get_gui_width();
testGuiH=display_get_gui_height();
xTo=round(testGuiW*0.85);
yTo=round(testGuiH*0.07)+muutuja;
image_speed=0;
image_alpha=0;
spd=12*global.scaler;
startx=self.x;
starty=self.y;
offline=false;
alarm[1]=1;
