/// @desc start orbit
// You can write your code in this editor
if (whokill.x<x) {dirside=-4;} else {dirside=4;}
circles=0;
cooleddown=false;
play_sound(snBananaCharge,0);
current_state=monkeystates.orbit;
dir=whokill.dir+180;
if (dir>360) {dir=dir-360;}
instance_destroy(whokill);
startgun=false;
alarm[6]=105;
image_speed=0; image_index=1; sprite_index=sMonkeD;