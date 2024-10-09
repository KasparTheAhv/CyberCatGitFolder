if (point_distance(oFollowPlayer.x,oFollowPlayer.y,x,y)>camwid) {exit;}


if !(inserted)
{
	instance_destroy(oHat);
	inserted=true;
	UnlockNoteEgg("Egg",2);	
	alarm[0]=1;
	alarm[1]=4;	
}