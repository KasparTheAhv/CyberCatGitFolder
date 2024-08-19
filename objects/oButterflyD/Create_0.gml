/// @desc
image_xscale=choose(-1,1);
vsp=0;
grv=0.2;
tmap = layer_tilemap_get_id("Collision");
tmap2 = layer_tilemap_get_id("Platform");

var settingsmap = ds_map_secure_load("settings.sav")
var prevValue = ds_map_find_value(settingsmap,"STATS_Kills");
if is_undefined(prevValue){prevValue=0;}
var neWvalue = prevValue+1;
ds_map_set(settingsmap,"STATS_Kills",neWvalue);
ds_map_secure_save(settingsmap,"settings.sav");


