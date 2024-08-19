/// @desc
self.speed=other.speed*0.7;
direction=115;

if (state!=1)
{
oGUIBAR.task1="+ Task done!";	
oGUIBAR.task1col="[#4CFF4C]";
oGUIBAR.task2="- Explore!";	

state=1;
oBagu.alarm[0]=1;
oBagu.alarm[1]=75;
}
