/// @desc
oGUIBAR.task1="+ Task done!";oGUIBAR.task1col="[#4CFF4C]";
oGUIBAR.task2="- Leave forest";

instance_create_layer(3472,664,"Electro",oMoustacheGuy);

with (oEvent) {activated=true;}


oLvlEnd.t1=true;
oLvlEnd.t2=true;
oLvlEnd.t3=true;
oLvlEnd.activated=true;	


with (instance_create_layer(x,y,"BefEdge",oFireworkStart))
{
	bossSPR=9;
	partCol1=c_white;
	partCol2=c_black;
}

instance_create_layer(622,675,"Electro",oMJ);

if (visible) && (global.GFX1==1)
{
part_particles_create(oRoomController.part_sys, x, y,oRoomController.part23,irandom_range(34,34));
}