/// @desc turn from pool into slime
if (image_index>0) {image_index-=1; alarm[2]=3;} else {
mutating=false; cooldown=false; cur_state=slistates.chase; sprite_index=sSlimey;image_index=0;image_speed=1;alarm[0]=10;
}
