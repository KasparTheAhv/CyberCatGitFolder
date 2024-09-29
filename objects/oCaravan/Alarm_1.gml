/// @desc checker 

if instance_exists(oPlayer)
{
	var dist = point_distance(oPlayer.x,oPlayer.y,x,y);	
	if (dist < 60) {if (near==0) {near=1;}} else {			
		if (near==1)
		{ // door open trigger
			UnlockNoteEgg("Egg",3);	
			
			
			near=2;
		alarm[0]=10;
		}
	}	
}


alarm[1]=10;