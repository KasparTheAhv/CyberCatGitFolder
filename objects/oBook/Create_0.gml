/// @description Insert description here
//
room_speeder=game_get_speed(gamespeed_fps);
// You can write your code in this editor
hasexited=false;
previndex=image_index;


//
joonista=true;
testGuiW=display_get_gui_width();
testGuiH=display_get_gui_height();
gH=global.gameHeight;
gW=global.gameWidth;
textX=round(gW*0.5);
textY=round(gH*0.1);
muutuja=global.GUI*70;
extrasca=1;
extraUp=true;

//
lel=0;
image_blend=c_white;
image_speed=0;
state=false;
self.x=round(testGuiW*0.85);
self.y=round(testGuiH*0.07)+muutuja;
algnex=self.x;
algney=self.y;
scaler=global.scaler;
pressed=false;
scale=(0.5+2*global.GUI)*scaler;
image_xscale=scale;
image_yscale=scale;
draw_self();
// my touch
my_touch = -1;
//SCRIBBLE
color="[#FFFFFF]";
scale=scaler*2.5;
//textalpha="[alpha,"+string(insert_amount)+"]";
textscale=string(scaler*1);
textscale="[scale,"+string(textscale)+"]";