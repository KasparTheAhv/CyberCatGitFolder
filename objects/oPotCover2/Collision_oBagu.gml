/// @desc
self.speed=other.speed*0.7;
direction=115;

if (state!=1)
{
	TaskDone(1);
	TaskNew(2,"Explore");
	state=1;
	oBagu.alarm[0]=1;
	oBagu.alarm[1]=75;
}
