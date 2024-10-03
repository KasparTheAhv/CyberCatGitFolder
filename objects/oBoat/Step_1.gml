/// @desc
if !(isFerry)
{
	if (goUp) 
	{
	 if (i<10) {i+=0.5;} else {y+=1; goUp=false;}	
	} else {
	 if (i>-10) {i-=0.5;} else {y-=1; goUp=true;}		
	}
}

with (oPlayer)
{
	if place_meeting(x,y,oBoat) 
	{	
		var who = instance_nearest(x,y,oBoat);
		if (oPlayer.vsp<0) 
		{
			oPlayer.y+=6;
			oPlayer.vsp=6;
			exit;
		} else {
			if (oPlayer.bbox_bottom>who.bbox_bottom-12) {oPlayer.y-=1;vsp=0;} 
			if (oPlayer.bbox_bottom<who.bbox_bottom-12) && !(jumping) {oPlayer.y+=1;}
		} 
		landed=true;jumping=false;if (vsp>0) {vsp=0;} 	
		canjump=10;
		if (boatWho!=who) {boatWho=who; HoldX=who.x-self.x;}
		
		if (hsp==0)
		{
		self.x=who.x-HoldX;
		self.y=who.y-12;
		} else {
		HoldX=who.x-self.x;
		}
	}
}
// #art , pixelart ,gamedesign,boat, gaming, drawing 