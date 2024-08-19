var Playing=noone;
if audio_is_playing(BGMuCave1) {var Playing=BGMuCave1;}
if audio_is_playing(BGMuCave2) {var Playing=BGMuCave2;}
if audio_is_playing(BGMuCity1) {var Playing=BGMuCity1;}
if audio_is_playing(BGMuCity2) {var Playing=BGMuCity2;}
if audio_is_playing(BGMuForest1) {var Playing=BGMuForest1;}
if audio_is_playing(BGMuForest2) {var Playing=BGMuForest2;}
if audio_is_playing(BGMuForest3) {var Playing=BGMuForest3;}
if audio_is_playing(BGMuHome1)	 {var Playing=BGMuHome1;}
if audio_is_playing(BGMuHome2)	 {var Playing=BGMuHome2;}
if audio_is_playing(BGMuJungle1) {var Playing=BGMuJungle1;}
if audio_is_playing(BGMuJungle2) {var Playing=BGMuJungle2;}
if audio_is_playing(BGMuJungle3) {var Playing=BGMuJungle3;}
if audio_is_playing(BGMuDesert1) {var Playing=BGMuDesert1;}
if audio_is_playing(BGMuDesert2) {var Playing=BGMuDesert2;}
if audio_is_playing(BGMuPlane1) {var Playing=BGMuPlane1;}
if audio_is_playing(BGMuWinter1) {var Playing=BGMuWinter1;}
if audio_is_playing(BGMuWinter2) {var Playing=BGMuWinter2;}

whatroom= room_get_name(room);
whatroom = string_delete(whatroom,0,4);
whatroom= "Room"+string(whatroom);

self.x=display_get_gui_width()*0.5;
self.y=display_get_gui_height()*0.18;
roomtextY=display_get_gui_height()*0.22;
gW=global.gameWidth;
scaler=global.scaler;
index=irandom_range(0,27);
image_xscale=round(8*scaler);
image_yscale=round(8*scaler);
if (Playing!=noone) {audio_resume_sound(Playing);}
with (oVStick)
{
vstick_set_frontsprite(1,JSnorm);
}
if (os_type==os_windows) {debugScale=1;} else {debugScale=3;}
UserDebugTime=0;

// Graphics settings variable
settingsOn=false;
vsPrevJoonista=noone;
atkPrevJoonista=noone;