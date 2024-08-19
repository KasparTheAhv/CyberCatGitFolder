if (current_state==trainstates.dock)
{
who = instance_nearest(x,y,oEvent);	
if (self.x<who.x)
{
kaugus=who.x-self.x;
if (kaugus<0) {kaugus=-1*kaugus;}
myspd=floor(1+(kaugus*0.05));
myspd=clamp(myspd,0,3);
self.x+=myspd;
oTrainDoor.x=self.x;
} else {
self.x=who.x;
oTrainDoor.x=self.x;
current_state=trainstates.stay; oTrainDoor.alarm[1]=10;
}



}


if (current_state==trainstates.leave)
{
if (move)
{
self.x+=mspeed;	
oTrainDoor.x=self.x;
if (mspeed<9) {mspeed+=0.1+(mspeed*0.05);}
}
}

if (check4player) 
{
if instance_exists(oPlayer)
{
	if (distance_to_object(oPlayer)<200)
	{
		check4player=false;
		oGUIBAR.task3="+ Task done!";	
		oGUIBAR.task3col="[#4CFF4C]";
	}
}
}