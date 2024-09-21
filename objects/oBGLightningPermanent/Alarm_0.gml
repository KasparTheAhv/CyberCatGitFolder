/// @desc Create lightning over some time

alpha=1;
layer_background_alpha(back_id, alpha);
layer_background_blend(back_id,c_white);
alarm[1]=1;
play_sound(snLightning,false);
alarm[0]=irandom_range(600,2000);


alarm[2]=10;