image_index=1;

if (gainstat)
{
gainstat=false;
var settingsmap = ds_map_secure_load("settings.sav")
var prevValue = ds_map_find_value(settingsmap,"STATS_Locks");
if is_undefined(prevValue){prevValue=0;}
var neWvalue = prevValue+1;
ds_map_set(settingsmap,"STATS_Locks",neWvalue);
ds_map_secure_save(settingsmap,"settings.sav");
}


if (image_alpha>0)
{
image_alpha-=0.02;
image_angle-=4;
self.y+=1;
alarm[1]=1;
} else {instance_destroy();}