/// @desc
if (noenergy) {exit;}

if (image_index==0)
{
	if (point_distance(x,y,mouse_x,mouse_y)<32) && (point_distance(x,y,oFollowPlayer.x,oFollowPlayer.y)<150)
	{
	// egg
	UnlockNoteEgg("Egg",3);
	image_speed=1;	
	}
}