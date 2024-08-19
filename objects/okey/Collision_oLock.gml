if (held)
{
	if (other.lockid==self.keyid)
	{
		if !(special)
		{
			var who=noone;
			if instance_exists(oDoor) {var who=oDoor;}
			if instance_exists(oDoorOutside) {var who=oDoorOutside;}
			
			
			if instance_exists(who)
			{
			whatdoor = instance_nearest(self.x,self.y,who);
			whatdoor.image_xscale=self.image_xscale;
			whatdoor.alarm[0]=1;
			whatdoor.alarm[1]=1;
			instance_destroy(self);
			other.alarm[1]=1;
			with(oPlayer) {keyheld=false;canatk=true;}
			} else {
			instance_destroy(self);
			other.alarm[1]=1;
			with(oPlayer) {keyheld=false;canatk=true;}
				if (room==Room22)
				{
					with(oLvlEnd) {activated=true; t1=true;t2=true;t3=true;}
					oGUIBAR.task2="+ Task done!";	
					oGUIBAR.task2col="[#4CFF4C]";
				}
			}
		} else {
			whatdoor = instance_nearest(self.x,self.y,oCellarDoor);
			whatdoor.alarm[0]=1;
			instance_destroy(self);
			other.alarm[1]=1;
			with(oPlayer) {keyheld=false;canatk=true;}
		
		}
		
	}		
}