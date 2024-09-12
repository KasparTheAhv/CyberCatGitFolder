// +1 to leaps
show_debug_message("attack object created");
side=(sign(image_xscale));
var settingsmap = ds_map_secure_load("settings.sav")
var prevValue = ds_map_find_value(settingsmap,"STATS_Leaps");
if is_undefined(prevValue){prevValue=0;}
var neWvalue = prevValue+1;
ds_map_set(settingsmap,"STATS_Leaps",neWvalue);
ds_map_secure_save(settingsmap,"settings.sav");
hsp = 0;
vsp = 0;
grv=0.3;
PARTSWITCH=0;
alarm[0]=1;
immune=false;
play_sound(snRAWR,false);
stick_id=oVStick.stick_id;
tilemap = layer_tilemap_get_id("Collision");
tilemap2 = layer_tilemap_get_id("Platform");
tilemap3 = layer_tilemap_get_id("CollisionSmall");
walksp=1.5;
landed=noone;
image_speed=1;
jumping=noone;
lastSide=image_xscale;
if !(global.camLooking)
{
oFollowPlayer.target=oPlayerAttack;
}
prevhsp=noone;
self.depth=depth-12;
doglock=false;
alarm[8]=1;
catskinscale=global.catskinscale;
image_yscale=0.75;
allowlandsn=true;
imangle=0;
shot=0;