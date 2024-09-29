

if (held) && (other.lockid==self.keyid)
{	
	// if is not cellar door
	if !(special)
	{
		instance_destroy(self);
		other.alarm[1]=1;
		with(oPlayer) {keyheld=false;canatk=true;}
		// room22 special
		if (room==Room22)
		{
			with(oLvlEnd) {activated=true; t1=true;t2=true;t3=true;}
			TaskDone(2);	
			
		}
	} else { // if is cellar door
		whatdoor = instance_nearest(self.x,self.y,oCellarDoor);
		whatdoor.alarm[0]=1;
		instance_destroy(self);
		other.alarm[1]=1;
		with(oPlayer) {keyheld=false;canatk=true;}
	}		
}