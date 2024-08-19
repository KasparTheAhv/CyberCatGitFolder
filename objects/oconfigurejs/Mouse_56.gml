oConfigureJS.allowed=true;
oConfigureJS.pulling=false;

if (slavename==0)
{
var settingsmap=ds_map_secure_load("settings.sav");
with (oVStick) {if (stick_id==1){xx=other.x;yy=other.y;} }
ds_map_set(settingsmap,"JS1X",self.x);
ds_map_set(settingsmap,"JS1Y",self.y);
global.JS1X=self.x;
global.JS1Y=self.y;
ds_map_secure_save(settingsmap,"settings.sav");
} 
if (slavename==1) {
var settingsmap=ds_map_secure_load("settings.sav");
with (oVStick) {if (stick_id==2){xx=other.x;yy=other.y;} }
ds_map_set(settingsmap,"JS2X",self.x);
ds_map_set(settingsmap,"JS2Y",self.y);
global.JS2X=self.x;
global.JS2Y=self.y;
ds_map_secure_save(settingsmap,"settings.sav");
}

if (slavename==2) {
var settingsmap=ds_map_secure_load("settings.sav");
ds_map_set(settingsmap,"JS3X",self.x);
ds_map_set(settingsmap,"JS3Y",self.y);
global.JS3X=self.x;
global.JS3Y=self.y;
ds_map_secure_save(settingsmap,"settings.sav");
}