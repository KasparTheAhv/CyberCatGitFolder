/// @description Insert description here
// You can write your code in this editor

testGuiW=display_get_gui_width();
testGuiH=display_get_gui_height();
//
//mox=0;
//moy=0;
lel=0;
alpha=1;
nulli=false;
if (room==Room0) {alpha=0;}
var settingsmap=ds_map_secure_load("settings.sav");
js2_x=ds_map_find_value(settingsmap,"JS2X");
js2_y=ds_map_find_value(settingsmap,"JS2Y");
js1_x=ds_map_find_value(settingsmap,"JS1X");
js1_y=ds_map_find_value(settingsmap,"JS1Y");
//
if (stick_id==1)
{
xx=round(js1_x);
yy=round(js1_y);
} else {
xx=round(js2_x); 
yy=round(js2_y);  
}



if (stick_id==1)
{
	radius= 75+(150*global.JS1S);
	stickscale=0.5+(1*global.JS1S);
} else if (stick_id==2)
{
	radius= 75+(150*global.JS2S);
	stickscale=0.5+(1*global.JS2S);
}



JSskinF=ds_map_find_value(settingsmap,"JSskinF");
JSskinB=ds_map_find_value(settingsmap,"JSskinB");

// joysticktype
if (JSskinF==0){JSup=sJSU1;JSdown=sJSD1;JSnorm=sJSN1;}
if (JSskinF==1){JSup=sJSU2;JSdown=sJSD2;JSnorm=sJSN2;}
if (JSskinF==2){JSup=sJSU3;JSdown=sJSD3;JSnorm=sJSN3;}
if (JSskinF==3){JSup=sJSU4;JSdown=sJSD4;JSnorm=sJSN4;}

if (JSskinB==0) {JSback=sJSB1;}
if (JSskinB==1) {JSback=sJSB2;}




// init stick
vstick_init(stick_id,xx,yy,radius,0,JSback,JSnorm);


lel=vstick_get_yaxis(stick_id);

prevsprite=-1;
cursprite=1;



