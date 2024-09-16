// if no oplayer objext, exit early
if !instance_exists(oPlayer) {exit;}

// If close enough to drink and mouse click is near enough to milk
if  (distance_to_object(oPlayer)<30) && (point_distance(mouse_x,mouse_y,x,y)<25)
{	
	// depending on the milk sprite, choose which drinking sprite index
	if (sprite_index==sMilkCup)	 {var ind=1;} else { var ind=0;}
	
	// Run withing cat
	with(oPlayer)
	{
		// get current skinscale
		var scale=global.catskinscale;	
		
		// Create milk drinking cat with the according image index and scale
		with(instance_create_layer(x,y,"Characters",oPlayerMilk))	
		{
			milkind=ind;
			image_xscale=scale;	
			xx=x+(13*image_xscale);
			yy=y-3;
			algnexx=self.xx;
			algneyy=self.yy;
		}
		// destroy the player object
		instance_destroy();
	}
	// destroy milk itself
	instance_destroy();		
	
	// Give milk book if conditions are right
	if (room==Room0) && !(givenmilkbook)
	{
		givenmilkbook=true;
		SummonTutBook(oPlayerMilk,4);
		oGUIBAR.joonistatasks=true;
		// Change task box info
		oGUIBAR.task3="+ Task done!";	
		oGUIBAR.task3col="[#4CFF4C]";		
	}	
}