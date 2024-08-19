/// @desc

if !(mutating) && (cur_state!=slistates.pool)
{
play_sound(snShot,false);	cooldown=true; alarm[3]=120;  alarm[0]=60;
if instance_exists(oClown) {oClown.desireddist+=90;} alarm[2]=-1;
image_speed=0;sprite_index=sSlimeyD;mutating=true; image_index=0;alarm[1]=1;bored=0;exit;
}