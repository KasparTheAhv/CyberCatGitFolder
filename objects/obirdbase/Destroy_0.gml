/// @description Insert description here
// You can write your code in this editor
with(oBirdBase)
{
if (boss) {alarm[4]=120;}	
}

var xx=self.x;
var yy=self.y;
with (oRoomController)
{
	if (visible) && (global.GFX1==1)
	{
		part_particles_create(part_sys, xx, yy,part2,irandom_range(5,8));
	}
}
play_sound(snBlast,false);

if (room==Room2) {
oGUIBAR.task2="+ Task done!";	
oGUIBAR.task2col="[#4CFF4C]";
}

if (room==Room7) 
{
if (oBirdBase.lastbase)
{
		oGUIBAR.task1="+ Task done!";	
		oGUIBAR.task1col="[#4CFF4C]";
exit;	
}
if instance_exists(oBirdBase)
{
oBirdBase.lastbase=true;	
}
}
if (room==Room8) 
{
		oGUIBAR.task2="+ Task done!";	
		oGUIBAR.task2col="[#4CFF4C]";
}

if (room==Room14) 
{
	if (instance_number(oBirdBase)==1)
	{
		oGUIBAR.task2="+ Task done!";	
		oGUIBAR.task2col="[#4CFF4C]";
	}
}

if (room==Room15) 
{
	if (instance_number(oBirdBase)==1)
	{		
		if (oGUIBAR.task2!="") {
		oGUIBAR.task2="+ Task done!";	
		oGUIBAR.task2col="[#4CFF4C]";}
	}
}

if (room==Room27) 
{
	if (instance_number(oBirdBase)==1)
	{		
		if (oGUIBAR.task3=="- Destroy birdbase") {
		oGUIBAR.task3="+ Task done!";	
		oGUIBAR.task3col="[#4CFF4C]";}
	}
}