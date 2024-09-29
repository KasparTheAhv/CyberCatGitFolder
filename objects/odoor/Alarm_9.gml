///@desc door checker for unlocked at start
if (jammed) {exit;} // jammed ei luba kunagi avada
if (image_index==9) {exit;} 
if (haslock==true) {exit;}

if instance_exists(oPlayer) && (point_distance(x,0,oPlayer.x,0)<40) && (point_distance(0,y,0,oPlayer.y)<50) 
{
	play_sound(snLock,false);
	if (oFollowPlayer.x>self.x)
	{
		image_xscale=-1;
		alarm[0]=1;
	} else {
		image_xscale=1;
		alarm[0]=1;
	}
} else {alarm[9]=6;}