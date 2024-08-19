/// @desc
curFPS=0;
canFps=true;
testGuiW=display_get_gui_width();
testGuiH=display_get_gui_height();
scaler=global.scaler;
scale=1+(1*global.GUI)*scaler;
scale=clamp(scale,1,3);
image_xscale=scale;
image_yscale=scale;
image_speed=0;
image_index=11;
muutuja=global.GUI*70;
self.x=round(testGuiW*0.05);
self.y=round(testGuiH*0.30)+muutuja;
gH=global.gameHeight;
gW=global.gameWidth;
fpsX=testGuiW*0.21;
fpsY=testGuiH*0.5;
clicked=false;

settingsOn=false;
vsPrevJoonista=noone;
atkPrevJoonista=noone;
showGFX5=false;



// settings height
setting1y=testGuiH*0.25;
setting2y=testGuiH*0.40;
setting3y=testGuiH*0.55;
setting4y=testGuiH*0.70;
setting5y=testGuiH*0.85;

// text x
textX=testGuiW*0.45;
rectX1=testGuiW*0.35;
// Button x
buttonX=testGuiW*0.60;
rectX2=testGuiW*0.65;
// joystick x
jsX=testGuiW*0.85;
jsY=testGuiH*0.7;

// rect
rectstartY=display_get_gui_height()*0.15;


// settings text
setting1name="Particle Effects:";
setting2name="Max Framerate:";
setting3name="Wind/Leaves FX:";
setting4name="Display Mode:";
setting5name="Sleep Margin:";

// settings state image indexes

if (global.GFX1==1) {set1index=0;} else {set1index=1;}
if (global.GFX2==60) {set2index=2;} else {set2index=3;}
if (global.GFX3==1) {set3index=0;} else {set3index=1;}
if (global.GFX4==1) {set4index=5;showGFX5=false;}
if (global.GFX4==2) {set4index=6;showGFX5=false;} 
if (global.GFX4==3) {set4index=7;showGFX5=true; } 
set5index=4;

// Scribble
color="[#FFFFFF]";
//textalpha="[alpha,"+string(insert_amount)+"]";
textscaler=0.7+(0.3*global.GUI);
textscale=string(textscaler);
textscale="[scale,"+string(textscale)+"][fa_center][fa_middle]";
textscaler2=1.2+(0.6*global.GUI);
textscale2="[scale,"+string(textscaler2)+"][fa_center][fa_middle]";


// joystick sprite


var settingsmap=ds_map_secure_load("settings.sav");
JSskinF=ds_map_find_value(settingsmap,"JSskinF");
JSskinB=ds_map_find_value(settingsmap,"JSskinB");
// joysticktype
if (JSskinF==0){JSup=sJSU1;JSdown=sJSD1;JSnorm=sJSN1;}
if (JSskinF==1){JSup=sJSU2;JSdown=sJSD2;JSnorm=sJSN2;}
if (JSskinF==2){JSup=sJSU3;JSdown=sJSD3;JSnorm=sJSN3;}
if (JSskinF==3){JSup=sJSU4;JSdown=sJSD4;JSnorm=sJSN4;}
if (JSskinB==0) {JSback=sJSB1;}
if (JSskinB==1) {JSback=sJSB2;}










