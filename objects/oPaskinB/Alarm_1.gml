if !(instance_exists(oYes))
{

var settingsmap = ds_map_secure_load("settings.sav");
var cur_fro= ds_map_find_value(settingsmap,"JSskinF");
var cur_bac= ds_map_find_value(settingsmap,"JSskinB");

cur_bac+=1;
if (cur_bac>1) {cur_bac=0;}
ds_map_set(settingsmap,"JSskinB",cur_bac);
ds_map_secure_save(settingsmap,"settings.sav");

with (oVStick)
{
// joysticktype
if (cur_fro==0){JSup=sJSU1;JSdown=sJSD1;JSnorm=sJSN1;}
if (cur_fro==1){JSup=sJSU2;JSdown=sJSD2;JSnorm=sJSN2;}
if (cur_fro==2){JSup=sJSU3;JSdown=sJSD3;JSnorm=sJSN3;}
if (cur_fro==3){JSup=sJSU4;JSdown=sJSD4;JSnorm=sJSN4;}
if (cur_bac==0) {JSback=sJSB1;}
if (cur_bac==1) {JSback=sJSB2;}
vstick_set_backsprite(1,JSback);
vstick_set_frontsprite(1,JSnorm);
}


if instance_exists(oPagraphics)
{
oPagraphics.alarm[5]=1;	
}



}