

var mytarget = noone;

if (room==Room1) {
		mytarget=oMonocle;
		if instance_exists(mytarget)
		{
		hsp=mytarget.hsp;
		
		var xxdif = point_distance(mytarget.x,0,self.x,0);
		if (xxdif>2)
			{
				if (mytarget.x>self.x)
				{
				with(oChainEaringStart)  {x+=xxdif;}
				with(oChainRing)		 {x+=xxdif;}
				with(oChainEnd)			 {x+=xxdif;}
				} else {
				with(oChainEaringStart)  {x-=xxdif;}
				with(oChainRing)		 {x-=xxdif;}
				with(oChainEnd)			 {x-=xxdif;}
				}	
			}
		
			var vspdif = point_distance(0,y+ydif,0,mytarget.y);
			if (mytarget.y>self.y+ydif) {
				with(oChainEaringStart)  {y+=vspdif;}
				with(oChainRing)		 {y+=vspdif;}
				with(oChainEnd)			 {y+=vspdif;}
				} else {
				with(oChainEaringStart)  {y-=vspdif;}
				with(oChainRing)		 {y-=vspdif;}
				with(oChainEnd)			 {y-=vspdif;}
				}
		
		self.x+=hsp;
		} else {instance_destroy();}
		
} else {
	
if instance_exists(oDrake)
{
hsp=oDrake.hsp;

var side= sign(oDrake.image_xscale);


var hspdif = point_distance(oDrake.x+(side*xdif),0,self.x,0);

if (hspdif>38)
	{
		if (oDrake.x+(side*xdif)>self.x)
		{
		with(oChainEaringStart)  {x+=hspdif;}
		with(oChainRing)		 {x+=hspdif;}
		with(oChainEnd)			 {x+=hspdif;}
		} else {
		with(oChainEaringStart)  {x-=hspdif;}
		with(oChainRing)		 {x-=hspdif;}
		with(oChainEnd)			 {x-=hspdif;}
		}	
	}


	var vspdif = point_distance(0,y,0,oDrake.y-ydif);
	if (oDrake.y-ydif>self.y) {
		with(oChainEaringStart)  {y+=vspdif;}
		with(oChainRing)		 {y+=vspdif;}
		with(oChainEnd)			 {y+=vspdif;}
		} else {
		with(oChainEaringStart)  {y-=vspdif;}
		with(oChainRing)		 {y-=vspdif;}
		with(oChainEnd)			 {y-=vspdif;}
		}



self.x+=hsp;
} else {instance_destroy();}
	
	
	
}

