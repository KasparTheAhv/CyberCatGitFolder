/// @desc reset joystick visual
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