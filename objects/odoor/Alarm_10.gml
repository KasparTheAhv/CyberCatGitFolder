///@desc open door if its unlocked
if (jammed) {exit;} // jammed ei luba kunagi avada
if (image_index==9) {exit;} 



play_sound(snLock,false);
if (oFollowPlayer.x>self.x)
{
	image_xscale=-1;
	alarm[0]=1;
} else {
	image_xscale=1;
	alarm[0]=1;
}
